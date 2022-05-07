package WebApplication.AirBnb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Embeddable
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Ratings implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long ratingId;
	private Long accountId;
	private int starsNumber;
	@Column(columnDefinition = "nvarchar", length = 200)	
	private String comment;
	private String ratingDate;		
	@ManyToOne
	@JoinColumn(name = "post_id")
    private Posts post;
	
	
}
