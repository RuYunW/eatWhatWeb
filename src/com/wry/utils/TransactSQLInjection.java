package com.wry.utils;

public class TransactSQLInjection {
    public static String re(String str){
        return str.replaceAll("([';])+|(--)+","");
    }
}
