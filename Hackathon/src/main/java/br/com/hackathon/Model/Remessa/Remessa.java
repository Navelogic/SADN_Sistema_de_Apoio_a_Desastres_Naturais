package br.com.hackathon.Model.Remessa;

import jakarta.persistence.*;
import lombok.*;

@Entity(name = "Remessa")
@Table(name = "remessas")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Remessa {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String qr_code;
}
