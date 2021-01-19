package com.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity

@Table(name = "tasks")
public class Task {
	@Id
	@GeneratedValue
	private int id;
	private String name;
    @Column(columnDefinition="TINYTEXT")
	private String description;
	private Date startDate;
    private Date endDate;
    private String severity;  
    
   
    @ManyToOne(fetch=FetchType.EAGER)
    private User user;

	@Override
	public String toString() {
		return "Task [id=" + id + ", name=" + name + ", description=" + description + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", severity=" + severity + ", user=" + user + "]";
	}


    
    
}
