package WebApplication.AirBnb.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Accounts implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long accountId;
	@Column(length = 60,unique = true, nullable = false)
	private String mail;
	@Column(length = 200, nullable = false)
	private String password;

	@ManyToOne
	@JoinColumn(name = "role_id")
	private Roles role;

	@OneToOne(mappedBy = "account")
	private Users user;
	
//	@OneToMany(mappedBy = "account")
//	private List<Posts> lstPosts;
	
}
