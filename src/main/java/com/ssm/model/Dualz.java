package com.ssm.model;

import org.springframework.stereotype.Repository;

/**
 * Created by HuLiang
 * On 16-6-2.
 */
@Repository
public class Dualz {
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
