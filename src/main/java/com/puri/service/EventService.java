package com.puri.service;

import com.puri.dao.EventDaoImpl;
import com.puri.dao.interfaces.EventDao;
import com.puri.model.EventModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.xml.crypto.Data;
import java.sql.Date;
import java.util.List;

@Service
public class EventService {

    @Autowired
    private EventDao eventDao;

    public List<EventModel> getAllEvent(){
        return eventDao.getAllEvent();
    }
    public List<EventModel> getEventByRange(Date toDate, Date fromDate){
        return eventDao.getEventByRange(toDate, fromDate);
    }
    public List<EventModel> getEventByGame(String[] game){
        return eventDao.getEventByGame(game);
    }
    public void addEvent(EventModel eventModel){
        eventDao.addEvent(eventModel);
    }

}
