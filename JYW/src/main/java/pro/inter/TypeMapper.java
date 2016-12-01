package pro.inter;

import pro.model.Type;

public interface TypeMapper {
    int deleteByPrimaryKey(Integer tpId);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer tpId);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
}