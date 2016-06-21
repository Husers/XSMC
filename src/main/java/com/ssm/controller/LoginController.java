package com.ssm.controller;

import com.ssm.model.User;
import com.ssm.serviceImpl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by HuLiang
 * On 16-6-2.
 */
@Controller
public class LoginController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String getHere() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password, ModelMap map) {
        User user = userService.selectUserByName(username);
        if (username.equals(user.getUsername()) && password.equals(user.getPassword())) {
            System.err.println("验证成功");
            map.addAttribute("msg","Successful");
            return "index";
        } else {
            System.err.println("ERR");
            return "login";
        }
    }
}
