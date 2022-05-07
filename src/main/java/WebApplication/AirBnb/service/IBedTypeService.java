package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import WebApplication.AirBnb.domain.BedTypes;


public interface IBedTypeService {

	<S extends BedTypes> List<S> findAll(Example<S> example, Sort sort);

	<S extends BedTypes> List<S> findAll(Example<S> example);

	BedTypes getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends BedTypes> entities);

	BedTypes getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(BedTypes entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<BedTypes> entities);

	<S extends BedTypes> boolean exists(Example<S> example);

	<S extends BedTypes> long count(Example<S> example);

	void deleteInBatch(Iterable<BedTypes> entities);

	<S extends BedTypes> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends BedTypes> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends BedTypes> S saveAndFlush(S entity);

	void flush();

	<S extends BedTypes> List<S> saveAll(Iterable<S> entities);

	Optional<BedTypes> findById(Long id);

	List<BedTypes> findAllById(Iterable<Long> ids);

	List<BedTypes> findAll(Sort sort);

	List<BedTypes> findAll();

	Page<BedTypes> findAll(Pageable pageable);

	<S extends BedTypes> Optional<S> findOne(Example<S> example);

	<S extends BedTypes> S save(S entity);

	

}
