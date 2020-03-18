package xyz.silentflower.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import xyz.silentflower.dao.EmpDao;
import xyz.silentflower.domain.Employee;
import xyz.silentflower.service.Department;
import xyz.silentflower.service.EmpService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/14 12:50:41
 * @description
 */
@Service("EmpServiceImpl")
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpDao ed;

    @Qualifier("departMent1")
    @Autowired
    private Department dt;

    @Override
    public List<Employee> getEmpByPage(Integer page) {
        int limit = 2;
        int offset = (page-1)*limit;
        List<Employee> allByPage = ed.getAllByPage(offset, limit);
        for (Employee employee : allByPage) {
            String name = dt.getNameByID(employee.getDepartment_id());
            employee.setDept_name(name);
        }
        return allByPage;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int InsertEmp(Employee employee) {
        return ed.InsertEmp(employee);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int DeleteEmp(Integer uid) {
        return ed.DeleteEmp(uid);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int EditEmp(Employee employee) {
        return ed.EditEmp(employee);
    }

    @Override
    public Map<String,Object> getEmpById(Integer uid) {
        Map<String,Object> map = new HashMap<String,Object>();
        Employee empById = ed.getEmpById(uid);
        empById.setDept_name(dt.getNameByID(empById.getDepartment_id()));
        List<Map<String, Object>> list= dt.getAllNameExceptOne(empById.getDepartment_id());
        map.put("choose",empById);
        map.put("other",list);
        return map;

    }


}
