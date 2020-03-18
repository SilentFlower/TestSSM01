package xyz.silentflower.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xyz.silentflower.domain.Employee;
import xyz.silentflower.service.EmpService;

import java.util.List;

/**
 * @author SiletFlower
 * @date 2020/3/14 12:46:06
 * @description
 */
@Repository
public interface EmpDao {
    @Select("select * from tbl_emp limit #{offset},#{limit}")
    public List<Employee> getAllByPage(@Param("offset")int offset,@Param("limit") int limit);

    @Insert("insert into tbl_emp(emp_name,emp_email,gender,department_id) " +
            "values(#{emp_name},#{emp_email},#{gender},#{department_id})")
    public int InsertEmp(Employee employee);

    @Delete("delete from tbl_emp where emp_id = #{uid}")
    public int DeleteEmp(Integer uid);

    @Update("update tbl_emp set emp_name=#{emp_name}" +
            ",emp_email=#{emp_email},gender=#{gender}" +
            ",department_id=#{department_id} where emp_id=#{emp_id}")
    public int EditEmp(Employee employee);

    @Select("select * from tbl_emp where emp_id = #{emp_id}")
    public Employee getEmpById(Integer emp_id);
}
