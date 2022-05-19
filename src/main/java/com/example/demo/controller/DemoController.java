package com.example.demo.controller;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.logging.Logger;

@Controller
public class DemoController {

    @GetMapping("/demo")
    public String demo()
    {
        return "demo";
    }

    @GetMapping("/demotest")
    public String demoTest()
    {
        return "demotest";
    }

    @RequestMapping("/requesttest")
    public String requesttest(@RequestParam("ver") String ver,@RequestParam("mid") String mid, Model model)
    {
        model.addAttribute("ver",ver);
        model.addAttribute("mid",mid);
        System.out.println("ver -> "+ver);
        System.out.println("mid -> "+mid);
        return "requesttest";
    }


    @GetMapping("/request")
    public String request()
    {
        return "request";
    }




}
