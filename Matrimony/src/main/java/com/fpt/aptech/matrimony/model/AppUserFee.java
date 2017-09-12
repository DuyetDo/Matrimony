package com.fpt.aptech.matrimony.model;
// Generated Sep 11, 2017 11:39:01 PM by Hibernate Tools 5.2.3.Final

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * AppUserFee generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "APP_USER_FEE", catalog = "matrimony")
public class AppUserFee implements java.io.Serializable {

	private long id;
	private String ssoId;
	private int feeId;
	private Date createDatetime;
	private Double value;

	public AppUserFee() {
	}

	public AppUserFee(long id, String ssoId, int feeId) {
		this.id = id;
		this.ssoId = ssoId;
		this.feeId = feeId;
	}

	public AppUserFee(long id, String ssoId, int feeId, Date createDatetime, Double value) {
		this.id = id;
		this.ssoId = ssoId;
		this.feeId = feeId;
		this.createDatetime = createDatetime;
		this.value = value;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public long getId() {
		return this.id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "sso_id", nullable = false, length = 30)
	public String getSsoId() {
		return this.ssoId;
	}

	public void setSsoId(String ssoId) {
		this.ssoId = ssoId;
	}

	@Column(name = "fee_id", nullable = false)
	public int getFeeId() {
		return this.feeId;
	}

	public void setFeeId(int feeId) {
		this.feeId = feeId;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_datetime", length = 19)
	public Date getCreateDatetime() {
		return this.createDatetime;
	}

	public void setCreateDatetime(Date createDatetime) {
		this.createDatetime = createDatetime;
	}

	@Column(name = "value", precision = 22, scale = 0)
	public Double getValue() {
		return this.value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

}
