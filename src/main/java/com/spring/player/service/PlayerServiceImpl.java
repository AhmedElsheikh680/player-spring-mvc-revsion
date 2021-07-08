package com.spring.player.service;

import com.spring.player.model.Player;
import com.spring.player.repo.PlayerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


@Service
@Transactional
public class PlayerServiceImpl implements PlayerService {

    @Autowired
    private PlayerRepo playerRepo;
    @Override
    public List<Player> getPlayers() {

        return playerRepo.getPlayers();
    }
}
