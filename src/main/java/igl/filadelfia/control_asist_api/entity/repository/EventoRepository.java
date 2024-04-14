package igl.filadelfia.control_asist_api.entity.repository;

import igl.filadelfia.control_asist_api.entity.Evento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventoRepository extends JpaRepository<Evento,Long> {
}
