package com.puri;

import com.puri.model.EventModel;
import org.json.JSONArray;
import org.json.JSONObject;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Helper {

    public JSONArray getJsonArray(List<EventModel> eventModelList) {
        JSONArray jsonArray = new JSONArray();
        for(EventModel e: eventModelList) {
            // Extracting each data into map to make json format for javascript
            Map<String, String> eventMap  = new HashMap<String, String>();
            eventMap.put("id", Integer.toString(e.getId()));
            eventMap.put("name", e.getEventType());
            eventMap.put("description", e.getEventName());
            eventMap.put("badge", e.getEventTime().toString());
            eventMap.put("date", convertToDate(e.getEventDate()));
            eventMap.put("type", e.getEventType());

            // converting to json
            JSONObject json = new JSONObject(eventMap);

            //converting to jsonArray
            jsonArray.put(json);
        }
        return jsonArray;
    }

    // Method to convert java.sql.Date to calendar format January/1/2020
    private String convertToDate(Date eventDate) {
        int eventDay = eventDate.getDate();
        int eventYear = 1900 + eventDate.getYear();
        String eventMonth = getMonthInString(eventDate.getMonth());
        return  eventMonth + "/" + eventDay + "/" + eventYear;
    }

    private String getMonthInString(int month) {
        switch(month) {
            case 0: return "January";
            case 1: return "February";
            case 2: return "March";
            case 3: return "April";
            case 4: return "May";
            case 5: return "June";
            case 6: return "July";
            case 7: return "August";
            case 8: return "September";
            case 9: return "October";
            case 10: return "November";
            case 11: return "December";
        }
        return null;
    }

    public Time getTimeToSql(String time) {
        try {
            SimpleDateFormat format = new SimpleDateFormat("HH:mm");
            java.util.Date d = format.parse(time);
            Time t = new java.sql.Time(d.getTime());
            return t;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
