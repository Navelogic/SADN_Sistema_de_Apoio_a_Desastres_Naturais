package br.com.hackathon.Model.Item;

import br.com.hackathon.Model.Doacao.Doacao;
import jakarta.persistence.*;
import lombok.*;

@Entity(name = "Item")
@Table(name = "itens")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "item_type", discriminatorType = DiscriminatorType.STRING)
public class Item {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Integer quantidade;

    @ManyToOne
    @JoinColumn(name = "doacao_id")
    private Doacao doacao;
}
