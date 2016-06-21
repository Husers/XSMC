package com.ssm.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ssm.model.Dualz;
import com.ssm.model.User;
import com.ssm.serviceImpl.UserServiceImpl;
import org.apache.ibatis.type.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by HuLiang
 * On 16-6-3.
 */
@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String addUser(User user, ModelMap model) {
        userService.addUser(user);
        model.addAttribute("msg", "新增用户成功");
        return "blank";
    }

    @RequestMapping("/usermanage")
    public String userManage(ModelMap model) {
        List<User> list = userService.selectAllUser();
        model.addAttribute("list", list);
        return "userManage";
    }

    @RequestMapping("/deleteUser")
    @ResponseBody
    public String deleteUser(@RequestBody String UserBody) {
        List<User> list = new ArrayList<User>();
        JSONArray jsonArray = JSONArray.parseArray(UserBody);
        for (Object object : jsonArray) {
            User user = JSONObject.parseObject(object.toString(), User.class);
            list.add(user);
        }
        userService.deleteUser(list);
        return "true";
    }
}