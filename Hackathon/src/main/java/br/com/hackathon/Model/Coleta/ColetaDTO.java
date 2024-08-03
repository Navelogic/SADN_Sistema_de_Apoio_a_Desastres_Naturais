package br.com.hackathon.Model.Coleta;

public record ColetaDTO(
        Long id,
        String nome,
        String descricao,
        String rua,
        String cidade,
        String estado,
        String cep,
        String numero,
        String telefone,
        String email) {
}
