package xyz.silentflower.util;

import lombok.Data;

import java.util.HashMap;
import java.util.Map;

/**
 * @author SiletFlower
 * @date 2020/3/13 11:38:05
 * @description
 */
@Data
public class Result {
    private Integer code;
    private String msg;
    private static Result result = new Result();

    public static Result success(){
        result.setCode(100);
        result.setMsg("操作成功！");
        return result;
    }

    public static Result fail(){
        result.setCode(200);
        result.setMsg("用户名或密码错误！");
        return result;
    }


}
