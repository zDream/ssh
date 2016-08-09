package com.drayy.core;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by dream on 2016/8/2.
 */
@Controller
public class Login {

    @RequestMapping(value="/management/login",method = RequestMethod.POST)
    public String login(HttpServletRequest request){
        System.out.println("这是测试");

        return "redirect:/success";
    }

    @RequestMapping(value = "/manamement/redirect",method = RequestMethod.GET)
    public String redirect(){
        System.out.println("这是重定向");
        return "success";
    }


    @RequestMapping(value="/success",method = RequestMethod.GET)
    public String logins(HttpServletRequest request){
        System.out.println("这是dddd");

        return "redirect";
    }
}
