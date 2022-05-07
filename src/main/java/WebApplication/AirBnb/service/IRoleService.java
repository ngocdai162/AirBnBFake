package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import WebApplication.AirBnb.domain.Roles;


public interface IRoleService {

	<S extends Roles> List<S> findAll(Example<S> example, Sort sort);

	<S extends Roles> List<S> findAll(Example<S> example);

	Roles getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Roles> entities);

	Roles getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Roles entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Roles> entities);

	<S extends Roles> boolean exists(Example<S> example);

	<S extends Roles> long count(Example<S> example);

	void deleteInBatch(Iterable<Roles> entities);

	<S extends Roles> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Roles> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Roles> S saveAndFlush(S entity);

	void flush();

	<S extends Roles> List<S> saveAll(Iterable<S> entities);

	Optional<Roles> findById(Long id);

	List<Roles> findAllById(Iterable<Long> ids);

	List<Roles> findAll(Sort sort);

	List<Roles> findAll();

	Page<Roles> findAll(Pageable pageable);

	<S extends Roles> Optional<S> findOne(Example<S> example);

	<S extends Roles> S save(S entity);

	
}
