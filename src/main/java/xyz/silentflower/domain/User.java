package xyz.silentflower.domain;

import lombok.Data;
import org.springframework.context.annotation.Bean;

/**
 * @author SiletFlower
 * @date 2020/3/8 01:56:38
 * @description
 */
@Data
public class User {
    private String username;
    private String password;
}
