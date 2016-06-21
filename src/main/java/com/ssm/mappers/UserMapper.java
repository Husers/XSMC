package com.ssm.mappers;

import com.ssm.model.User;

import java.util.List;

/**
 * Created by HuLiang
 * On 16-6-3.
 */
public interface UserMapper {
    User selectUserByName(String username);
    void addUser(User user);
    List<User> selectAllUser();
    void deleteUser(List<String> userList);
}
