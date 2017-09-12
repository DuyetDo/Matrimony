package com.fpt.aptech.matrimony.model;
// Generated Sep 11, 2017 11:39:01 PM by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Fee generated by hbm2java
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "FEE", catalog = "matrimony")
public class Fee implements java.io.Serializable {

	private Integer id;
	private String type;
	private Double value;

	public Fee() {
	}

	public Fee(String type, Double value) {
		this.type = type;
		this.value = value;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "type", length = 45)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "value", precision = 22, scale = 0)
	public Double getValue() {
		return this.value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

}
