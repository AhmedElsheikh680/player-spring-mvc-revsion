package com.spring.player.repo;

import com.spring.player.model.Player;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PlayerRepoImp  implements  PlayerRepo{

    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<Player> getPlayers() {
        Session session = sessionFactory.getCurrentSession();
        Query<Player> query = session.createQuery("from Player ", Player.class);

        return query.getResultList();
    }
}
