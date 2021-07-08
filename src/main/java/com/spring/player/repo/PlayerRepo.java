package com.spring.player.repo;

import com.spring.player.model.Player;

import org.springframework.stereotype.Repository;

import java.util.List;


public interface PlayerRepo {

    public List<Player> getPlayers();
}
