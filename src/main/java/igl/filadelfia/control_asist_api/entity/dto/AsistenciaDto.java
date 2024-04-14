package igl.filadelfia.control_asist_api.entity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class AsistenciaDto {
    private Long id;
    private long evento;
    private long persona;
}