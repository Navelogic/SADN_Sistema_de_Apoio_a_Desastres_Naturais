package br.com.hackathon.Model.Doacao;

import br.com.hackathon.Model.Coleta.Coleta;
import br.com.hackathon.Model.Item.Item;
import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

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

    @OneToMany(mappedBy = "doacao", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Item> itens = new HashSet<>();

}
