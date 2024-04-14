package igl.filadelfia.control_asist_api.service;

import igl.filadelfia.control_asist_api.entity.Asistencia;
import igl.filadelfia.control_asist_api.entity.Evento;
import igl.filadelfia.control_asist_api.entity.Persona;
import igl.filadelfia.control_asist_api.entity.dto.AsistenciaDto;
import igl.filadelfia.control_asist_api.entity.repository.AsistenciaRepository;
import igl.filadelfia.control_asist_api.entity.repository.EventoRepository;
import igl.filadelfia.control_asist_api.entity.repository.PersonaRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AsisstenciaService {
    private final AsistenciaRepository asistenciaRepository;
    @Autowired
    private final PersonaRepository personaRepository;
    @Autowired
    private final EventoRepository eventoRepository;

    @Autowired
    public AsisstenciaService(AsistenciaRepository asistenciaReposittory, AsistenciaRepository asistenciaRepository, PersonaRepository personaRepository, EventoRepository eventoRepository) {
        this.asistenciaRepository = asistenciaRepository;
        this.personaRepository = personaRepository;
        this.eventoRepository = eventoRepository;
    }

    public List<Asistencia> showAllAsist(){
        return asistenciaRepository.findAll();
    }

    public Asistencia takeAssist(AsistenciaDto asistenciaDto){
        Asistencia asistencia = new Asistencia();
        // Buscar la persona por ID
        Optional<Persona> optionalPersona = personaRepository.findById(asistenciaDto.getPersona());
        if (optionalPersona.isEmpty()) {
            throw new EntityNotFoundException("Persona no encontrada con ID: " + asistenciaDto.getPersona());
        }
        Persona persona = optionalPersona.get();

        // Buscar el evento por ID
        Optional<Evento> optionalEvento = eventoRepository.findById(asistenciaDto.getEvento());
        if (optionalEvento.isEmpty()) {
            throw new EntityNotFoundException("Evento no encontrado con ID: " + asistenciaDto.getEvento());
        }
        Evento evento = optionalEvento.get();

        asistencia.setPersona(persona);
        asistencia.setEvento(evento);

        // Guardar la asistencia en la base de datos
        return  asistenciaRepository.save(asistencia);
    }

    public boolean existsById(Long id) {
        return asistenciaRepository.existsById(id);
    }

    public boolean existsByPersonaAndEvento(Long idPersona) {
        Persona persona = personaRepository.findById(idPersona)
                .orElseThrow(() -> new EntityNotFoundException("Persona no encontrada"));
        Evento evento = eventoRepository.findById(1L) // Puedes cambiar esto si necesitas buscar un evento específico
                .orElseThrow(() -> new EntityNotFoundException("Evento no encontrado"));
        return asistenciaRepository.existsByPersonaAndEvento(persona, evento);
    }
}
