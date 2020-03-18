package xyz.silentflower.service;

import org.springframework.stereotype.Service;
import xyz.silentflower.dao.EmpDao;
import xyz.silentflower.domain.Employee;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/14 12:41:34
 * @description
 */
@Service
public interface EmpService {

    public List<Employee> getEmpByPage(Integer page);

    public int InsertEmp(Employee employee);

    public int DeleteEmp(Integer uid);

    public int EditEmp(Employee employee);

    public Map<String,Object> getEmpById(Integer uid);

}
