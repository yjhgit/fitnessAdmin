package com.entity.model;

import com.entity.QicaizujieEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 器材租借
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-06 17:36:53
 */
public class QicaizujieModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 器材类型
	 */
	
	private String qicaileixing;
		
	/**
	 * 租借数量
	 */
	
	private Integer zujieshuliang;
		
	/**
	 * 租赁时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date zulinshijian;
		
	/**
	 * 租赁说明
	 */
	
	private String zulinshuoming;
		
	/**
	 * 租借人
	 */
	
	private String zujieren;
		
	/**
	 * 手机
	 */
	
	private String shouji;
		
	/**
	 * 状态
	 */
	
	private String zhuangtai;
				
	
	/**
	 * 设置：器材类型
	 */
	 
	public void setQicaileixing(String qicaileixing) {
		this.qicaileixing = qicaileixing;
	}
	
	/**
	 * 获取：器材类型
	 */
	public String getQicaileixing() {
		return qicaileixing;
	}
				
	
	/**
	 * 设置：租借数量
	 */
	 
	public void setZujieshuliang(Integer zujieshuliang) {
		this.zujieshuliang = zujieshuliang;
	}
	
	/**
	 * 获取：租借数量
	 */
	public Integer getZujieshuliang() {
		return zujieshuliang;
	}
				
	
	/**
	 * 设置：租赁时间
	 */
	 
	public void setZulinshijian(Date zulinshijian) {
		this.zulinshijian = zulinshijian;
	}
	
	/**
	 * 获取：租赁时间
	 */
	public Date getZulinshijian() {
		return zulinshijian;
	}
				
	
	/**
	 * 设置：租赁说明
	 */
	 
	public void setZulinshuoming(String zulinshuoming) {
		this.zulinshuoming = zulinshuoming;
	}
	
	/**
	 * 获取：租赁说明
	 */
	public String getZulinshuoming() {
		return zulinshuoming;
	}
				
	
	/**
	 * 设置：租借人
	 */
	 
	public void setZujieren(String zujieren) {
		this.zujieren = zujieren;
	}
	
	/**
	 * 获取：租借人
	 */
	public String getZujieren() {
		return zujieren;
	}
				
	
	/**
	 * 设置：手机
	 */
	 
	public void setShouji(String shouji) {
		this.shouji = shouji;
	}
	
	/**
	 * 获取：手机
	 */
	public String getShouji() {
		return shouji;
	}
				
	
	/**
	 * 设置：状态
	 */
	 
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	
	/**
	 * 获取：状态
	 */
	public String getZhuangtai() {
		return zhuangtai;
	}
			
}
