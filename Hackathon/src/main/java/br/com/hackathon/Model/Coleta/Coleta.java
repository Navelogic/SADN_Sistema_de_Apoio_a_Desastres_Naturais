package br.com.hackathon.Model.Coleta;

import br.com.hackathon.Model.Doacao.Doacao;
import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity(name = "Coleta")
@Table(name = "coletas")
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = "id")
public class Coleta {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;
    private String descricao;
    private String rua;
    private String cidade;
    private String estado;
    private String cep;
    private String numero;
    private String telefone;
    private String email;

    @OneToMany(mappedBy = "coleta", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Doacao> doacoes = new HashSet<>();


}
