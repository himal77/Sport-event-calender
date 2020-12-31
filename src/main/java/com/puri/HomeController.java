package com.puri;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Date;
import java.util.Collections;

@Controller
public class HomeController {

    @RequestMapping(value = "/home", produces = MediaType.APPLICATION_JSON_VALUE)
    public String home(Model model) {
        model.addAttribute("event", "This is sucess");
        return "home";
    }

    @RequestMapping(value = "/add-event", method = RequestMethod.POST)
    public String addEvent(@RequestParam("event-date") Date date, @RequestParam("event-name") String name) {
        System.out.println("Data: " + date);
        System.out.println("Name: " + name);
        return "home";
    }

    @RequestMapping("/display-with-date-range")
    public String getWithRange(@RequestParam("from-date") Date fromDate, @RequestParam("to-date") Date toDate) {
        System.out.println("From Date: " + fromDate);
        System.out.println("From To: " + toDate);
        return "home";
    }
}
