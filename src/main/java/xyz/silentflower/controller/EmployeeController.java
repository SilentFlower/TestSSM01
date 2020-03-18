package xyz.silentflower.controller;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import xyz.silentflower.domain.Employee;
import xyz.silentflower.domain.User;
import xyz.silentflower.service.imp.EmpServiceImpl;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/14 11:18:58
 * @description
 */
@Controller
@RequestMapping("/Emplpyee")
public class EmployeeController {
    @Autowired
    @Qualifier(value = "EmpServiceImpl")
    private EmpServiceImpl ei;
    public final ObjectMapper mapper = new ObjectMapper();

    @RequestMapping("/get")
    @ResponseBody
    public Map<String,Object> getEmp(@RequestParam(value = "uid") Integer uid){
        return ei.getEmpById(uid);
    }

    @RequestMapping("/to")
    public String getEmp(){
        return "main_em";
    }

    @RequestMapping("/get2")
    @ResponseBody
    public List<Employee> getEmp2(@RequestParam(value = "pageNo",defaultValue = "1") Integer page){
        List<Employee> list = ei.getEmpByPage(page);
        return list;
    }

    @RequestMapping("/ins")
    @ResponseBody
    public String InsEmp(Employee employee){
        int i = ei.InsertEmp(employee);
        if (i == 1){ return "200";}
        else {return "100";}
    }

    @RequestMapping("/del")
    @ResponseBody
    public String InsEmp(@RequestParam(value = "uid") Integer i){
       ei.DeleteEmp(i);
       return "200";
    }

    @RequestMapping("/edi")
    @ResponseBody
    public String EdiEmp(Employee employee){
        ei.EditEmp(employee);
        return "200";
    }



}
