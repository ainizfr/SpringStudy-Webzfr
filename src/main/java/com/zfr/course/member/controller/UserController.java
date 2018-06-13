package com.zfr.course.member.controller;


import com.sun.org.apache.xpath.internal.operations.Mod;
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
        //TODO：保存到数据库
        return "redirect:toUserList";
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

    //跳转到用户列表jsp
    @RequestMapping("/toUserList")
    public String toUserList(){

        return "userlist";
    }

    //批量删除用户
    @RequestMapping("/deleteUsers")
    public  String deleteUsers(int[] ids, Model model){
        String msg="";
        for(int id:ids){
            msg=msg+"     "+id;

        }
        model.addAttribute("msg",msg);
        return "success";
    }

    //删除用户
    @RequestMapping("/deleteUser")
    public String deleteUser(int id,Model model){
        model.addAttribute("msg","删除了id="+id);
        return "redirect:toUserList";
    }
    //跳转修改信息页面
    @RequestMapping("/toEditUser")
    public String toEditUser(int id,Model model){
        User user=new User();
        user.setId(id);
        user.setName("张三");
        user.setSex("nan");
        user.setEmail("hjsjsj@DJDJD.COM");
        model.addAttribute("user",user);


        return "useredit";

    }
    //修改用户信息

    @RequestMapping("editUser")
    public String  editUser(User user){
        //TODO：保存数据库操作

        return "redirect:toUserList";
    }


}
