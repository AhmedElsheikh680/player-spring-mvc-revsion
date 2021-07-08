package com.spring.player.controller;

import com.spring.player.model.Player;
import com.spring.player.service.PlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/fifa")
public class PlayerController {

    @Autowired
    private PlayerService playerService;

    //http://localhost:8080/fifa/players
    @GetMapping("/players")
    public String getPlayers(Model model){

        List<Player> players = playerService.getPlayers();
        model.addAttribute("players", players);
        return "fifa-players";
    }
}
