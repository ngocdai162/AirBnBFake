package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import WebApplication.AirBnb.domain.Locations;

public interface ILocationService {

	<S extends Locations> List<S> findAll(Example<S> example, Sort sort);

	<S extends Locations> List<S> findAll(Example<S> example);

	Locations getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Locations> entities);

	Locations getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Locations entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Locations> entities);

	<S extends Locations> boolean exists(Example<S> example);

	<S extends Locations> long count(Example<S> example);

	void deleteInBatch(Iterable<Locations> entities);

	<S extends Locations> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Locations> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Locations> S saveAndFlush(S entity);

	void flush();

	<S extends Locations> List<S> saveAll(Iterable<S> entities);

	Optional<Locations> findById(Long id);

	List<Locations> findAllById(Iterable<Long> ids);

	List<Locations> findAll(Sort sort);

	List<Locations> findAll();

	Page<Locations> findAll(Pageable pageable);

	<S extends Locations> Optional<S> findOne(Example<S> example);

	<S extends Locations> S save(S entity);

	

}
