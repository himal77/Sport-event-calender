package com.puri;

import com.puri.model.EventModel;
import com.puri.service.EventService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.sql.Time;
import java.util.List;


@Controller
public class HomeController {

    @Autowired
    private EventService eventService;

    @Autowired
    private Helper helper;

    @RequestMapping(value = "/home", produces = MediaType.APPLICATION_JSON_VALUE)
    public String home(Model model) {
        List<EventModel> eventModelList = eventService.getAllEvent();
        JSONArray jsonArray = helper.getJsonArray(eventModelList);
        model.addAttribute("event", jsonArray);
        return "home";
    }


    @RequestMapping(value = "/add-event", method = RequestMethod.POST)
    public String addEvent(@RequestParam("event-date") Date eventDate, @RequestParam("event-time") String time, @RequestParam("event-type") String eventType, @RequestParam("event-name") String eventName) {
        // html time to java.sql.time conversion
        Time eventTime = helper.getTimeToSql(time);
        EventModel eventModel = new EventModel(eventDate, eventTime, eventType, eventName);
        eventService.addEvent(eventModel);
        return "redirect:home";
    }

    @RequestMapping("/display-with-date-range")
    public String getWithRange(@RequestParam("from-date") Date fromDate, @RequestParam("to-date") Date toDate, Model model) {
        List<EventModel> eventModelList = eventService.getEventByRange(fromDate, toDate);
        JSONArray jsonArray = helper.getJsonArray(eventModelList);
        model.addAttribute("event", jsonArray);
        return "home";
    }

    @RequestMapping("/display-with-game-type")
    public String getWithGame(@RequestParam("game") String[] games, Model model) {
        List<EventModel> eventModelList = eventService.getEventByGame(games);
        JSONArray jsonArray = helper.getJsonArray(eventModelList);
        model.addAttribute("event", jsonArray);
        return "home";
    }

}
