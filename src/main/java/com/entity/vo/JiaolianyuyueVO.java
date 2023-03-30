package com.entity.vo;

import com.entity.JiaolianyuyueEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;


/**
 * 教练预约
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author
 * @email
 * @date 2023-03-06 17:36:53
 */
public class JiaolianyuyueVO  implements Serializable {
	private static final long serialVersionUID = 1L;


	/**
	 * 教练姓名
	 */

	private String jiaolianxingming;

	/**
	 * 场地名称
	 */

	private String changdimingcheng;

	/**
	 * 预约说明
	 */

	private String yuyueshuoming;

	/**
	 * 预约时间
	 */

	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date yuyueshijian;

    /**
     * 预约时段
     */
    private String timeFrame;

	/**
	 * 用户名
	 */

	private String yonghuming;

	/**
	 * 姓名
	 */

	private String xingming;

	/**
	 * 手机
	 */

	private String shouji;


	/**
	 * 设置：教练姓名
	 */

	public void setJiaolianxingming(String jiaolianxingming) {
		this.jiaolianxingming = jiaolianxingming;
	}

	/**
	 * 获取：教练姓名
	 */
	public String getJiaolianxingming() {
		return jiaolianxingming;
	}


	/**
	 * 设置：场地名称
	 */

	public void setChangdimingcheng(String changdimingcheng) {
		this.changdimingcheng = changdimingcheng;
	}

	/**
	 * 获取：场地名称
	 */
	public String getChangdimingcheng() {
		return changdimingcheng;
	}


	/**
	 * 设置：预约说明
	 */

	public void setYuyueshuoming(String yuyueshuoming) {
		this.yuyueshuoming = yuyueshuoming;
	}

	/**
	 * 获取：预约说明
	 */
	public String getYuyueshuoming() {
		return yuyueshuoming;
	}


	/**
	 * 设置：预约时间
	 */

	public void setYuyueshijian(Date yuyueshijian) {
		this.yuyueshijian = yuyueshijian;
	}

	/**
	 * 获取：预约时间
	 */
	public Date getYuyueshijian() {
		return yuyueshijian;
	}


	/**
	 * 设置：用户名
	 */

	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}

	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}


	/**
	 * 设置：姓名
	 */

	public void setXingming(String xingming) {
		this.xingming = xingming;
	}

	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
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


    public String getTimeFrame() {
        return timeFrame;
    }

    public void setTimeFrame(String timeFrame) {
        this.timeFrame = timeFrame;
    }
}
