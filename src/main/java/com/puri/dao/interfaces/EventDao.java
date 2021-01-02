package com.puri.dao.interfaces;

import com.puri.model.EventModel;

import javax.xml.crypto.Data;
import java.sql.Date;
import java.util.List;

public interface EventDao {
    public List<EventModel> getAllEvent();
    public List<EventModel> getEventByRange(Date toDate, Date fromDate);
    public List<EventModel> getEventByGame(String[] game);
    public void addEvent(EventModel eventModel);
}
