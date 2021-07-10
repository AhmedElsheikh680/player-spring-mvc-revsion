package com.spring.player.service;

import com.spring.player.model.Player;
import com.spring.player.repo.PlayerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PlayerService {

    @Autowired
    private PlayerRepo playerRepo;

    public List<Player> getPlayers(){
       return playerRepo.findAll();
    }

    public Player addPlayer(Player player) {

    return playerRepo.save(player);
    }

    public Player getPlayer(int id){
        return playerRepo.findById(id).get();
    }
}
