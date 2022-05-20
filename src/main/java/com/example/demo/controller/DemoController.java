package com.example.demo.controller;

import com.example.demo.VO.DemoTestVo;
import com.example.demo.VO.DemoVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DemoController {

    ///////////////////////Spring Boot -> JSP 이용////////////////////////////////////////
    
    @GetMapping("/demo")                                ////demo.jsp get
    public String demo() {
        return "demo";
    }

    @GetMapping("/demoreturnurl")                                ////demo.jsp get
    public String demoreturnurl() {
        return "demoreturnurl";
    }


    @PostMapping("/request")                     ////demotest-> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String request(DemoVO demoVO, Model model) {
        return "request";
    }


    ///////////////////////Spring Boot 이용////////////////////////////////////////

    @GetMapping("/test")
    public String testForm() {
        System.out.println("test 페이지를 불러왔습니다.");
        return "test";
    }

    @PostMapping("/redirect")
    public String testFormPost(DemoVO demoVO, RedirectAttributes redirectAttributes) throws Exception{
        System.out.println("!!!!!!!!!!!!!~~~~~~~~~~!!!!!!!!!!!!!!!!!!!!");
        redirectAttributes.addFlashAttribute("demoVO",demoVO);
        System.out.println(demoVO);
        System.out.println("!!!!!!!!!!!!!~~~~~~~~~~!!!!!!!!!!!!!!!!!!!!");
        String redirectUrl = "https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp";
        return "redirect:" + redirectUrl;



    }

    @PostMapping("/redirect1")
    public void testFormPost() {
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    }



    ///////////////////////////////////////////////// TEST ///////////////////////////////////////////////////////////////

    @GetMapping("/demotest")                            ////demotest.jsp get
    public String demoTest() {
        return "demotest";
    }

    @PostMapping("/requesttes")                     ////demotest -> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String requesttest(@RequestParam("ver") String ver, @RequestParam("mid") String mid, Model model) {
        model.addAttribute("ver", ver);
        model.addAttribute("mid", mid);
        System.out.println("ver -> " + ver);
        System.out.println("mid -> " + mid);
        return "requesttest";
    }

    @PostMapping("/requesttest")                     ////demotest -> requesttest로 보내는 파라미터 값 확인 및 모델 불러오기.
    public String requesttestVo(DemoTestVo demoTestVo, Model model) {
        System.out.println("ver -> " + demoTestVo.getVer());
        System.out.println("mid -> " + demoTestVo.getMid());
        System.out.println("맞다.");
        return "requesttest";
    }


}
