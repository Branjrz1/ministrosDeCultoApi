package igl.filadelfia.control_asist_api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;


@Entity
@Table(name = "asistencia",
        uniqueConstraints = {@UniqueConstraint(columnNames = {"id_evento", "id_persona"})})
public class Asistencia {

    @Getter
    @Setter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Setter
    @Getter
    @ManyToOne
    @JoinColumn(name = "id_evento", nullable = false)
    private Evento evento;

    @Setter
    @Getter
    @ManyToOne
    @JoinColumn(name = "id_persona", nullable = false )
    private Persona persona;

    @Setter
    @Getter
    @Column(name = "fecha_reg")
    private Date fecha_reg;

}
