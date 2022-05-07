package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;

import javax.security.auth.login.AccountNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import WebApplication.AirBnb.domain.Accounts;
import WebApplication.AirBnb.model.AccountDto;
import WebApplication.AirBnb.model.PostDto;
import WebApplication.AirBnb.model.UserAccDto;
import WebApplication.AirBnb.repository.AccountRepository;


public interface IAccountService  {
	
	<S extends Accounts> List<S> findAll(Example<S> example, Sort sort);

	<S extends Accounts> List<S> findAll(Example<S> example);

	Accounts getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Accounts> entities);

	Accounts getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Accounts entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Accounts> entities);

	<S extends Accounts> boolean exists(Example<S> example);

	<S extends Accounts> long count(Example<S> example);

	void deleteInBatch(Iterable<Accounts> entities);

	<S extends Accounts> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Accounts> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Accounts> S saveAndFlush(S entity);

	void flush();

	<S extends Accounts> List<S> saveAll(Iterable<S> entities);

	Optional<Accounts> findById(Long id);

	List<Accounts> findAllById(Iterable<Long> ids);

	List<Accounts> findAll(Sort sort);

	List<Accounts> findAll();

	Page<Accounts> findAll(Pageable pageable);

	<S extends Accounts> Optional<S> findOne(Example<S> example);

	<S extends Accounts> S save(S entity);

	boolean register(UserAccDto useracc);

	UserAccDto login(AccountDto account);
	
	boolean updateUserInfo(UserAccDto useracc);

	UserAccDto getUserAccountByMail(String email);

	UserAccDto getUserAccountByAccountId(long accountId);

	Accounts getAccountByMail(String email);

	Boolean changePassword(String oldPassword, String newPassword, long accountId);

	List<UserAccDto> getAllUserAccount();


}
