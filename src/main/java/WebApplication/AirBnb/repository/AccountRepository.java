package WebApplication.AirBnb.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WebApplication.AirBnb.domain.Accounts;
import WebApplication.AirBnb.model.UserAccDto;
@Repository
public interface AccountRepository extends JpaRepository<Accounts, Long>{
	@Query("SELECT a FROM Accounts a WHERE a.mail = :mail")
	Accounts getAccountByMail(@Param("mail") String mail);
	
	@Query("SELECT a.password FROM Accounts a WHERE a.accountId = :accountId")
	String getPasswordByAccountId(@Param("accountId") Long accountId);
	
	@Query("SELECT r.roleId FROM Accounts a join a.role r WHERE a.accountId = :accountId")
	Long getRoleByAccountId(@Param("accountId") Long accountId);
	
	@Query("SELECT new WebApplication.AirBnb.model.UserAccDto(n.name , n.address , n.sex , n.dateOfBirth , "
			+ "n.CCCD , n.avatar , n.phoneNumber , t.accountId, t.mail, t.password, n.regisDate) from Accounts t join t.user n WHERE t.mail = :mail")
	UserAccDto getUserAccountByMail(@Param("mail") String mail);
	
	@Query("SELECT new WebApplication.AirBnb.model.UserAccDto(n.name , n.address , n.sex , n.dateOfBirth , "
			+ "n.CCCD , n.avatar , n.phoneNumber , t.accountId, t.mail, t.password, n.regisDate) from Accounts t join t.user n WHERE t.accountId = :accountId")
	UserAccDto getUserAccountByAccountId(@Param("accountId") long accountId);
	
	@Query("SELECT new WebApplication.AirBnb.model.UserAccDto(n.name , n.address , n.sex , n.dateOfBirth , "
			+ "n.CCCD , n.avatar , n.phoneNumber , t.accountId, t.mail, t.password, n.regisDate) from Accounts t join t.user n")
	List<UserAccDto> getAllUserAccount();
	
	@Transactional
	@Modifying
	@Query("update Accounts a set a.password = ?1 where a.accountId = ?2")
	int updatePassword(String newPassword,  long accountId);
}

