package br.com.hackathon.Model.Doacao;

import br.com.hackathon.Model.Coleta.Coleta;
import jakarta.persistence.*;
import lombok.*;

@Entity(name = "Doacao")
@Table(name = "doacoes")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Doacao {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "coleta_id")
    private Coleta coleta;

}
