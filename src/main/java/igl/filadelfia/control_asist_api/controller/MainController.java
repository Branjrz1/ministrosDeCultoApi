package igl.filadelfia.control_asist_api.controller;

import igl.filadelfia.control_asist_api.entity.Asistencia;
import igl.filadelfia.control_asist_api.entity.Persona;
import igl.filadelfia.control_asist_api.entity.dto.AsistenciaDto;
import igl.filadelfia.control_asist_api.entity.dto.MetricsDTO;
import igl.filadelfia.control_asist_api.service.AsisstenciaService;
import igl.filadelfia.control_asist_api.service.MetricsService;
import igl.filadelfia.control_asist_api.service.PersonaService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/main_api")

public class MainController {

private final PersonaService personaService;
private final AsisstenciaService asisstenciaService;
private final MetricsService metricsService;

    public MainController(PersonaService personaService, AsisstenciaService asisstenciaService, MetricsService metricsService) {
        this.personaService = personaService;
        this.asisstenciaService = asisstenciaService;
        this.metricsService = metricsService;
    }

    @GetMapping("/ola")
    public ResponseEntity<List<Persona>> getAll(){
        return new ResponseEntity<>(personaService.showAll(), HttpStatus.OK);
    }

    @GetMapping("/ministro")
    public ResponseEntity<List<Persona>> ministros(){
        return new ResponseEntity<>(personaService.showByMinisterio("Ministro de culto",
                "Ministro de Culto X"),HttpStatus.OK);
    }

    @GetMapping("/asistentes")
    public ResponseEntity<List<Asistencia>> showAsist(){
        return new ResponseEntity<>(asisstenciaService.showAllAsist(),HttpStatus.OK);
    }

    @PostMapping("/addAsistencia")
    public  ResponseEntity<Asistencia> addAsist(@RequestBody AsistenciaDto asistencia){
        return new ResponseEntity<>(asisstenciaService.takeAssist(asistencia), HttpStatus.OK);
    }

    @PostMapping("/addUser")
    public ResponseEntity<Persona> addPersona(@RequestBody Persona persona){
        return new ResponseEntity<>(personaService.addPersona(persona), HttpStatus.OK);
    }

    @PutMapping("/update/{id}")
    public ResponseEntity<Optional<Persona>> updPersona(@RequestBody Persona persona,@PathVariable Long id){
        personaService.updatePerson(persona,id);
        return new ResponseEntity<>(personaService.showById(id),HttpStatus.OK);
    }

    @GetMapping("/metrics/all")
    public MetricsDTO getAllMetrics() {
        return metricsService.getAllMetrics();
    }

    @GetMapping("/checkAsistencia/{id}")
    public boolean checkAsistencia(@PathVariable Long id) {
        return asisstenciaService.existsByPersonaAndEvento(id);
    }


}
