package com.example.demo.controller;

import com.example.demo.VO.DemoTestVo;
import com.example.demo.VO.DemoVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DemoController {

    @GetMapping("/demo")                                ////demo.jsp get
    public String demo()
    {
        return "demo";
    }


    @RequestMapping("/request")                     ////demotest-> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String request(DemoVO demoVO, Model model)
    {
        System.out.println(demoVO.toString());
        return "request";
    }


///////////////////////////////////////////////// TEST ///////////////////////////////////////////////////////////////

    @GetMapping("/demotest")                            ////demotest.jsp get
    public String demoTest()
    {
        return "demotest";
    }

    @RequestMapping("/requesttes")                     ////demotest-> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String requesttest(@RequestParam("ver") String ver,@RequestParam("mid") String mid, Model model)
    {
        model.addAttribute("ver",ver);
        model.addAttribute("mid",mid);
        System.out.println("ver -> "+ver);
        System.out.println("mid -> "+mid);
        return "requesttest";
    }
    @RequestMapping("/requesttest")                     ////demotest-> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String requesttestVo(DemoTestVo demoTestVo, Model model)
    {
        System.out.println("ver -> "+demoTestVo.getVer());
        System.out.println("mid -> "+demoTestVo.getMid());
        System.out.println("맞다.");
        return "requesttest";
    }


}
