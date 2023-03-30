package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.QicaizujieDao;
import com.entity.QicaizujieEntity;
import com.service.QicaizujieService;
import com.entity.vo.QicaizujieVO;
import com.entity.view.QicaizujieView;

@Service("qicaizujieService")
public class QicaizujieServiceImpl extends ServiceImpl<QicaizujieDao, QicaizujieEntity> implements QicaizujieService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QicaizujieEntity> page = this.selectPage(
                new Query<QicaizujieEntity>(params).getPage(),
                new EntityWrapper<QicaizujieEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QicaizujieEntity> wrapper) {
		  Page<QicaizujieView> page =new Query<QicaizujieView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QicaizujieVO> selectListVO(Wrapper<QicaizujieEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QicaizujieVO selectVO(Wrapper<QicaizujieEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QicaizujieView> selectListView(Wrapper<QicaizujieEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QicaizujieView selectView(Wrapper<QicaizujieEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
