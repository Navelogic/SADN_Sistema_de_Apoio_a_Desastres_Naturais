package br.com.hackathon.Model.Item.TiposItem;

import br.com.hackathon.Model.Item.Item;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@DiscriminatorValue("Alimento")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class Alimento extends Item {
    private String tipo;
    private String validade;


    private String peso;
}
