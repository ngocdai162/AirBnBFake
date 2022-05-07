package WebApplication.AirBnb.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.Users;
@Repository
public interface UserRepository extends JpaRepository<Users, Long>{
	@Query("SELECT n FROM Users n JOIN Accounts a ON n.account.accountId = a.accountId WHERE a.accountId = :accountID")
	public Users findByAccountId(@Param("accountID") Long accountID);
	
	@Query("SELECT n FROM Users n JOIN Accounts a ON n.account.accountId = a.accountId WHERE a.mail = :mail")
	public Users findByEmail(@Param("mail") String mail);
}
