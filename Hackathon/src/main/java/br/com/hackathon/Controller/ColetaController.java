package br.com.hackathon.Controller;

import br.com.hackathon.Model.Coleta.ColetaDTO;
import br.com.hackathon.Service.ColetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/coleta")
public class ColetaController {
    @Autowired
    private ColetaService coletaService;

    @GetMapping
    public ResponseEntity<List<ColetaDTO>> findAll(){
        return ResponseEntity.ok(coletaService.findAll());
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Long id) {
        coletaService.deleteById(id);
    }
}
