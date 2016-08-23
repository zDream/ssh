package com.drayy.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by dream on 2016/8/22.
 */
@Controller
public class TestController {

    @RequestMapping(value = "angulsrjs",method = RequestMethod.GET)
    public String test(){
        return "pages/angularjsDemo";
    }
}
