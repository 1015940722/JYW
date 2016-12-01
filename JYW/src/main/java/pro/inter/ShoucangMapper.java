package pro.inter;

import pro.model.Shoucang;

public interface ShoucangMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Shoucang record);

    int insertSelective(Shoucang record);

    Shoucang selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Shoucang record);

    int updateByPrimaryKey(Shoucang record);
}