package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;


import WebApplication.AirBnb.domain.Ratings;


public interface IRatingService {

	<S extends Ratings> List<S> findAll(Example<S> example, Sort sort);

	<S extends Ratings> List<S> findAll(Example<S> example);

	Ratings getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Ratings> entities);

	Ratings getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Ratings entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Ratings> entities);

	<S extends Ratings> boolean exists(Example<S> example);

	<S extends Ratings> long count(Example<S> example);

	void deleteInBatch(Iterable<Ratings> entities);

	<S extends Ratings> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Ratings> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Ratings> S saveAndFlush(S entity);

	void flush();

	<S extends Ratings> List<S> saveAll(Iterable<S> entities);

	Optional<Ratings> findById(Long id);

	List<Ratings> findAllById(Iterable<Long> ids);

	List<Ratings> findAll(Sort sort);

	List<Ratings> findAll();

	Page<Ratings> findAll(Pageable pageable);

	<S extends Ratings> Optional<S> findOne(Example<S> example);

	<S extends Ratings> S save(S entity);

	int getTotalRatingAmountByAccountId(long accountId);

	int getTotalStarNumberByAccountId(long accountId);

	double getAverageStarNumberByAccountId(long accountId);

	

}
