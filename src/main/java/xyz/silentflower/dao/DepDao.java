package xyz.silentflower.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xyz.silentflower.domain.Department_bean;

import java.util.List;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/17 18:36:57
 * @description
 */
@Repository
public interface DepDao {
    @Select("select * from tbl_dept limit #{offset},#{limit}")
    public List<Department_bean> getDep(@Param("offset") Integer offset, @Param("limit") Integer limit);

    @Insert("insert into tbl_dept(dept_name,dept_leader)" +
            "values(#{dept_name},#{dept_leader})")
    public int InsDep(Department_bean dep);

    @Delete("delete from tbl_dept where dept_id =#{uid} ")
    public int delDep(Integer uid);

    @Update("update tbl_dept set dept_name = #{dept_name}" +
            ",dept_leader = #{dept_leader} where dept_id = #{dept_id}")
    public int ediDep(Department_bean dep);

    @Select("select dept_name from tbl_dept where dept_id = #{dept_id}")
    public String getNameById(Integer dept_id);

    @Select("select dept_id,dept_name from tbl_dept where dept_id <>#{dept_id}")
    public List<Map<String,Object>> getAllNameByIdExceptOne(Integer dept_id);
}
