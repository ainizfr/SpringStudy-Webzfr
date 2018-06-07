package com.zfr.course.member.controller;


import com.zfr.course.member.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {
    @RequestMapping("/selectUser")
    public String selectUser(int id,Model model){
        model.addAttribute("msg","选择了"+id+"的用户");
        return "first";
    }





    @RequestMapping("/toRegister")//跳转到注册jsp 页面
    public String toRegister() {
        return "registeruser";
    }
    @RequestMapping("/registerUser")
    public String registerUser(User user, Model model) {
        Integer id= user.getId();
        String name=user.getName();
        String sex=user.getSex();
        String email=user.getEmail();
        StringBuilder msg=new StringBuilder();
        msg.append("用户信息：<br />");
        msg.append("id="+id+"<br />");
        msg.append("name="+name+"<br />");
        msg.append("sex="+sex+"<br />");
        msg.append("email="+email+"<br />");
        model.addAttribute("msg",msg.toString());
        return "success";
    }


}
