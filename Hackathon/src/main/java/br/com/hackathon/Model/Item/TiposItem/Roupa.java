package br.com.hackathon.Model.Item.TiposItem;

import br.com.hackathon.Model.Item.Item;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.*;

@Entity
@DiscriminatorValue("Roupa")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Roupa extends Item {
    private String tamanho;
    private String genero;
    private String material;

}
