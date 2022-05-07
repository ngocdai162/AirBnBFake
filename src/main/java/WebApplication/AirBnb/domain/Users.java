package WebApplication.AirBnb.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Nationalized;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class Users implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long userId;
	@NotNull
	@Nationalized
	private String name;
	@Column(columnDefinition = "nvarchar")
	private String address;
	@Column(columnDefinition = "nvarchar")
	private String sex;	
	private String dateOfBirth;
	private String CCCD;
	private String avatar;
	private String regisDate;
	@NotNull
	private String phoneNumber;
	
	@OneToOne
	@JoinColumn(name = "account_id")
	private Accounts account;
	
}
