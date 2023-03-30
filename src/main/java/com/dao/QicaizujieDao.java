package com.dao;

import com.entity.QicaizujieEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QicaizujieVO;
import com.entity.view.QicaizujieView;


/**
 * 器材租借
 * 
 * @author 
 * @email 
 * @date 2023-03-06 17:36:53
 */
public interface QicaizujieDao extends BaseMapper<QicaizujieEntity> {
	
	List<QicaizujieVO> selectListVO(@Param("ew") Wrapper<QicaizujieEntity> wrapper);
	
	QicaizujieVO selectVO(@Param("ew") Wrapper<QicaizujieEntity> wrapper);
	
	List<QicaizujieView> selectListView(@Param("ew") Wrapper<QicaizujieEntity> wrapper);

	List<QicaizujieView> selectListView(Pagination page,@Param("ew") Wrapper<QicaizujieEntity> wrapper);
	
	QicaizujieView selectView(@Param("ew") Wrapper<QicaizujieEntity> wrapper);
	

}
