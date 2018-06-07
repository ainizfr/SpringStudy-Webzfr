package com.zfr.course.member.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@Controller
@RequestMapping(value="/hello") //这时访问路径为：/hello/secondController
public class SecondController {


        @RequestMapping(value="/secondController")
        public String handleRequest(HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse,
                                    Model model) throws Exception {
//1、通过Model 对象，存储处理后的结果数据
            model.addAttribute("msg",
                    "这是我的第二个Spring MVC 程序，使用注解方式声明。");
//2、设置显示该数据的视图
            return "first";
        }
}
