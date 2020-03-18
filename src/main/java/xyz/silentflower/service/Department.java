package xyz.silentflower.service;

import org.springframework.stereotype.Service;
import xyz.silentflower.domain.Department_bean;

import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/17 18:35:51
 * @description
 */
@Service
public interface Department {

    public List<Department_bean> getDep(Integer page);

    public int InsDep(Department_bean dep);

    public int delDep(Integer uid);

    public int editDep(Department_bean dep);

    public String getNameByID(Integer dept_id);

    public List<Map<String,Object>> getAllNameExceptOne(Integer dept_id);
}
