package br.com.hackathon.Service;

import br.com.hackathon.Model.Coleta.Coleta;
import br.com.hackathon.Model.Coleta.ColetaDTO;
import br.com.hackathon.Repository.ColetaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ColetaService {
    @Autowired
    private ColetaRepository coletaRepository;

    @Transactional(readOnly = true)
    public List<ColetaDTO> findAll() {
        return coletaRepository.findAll().stream()
                .map(coleta -> new ColetaDTO(coleta.getId(), coleta.getNome(), coleta.getDescricao(), coleta.getRua(), coleta.getCidade(), coleta.getEstado(), coleta.getCep(), coleta.getNumero(), coleta.getTelefone(), coleta.getEmail()))
                .collect(java.util.stream.Collectors.toList());
    }

    @Transactional
    public Coleta save(Coleta coleta) {
        return coletaRepository.save(coleta);
    }


    @Transactional
    public void deleteById(Long id) {
        coletaRepository.deleteById(id);
    }

}
