package com.ssm.serviceImpl;

import com.ssm.mappers.UserMapper;
import com.ssm.model.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by HuLiang
 * On 16-6-3.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User selectUserByName(String username) {
        return userMapper.selectUserByName(username);
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public List<User> selectAllUser() {
        List<User> list = userMapper.selectAllUser();
        return list;
    }

    @Override
    public void deleteUser(List<User> userList) {
        List<String> username = new ArrayList<String>();
        for (User user : userList) {
            username.add(user.getUsername());
        }
        userMapper.deleteUser(username);
    }
}
