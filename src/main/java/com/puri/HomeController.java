package com.puri;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

@Controller
public class HomeController {

    @RequestMapping(value = "/home", produces = MediaType.APPLICATION_JSON_VALUE)
    public String home(Model model) {
        model.addAttribute("event", "This is success");
        return "home";
    }

    @RequestMapping(value = "/add-event", method = RequestMethod.POST)
    public String addEvent(@RequestParam("event-date") Date date, @RequestParam("event-name") String name, @RequestParam("event-game") String game, @RequestParam("event-time") String time) {

        // html time to java.sql.time conversion
        Time t = null;
        try {
            SimpleDateFormat format = new SimpleDateFormat("HH:mm");
            java.util.Date d = format.parse(time);
            t = new java.sql.Time(d.getTime());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "home";
    }

    @RequestMapping("/display-with-date-range")
    public String getWithRange(@RequestParam("from-date") Date fromDate, @RequestParam("to-date") Date toDate) {
        return "home";
    }

    @RequestMapping("/display-with-game-type")
    public String getWithGame(@RequestParam("game") String[] games) {
        return "home";
    }
}
