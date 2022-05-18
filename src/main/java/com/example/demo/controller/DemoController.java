package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

    @GetMapping("/demo2.3")
    public String index()
    {
        return "demo2.3";
    }

//    @PostMapping("https://secureapi.test.eximbay.com/Gateway/DirectProcessor.krp")
//    public void post(Model model , @RequestParam )
//    {
//
//    }
//
    @PostMapping("")
    public void post(@RequestParam Integer ver , @RequestParam String mid, @RequestParam String txntype)
    {
        ver = 230;
        mid = "1849705C64";
        txntype = "AUTHORIZE_PA";
    }







}
