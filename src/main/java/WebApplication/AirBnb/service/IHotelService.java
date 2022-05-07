package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import WebApplication.AirBnb.domain.Hotels;

public interface IHotelService {

	<S extends Hotels> List<S> findAll(Example<S> example, Sort sort);

	<S extends Hotels> List<S> findAll(Example<S> example);

	Hotels getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Hotels> entities);

	Hotels getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Hotels entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Hotels> entities);

	<S extends Hotels> boolean exists(Example<S> example);

	<S extends Hotels> long count(Example<S> example);

	void deleteInBatch(Iterable<Hotels> entities);

	<S extends Hotels> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Hotels> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Hotels> S saveAndFlush(S entity);

	void flush();

	<S extends Hotels> List<S> saveAll(Iterable<S> entities);

	Optional<Hotels> findById(Long id);

	List<Hotels> findAllById(Iterable<Long> ids);

	List<Hotels> findAll(Sort sort);

	List<Hotels> findAll();

	Page<Hotels> findAll(Pageable pageable);

	<S extends Hotels> Optional<S> findOne(Example<S> example);

	<S extends Hotels> S save(S entity);

	
}
