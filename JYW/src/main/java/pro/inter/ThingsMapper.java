package pro.inter;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pro.model.Things;


public interface ThingsMapper {
    int deleteByPrimaryKey(Integer tId);

    int insert(Things record);
    
    int insertSelective(Things record);

    int getCount();
    
    Things selectByPrimaryKey(Integer tId);

    int updateByPrimaryKeySelective(Things record);

    int updateByPrimaryKey(Things record);
    List<Things>selectByuser(String user);
    List<Things>selecLike(String tname);
    List<Things> selectBytype(@Param("type")String type,@Param("startline")Integer startline,@Param("rows")Integer rows);
    List<Things>findthings(@Param("startline")Integer startline,@Param("pagesize")Integer pagesize);
}