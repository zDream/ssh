package com.drayy.core;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by dream on 2016/8/2.
 */
@Controller
public class Login {

    @RequestMapping(value="/management/login",method = RequestMethod.POST)
    public String login(){
        System.out.println("这是测试");
        return "success";
    }
}
