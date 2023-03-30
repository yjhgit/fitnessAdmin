package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 器材租借
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-06 17:36:53
 */
@TableName("qicaizujie")
public class QicaizujieEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public QicaizujieEntity() {
		
	}
	
	public QicaizujieEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 器材名称
	 */
					
	private String qicaimingcheng;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：器材名称
	 */
	public void setQicaimingcheng(String qicaimingcheng) {
		this.qicaimingcheng = qicaimingcheng;
	}
	/**
	 * 获取：器材名称
	 */
	public String getQicaimingcheng() {
		return qicaimingcheng;
	}
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
