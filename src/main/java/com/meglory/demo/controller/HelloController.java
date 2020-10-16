package com.meglory.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author mgh on 2020/10/16
 */
@RestController
public class HelloController {

    @RequestMapping("/")
    public String home() {
        return "Hello World - v1!";
    }
}
