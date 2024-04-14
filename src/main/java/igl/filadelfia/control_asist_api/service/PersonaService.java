package igl.filadelfia.control_asist_api.service;

import igl.filadelfia.control_asist_api.entity.Asistencia;
import igl.filadelfia.control_asist_api.entity.Persona;
import igl.filadelfia.control_asist_api.entity.repository.AsistenciaRepository;
import igl.filadelfia.control_asist_api.entity.repository.PersonaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PersonaService {
    private final PersonaRepository personaRepository;
    private final AsistenciaRepository asistenciaRepository;
    @Autowired
    public PersonaService(PersonaRepository personaRepository, AsistenciaRepository asistenciaRepository) {
        this.personaRepository = personaRepository;
        this.asistenciaRepository = asistenciaRepository;
    }

    public List<Persona> showAll(){
        return personaRepository.findAll();
    }
    public Optional<Persona> showById(Long id){
        return personaRepository.findById(id);
    }

    public List<Persona> showByMinisterio(String ministerio, String ministerio2){
        return personaRepository.findByDosMinisterios(ministerio, ministerio2);
    }

    public Persona addPersona(Persona persona){
        return personaRepository.save(persona);
    }

    public void updatePerson(Persona patPers,Long id){
        Persona repoPerson = personaRepository.findById(id).orElse(null);
        if (repoPerson == null){
            return;
        }
        repoPerson.setId(id);
        repoPerson.setNombre(patPers.getNombre());
        repoPerson.setApellidoPat(patPers.getApellidoPat());
        repoPerson.setApellidoMat(patPers.getApellidoMat());
        repoPerson.setEstado(patPers.getEstado());
        repoPerson.setMinisterio(patPers.getMinisterio());
        repoPerson.setEdad(patPers.getEdad());
        repoPerson.setIglesia(patPers.getIglesia());
        repoPerson.setCelular(patPers.getCelular());

        personaRepository.save(repoPerson);
    }


}