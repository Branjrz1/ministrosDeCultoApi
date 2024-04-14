package igl.filadelfia.control_asist_api.service;

import igl.filadelfia.control_asist_api.entity.Asistencia;
import igl.filadelfia.control_asist_api.entity.Persona;
import igl.filadelfia.control_asist_api.entity.dto.MetricsDTO;
import igl.filadelfia.control_asist_api.entity.repository.AsistenciaRepository;
import igl.filadelfia.control_asist_api.entity.repository.EventoRepository;
import igl.filadelfia.control_asist_api.entity.repository.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MetricsService {

    @Autowired
    private PersonaRepository personaRepository;

    @Autowired
    private AsistenciaRepository asistenteRepository;
    @Autowired
    private EventoRepository eventoRepository;

    public int countMinistersAttendees() {
        List<Asistencia> attendees = asistenteRepository.findByEventoId(1l);
        int ministerCount = 0;
        for (Asistencia attendee : attendees) {
            Optional<Persona> personaOptional = personaRepository.findById(attendee.getPersona().getId());
            if (personaOptional.isPresent()) {
                Persona persona = personaOptional.get();
                if ("Ministro de Culto".equals(persona.getMinisterio())) {
                    ministerCount++;
                }
            }
        }

        return ministerCount;
    }

    public int countMinistersAttendeesX() {
        List<Asistencia> attendees = asistenteRepository.findByEventoId(1l);
        int ministerCountX = 0;
        for (Asistencia attendee : attendees) {
            Optional<Persona> personaOptional = personaRepository.findById(attendee.getPersona().getId());
            if (personaOptional.isPresent()) {
                Persona persona = personaOptional.get();
                if ("Ministro de Culto X".equals(persona.getMinisterio())) {
                    ministerCountX++;
                }
            }
        }

        return ministerCountX;
    }

    public MetricsDTO getAllMetrics() {
        int ministers = personaRepository.countMinisters();
        int ministersX = personaRepository.countMinistersX();
        int minors = personaRepository.countMinors();
        int attendees = asistenteRepository.countAttendees();
        int ministerAttenders = countMinistersAttendees();
        int ministerAttendersX = countMinistersAttendeesX();

        return new MetricsDTO(ministers, ministersX, minors, attendees, ministerAttenders, ministerAttendersX);
    }
}

