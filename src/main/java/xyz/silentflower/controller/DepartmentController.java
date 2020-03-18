package xyz.silentflower.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import xyz.silentflower.domain.Department_bean;
import xyz.silentflower.service.Department;

import java.util.List;

/**
 * @author SiletFlower
 * @date 2020/3/18 02:28:58
 * @description
 */
@Controller
@RequestMapping("department")
public class DepartmentController {
    @Autowired
    @Qualifier(value = "departMent1")
    private Department dt;

    @RequestMapping("toDep")
    public String toDep(){
        return "main_dep";
    }

    @RequestMapping("getpage/{page}")
    @ResponseBody
    public List<Department_bean> getPage(@PathVariable("page") Integer page){
        return dt.getDep(page);
    }

    @RequestMapping("ins")
    @ResponseBody
    public String insDep(Department_bean dep){
        int i = dt.InsDep(dep);
        if(i == 0) {
            return null;
        } else {
            return "200";
        }
    }

    @RequestMapping("del/{uid}")
    @ResponseBody
    public String delDep(@PathVariable("uid") Integer uid){
        int i = dt.delDep(uid);
        if(i == 0){
            return null;
        }else{
            return "200";
        }
    }

    @RequestMapping("edit")
    @ResponseBody
    public String delDep(Department_bean dep){
        int i = dt.editDep(dep);
        if(i == 0){
            return null;
        }else{
            return "200";
        }
    }
}
