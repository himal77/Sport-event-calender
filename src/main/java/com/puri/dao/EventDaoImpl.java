package com.puri.dao;

import com.puri.dao.interfaces.EventDao;
import com.puri.model.EventModel;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import javax.xml.crypto.Data;
import java.sql.Date;
import java.util.Arrays;
import java.util.List;

@Repository
public class EventDaoImpl implements EventDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Override
    public List<EventModel> getAllEvent() {
        List<EventModel> eventModelList = hibernateTemplate.loadAll(EventModel.class);
        return eventModelList;
    }

    @Override
    public List<EventModel> getEventByRange(Date toDate, Date fromDate) {
        List<EventModel> eventList = (List<EventModel>) hibernateTemplate.
                find("FROM EventModel e WHERE e.eventDate BETWEEN ?0 AND ?1", toDate, fromDate);
        return eventList;
    }

    @Override
    public List<EventModel> getEventByGame(String[] game) {
        List<EventModel> eventList = (List<EventModel>) hibernateTemplate.
                find("FROM EventModel e WHERE e.eventType IN ?0", Arrays.asList(game));
        return eventList;
    }

    @Transactional
    public void addEvent(EventModel eventModel) {
       hibernateTemplate.save(eventModel);
    }
}
