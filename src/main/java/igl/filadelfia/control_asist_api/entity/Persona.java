package igl.filadelfia.control_asist_api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name = "Persona")
public class Persona {
    @Setter
    @Getter
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Setter
    @Getter
    @Column(name = "nom", nullable = false)
    private String nombre;

    @Setter
    @Getter
    @Column(name = "ap_pat", nullable = false)
    private String apellidoPat;

    @Setter
    @Getter
    @Column(name = "ap_mat")
    private String apellidoMat;

    @Setter
    @Getter
    @Column(name = "Estado", nullable = false)
    private String estado;

    @Setter
    @Getter
    @Column(name = "Ministerio")
    private String ministerio;

    @Setter
    @Getter
    @Column(name = "Edad")
    private Integer edad;

    @Setter
    @Getter
    @Column(name = "Iglesia")
    private String iglesia;

    @Setter
    @Getter
    @Column(name = "Celular")
    private String celular;

}
