package com.ssm.serviceImpl;

import com.ssm.mappers.HelloWorldMapper;
import com.ssm.model.Dualz;
import com.ssm.service.HelloWorldService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by HuLiang
 * On 16-6-2.
 */
@Service
public class HelloWorldServiceImpl implements HelloWorldService {
    @Autowired
    private HelloWorldMapper helloWorldMapper;

    @Override
    public Dualz showHello() {
        return helloWorldMapper.showHello();
    }

}
