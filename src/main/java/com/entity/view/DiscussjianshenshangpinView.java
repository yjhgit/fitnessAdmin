package com.entity.view;

import com.entity.DiscussjianshenshangpinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 健身商品评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-06 17:36:54
 */
@TableName("discussjianshenshangpin")
public class DiscussjianshenshangpinView  extends DiscussjianshenshangpinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussjianshenshangpinView(){
	}
 
 	public DiscussjianshenshangpinView(DiscussjianshenshangpinEntity discussjianshenshangpinEntity){
 	try {
			BeanUtils.copyProperties(this, discussjianshenshangpinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
