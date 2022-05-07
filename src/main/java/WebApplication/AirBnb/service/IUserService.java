package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import WebApplication.AirBnb.domain.Users;




public interface IUserService {

	<S extends Users> List<S> findAll(Example<S> example, Sort sort);

	<S extends Users> List<S> findAll(Example<S> example);

	Users getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Users> entities);

	Users getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Users entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Users> entities);

	<S extends Users> boolean exists(Example<S> example);

	<S extends Users> long count(Example<S> example);

	void deleteInBatch(Iterable<Users> entities);

	<S extends Users> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Users> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Users> S saveAndFlush(S entity);

	void flush();

	<S extends Users> List<S> saveAll(Iterable<S> entities);

	Optional<Users> findById(Long id);

	Optional<Users> findByAccountId(Long id);
	
	Users findByEmail(String mail);
	
	List<Users> findAllById(Iterable<Long> ids);

	List<Users> findAll(Sort sort);

	List<Users> findAll();

	Page<Users> findAll(Pageable pageable);

	<S extends Users> Optional<S> findOne(Example<S> example);

	<S extends Users> S save(S entity);

	

}
