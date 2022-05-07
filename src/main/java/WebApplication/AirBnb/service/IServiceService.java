package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import WebApplication.AirBnb.domain.Services;



public interface IServiceService {

	<S extends Services> List<S> findAll(Example<S> example, Sort sort);

	<S extends Services> List<S> findAll(Example<S> example);

	Services getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Services> entities);

	Services getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Services entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Services> entities);

	<S extends Services> boolean exists(Example<S> example);

	<S extends Services> long count(Example<S> example);

	void deleteInBatch(Iterable<Services> entities);

	<S extends Services> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Services> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Services> S saveAndFlush(S entity);

	void flush();

	<S extends Services> List<S> saveAll(Iterable<S> entities);

	Optional<Services> findById(Long id);

	List<Services> findAllById(Iterable<Long> ids);

	List<Services> findAll(Sort sort);

	List<Services> findAll();

	Page<Services> findAll(Pageable pageable);

	<S extends Services> Optional<S> findOne(Example<S> example);

	<S extends Services> S save(S entity);

	

}
