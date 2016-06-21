package com.ssm.utils;

import org.springframework.stereotype.Component;

/**
 * Created by HuLiang
 * On 16-6-7.
 */
@Component
public class Utils {
    public static boolean isNull(Object args) {
        if (args == null || "".equals(args)){
            return true;
        }
        return false;
    }
}
