package igl.filadelfia.control_asist_api.entity.repository;

import igl.filadelfia.control_asist_api.entity.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PersonaRepository extends JpaRepository<Persona,Long> {
    @Query("SELECT COUNT(p) FROM Persona p WHERE p.ministerio = 'Ministro de Culto'")
    int countMinisters();
    @Query("SELECT COUNT(p) FROM Persona p WHERE p.ministerio = 'Ministro de Culto X'")
    int countMinistersX();
    @Query("SELECT COUNT(p) FROM Persona p WHERE p.edad < 14")
    int countMinors();
    @Query("SELECT p FROM Persona p WHERE p.ministerio = :ministerio1 or p.ministerio = :ministerio2")
    List<Persona> findByDosMinisterios(@Param("ministerio1") String ministerio1, @Param("ministerio2") String ministerio2);
}