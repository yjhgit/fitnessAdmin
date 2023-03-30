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
 * 健身器材
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-06 17:36:53
 */
@TableName("jianshenqicai")
public class JianshenqicaiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JianshenqicaiEntity() {
		
	}
	
	public JianshenqicaiEntity(T t) {
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
	 * 器材编号
	 */
					
	private String qicaibianhao;
	
	/**
	 * 器材名称
	 */
					
	private String qicaimingcheng;
	
	/**
	 * 器材类型
	 */
					
	private String qicaileixing;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 器材介绍
	 */
					
	private String qicaijieshao;
	
	/**
	 * 单限
	 */
					
	private Integer onelimittimes;
	
	/**
	 * 库存
	 */
					
	private Integer alllimittimes;
	
	/**
	 * 价格
	 */
					
	private Float price;
	
	/**
	 * 会员价
	 */
					
	private Float vipprice;
	
	
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
	 * 设置：器材编号
	 */
	public void setQicaibianhao(String qicaibianhao) {
		this.qicaibianhao = qicaibianhao;
	}
	/**
	 * 获取：器材编号
	 */
	public String getQicaibianhao() {
		return qicaibianhao;
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
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：器材介绍
	 */
	public void setQicaijieshao(String qicaijieshao) {
		this.qicaijieshao = qicaijieshao;
	}
	/**
	 * 获取：器材介绍
	 */
	public String getQicaijieshao() {
		return qicaijieshao;
	}
	/**
	 * 设置：单限
	 */
	public void setOnelimittimes(Integer onelimittimes) {
		this.onelimittimes = onelimittimes;
	}
	/**
	 * 获取：单限
	 */
	public Integer getOnelimittimes() {
		return onelimittimes;
	}
	/**
	 * 设置：库存
	 */
	public void setAlllimittimes(Integer alllimittimes) {
		this.alllimittimes = alllimittimes;
	}
	/**
	 * 获取：库存
	 */
	public Integer getAlllimittimes() {
		return alllimittimes;
	}
	/**
	 * 设置：价格
	 */
	public void setPrice(Float price) {
		this.price = price;
	}
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
	/**
	 * 设置：会员价
	 */
	public void setVipprice(Float vipprice) {
		this.vipprice = vipprice;
	}
	/**
	 * 获取：会员价
	 */
	public Float getVipprice() {
		return vipprice;
	}

}
