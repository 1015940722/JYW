package pro.inter;

import java.util.List;

import javax.annotation.security.PermitAll;

import org.apache.ibatis.annotations.Param;

import pro.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    int updatePassw(@Param("repassw")String repassw,@Param("uname")String uname);
    User matchUser(@Param("username")String username,@Param("password")String password);
    void batchDeletes(List delList);
}