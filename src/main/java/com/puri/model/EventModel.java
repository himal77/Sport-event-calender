package com.puri.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Time;

@Entity
public class EventModel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date eventDate;
    private Time eventTime;
    private String eventType;
    private String eventName;

    public EventModel() {
    }

    public EventModel(Date eventDate, Time eventTime, String eventType, String eventName) {
        this.eventDate = eventDate;
        this.eventTime = eventTime;
        this.eventType = eventType;
        this.eventName = eventName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getEventDate() {
        return eventDate;
    }

    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    public Time getEventTime() {
        return eventTime;
    }

    public void setEventTime(Time eventTime) {
        this.eventTime = eventTime;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    @Override
    public String toString() {
        return "EventModal{" +
                "id=" + id +
                ", eventDate=" + eventDate +
                ", eventTime=" + eventTime +
                ", eventType='" + eventType + '\'' +
                ", eventName='" + eventName + '\'' +
                '}';
    }
}
