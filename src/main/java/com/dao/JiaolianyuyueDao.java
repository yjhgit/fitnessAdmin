package com.dao;

import com.entity.JiaolianyuyueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaolianyuyueVO;
import com.entity.view.JiaolianyuyueView;
import org.apache.ibatis.annotations.Update;


/**
 * 教练预约
 *
 * @author
 * @email
 * @date 2023-03-06 17:36:53
 */
public interface JiaolianyuyueDao extends BaseMapper<JiaolianyuyueEntity> {

	List<JiaolianyuyueVO> selectListVO(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

	JiaolianyuyueVO selectVO(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

	List<JiaolianyuyueView> selectListView(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

	List<JiaolianyuyueView> selectListView(Pagination page,@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

	JiaolianyuyueView selectView(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);


    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

    JiaolianyuyueEntity queryCoachSchedule(@Param("jiaolianyuyue") JiaolianyuyueEntity jiaolianyuyue);

    @Update("update jiaolianyuyue set state = 0 where id = #{id} and userid = #{userId}")
    void cancel(@Param("id")Long id, @Param("userId")Long userId);
}
