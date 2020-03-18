package xyz.silentflower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import xyz.silentflower.domain.Admin;
import xyz.silentflower.util.Result;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.PageContext;

/**
 * @author SiletFlower
 * @date 2020/3/13 11:11:46
 * @description
 */
@Controller
@RequestMapping(value = "/login",method = RequestMethod.POST)
public class LoginController {


    @RequestMapping(value = "/in",method = RequestMethod.POST)
    @ResponseBody
    public Result loginVerify(HttpServletRequest request){
        Result result = new Result();
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        System.out.println(username);
        Admin admin = new Admin();
        if(admin.getName().equals(username) && admin.getPassword().equals(password)){
            result = Result.success();
        }else{
            result = Result.fail();
        }
        return result;
    }

    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String Main(){

        return "index";
    }

    @RequestMapping(value = "/out",method = RequestMethod.GET)
    public String out(){
        return "redirect:/login.jsp";
    }
}
