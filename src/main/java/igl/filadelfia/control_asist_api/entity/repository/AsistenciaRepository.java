package igl.filadelfia.control_asist_api.entity.repository;

import igl.filadelfia.control_asist_api.entity.Asistencia;
import igl.filadelfia.control_asist_api.entity.Evento;
import igl.filadelfia.control_asist_api.entity.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AsistenciaRepository extends JpaRepository<Asistencia,Long> {
    @Query("SELECT COUNT(a) FROM Asistencia a")
    int countAttendees();

    List<Asistencia> findByEventoId(Long evento);
    boolean existsByPersonaAndEvento(Persona persona, Evento evento);
}
