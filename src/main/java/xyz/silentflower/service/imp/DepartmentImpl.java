package xyz.silentflower.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import xyz.silentflower.dao.DepDao;
import xyz.silentflower.domain.Department_bean;
import xyz.silentflower.service.Department;

import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/17 18:36:23
 * @description
 */
@Service("departMent1")
public class DepartmentImpl implements Department {
    @Autowired
    private DepDao de;

    @Override
    public List<Department_bean> getDep(Integer page) {
        Integer limit = 2;
        Integer offset = (page-1)*limit;
        return de.getDep(offset,limit);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int InsDep(Department_bean dep) {
        return de.InsDep(dep);
    }

    @Override
    public int delDep(Integer uid) {
        return de.delDep(uid);
    }

    @Override
    public int editDep(Department_bean dep) {
        return de.ediDep(dep);
    }

    @Override
    public String getNameByID(Integer dept_id) {
        return de.getNameById(dept_id);
    }

    @Override
    public List<Map<String,Object>> getAllNameExceptOne(Integer dept_id) {
        return de.getAllNameByIdExceptOne(dept_id);
    }


}
