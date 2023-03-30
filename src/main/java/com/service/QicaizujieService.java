package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QicaizujieEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QicaizujieVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QicaizujieView;


/**
 * 器材租借
 *
 * @author 
 * @email 
 * @date 2023-03-06 17:36:53
 */
public interface QicaizujieService extends IService<QicaizujieEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QicaizujieVO> selectListVO(Wrapper<QicaizujieEntity> wrapper);
   	
   	QicaizujieVO selectVO(@Param("ew") Wrapper<QicaizujieEntity> wrapper);
   	
   	List<QicaizujieView> selectListView(Wrapper<QicaizujieEntity> wrapper);
   	
   	QicaizujieView selectView(@Param("ew") Wrapper<QicaizujieEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QicaizujieEntity> wrapper);
   	

}

