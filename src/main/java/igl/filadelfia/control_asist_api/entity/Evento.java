package igl.filadelfia.control_asist_api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Entity
@Table(name = "Evento")
public class Evento {
    @Getter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Getter
    @Setter
    @Column(name = "nom", nullable = false)
    private String nombre;

    @Getter
    @Setter
    @Column(name = "fecha", nullable = false)
    private Date fecha;
}
