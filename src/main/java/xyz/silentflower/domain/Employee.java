package xyz.silentflower.domain;

import lombok.Data;

/**
 * @author SiletFlower
 * @date 2020/3/14 12:42:58
 * @description
 */
@Data
public class Employee{
    private Integer emp_id;
    private String emp_name;
    private String emp_email;
    private String gender;
    private Integer department_id;
    private String dept_name;
}
