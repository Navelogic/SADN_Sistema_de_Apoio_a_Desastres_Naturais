package br.com.hackathon.Repository;

import br.com.hackathon.Model.Coleta.Coleta;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ColetaRepository extends JpaRepository<Coleta, Long> {
}
