package com.example.demo.controller;

import com.example.demo.VO.DemoTestVo;
import com.example.demo.VO.DemoVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        System.out.println("test");
        return "test";
    }

//    @PostMapping("https://secureapi.test.eximbay.com/Gateway/BasicProcessor.krp")
//    public void testFormPost(@RequestBody DemoVO demoVO)
//    {
//        System.out.println(demoVO.toString());
//
// redirect를 이용해서 전달해보기.


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
