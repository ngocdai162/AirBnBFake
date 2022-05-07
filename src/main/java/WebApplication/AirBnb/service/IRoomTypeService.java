package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import WebApplication.AirBnb.domain.RoomTypes;



public interface IRoomTypeService {

	<S extends RoomTypes> List<S> findAll(Example<S> example, Sort sort);

	<S extends RoomTypes> List<S> findAll(Example<S> example);

	RoomTypes getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends RoomTypes> entities);

	RoomTypes getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(RoomTypes entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<RoomTypes> entities);

	<S extends RoomTypes> boolean exists(Example<S> example);

	<S extends RoomTypes> long count(Example<S> example);

	void deleteInBatch(Iterable<RoomTypes> entities);

	<S extends RoomTypes> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends RoomTypes> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends RoomTypes> S saveAndFlush(S entity);

	void flush();

	<S extends RoomTypes> List<S> saveAll(Iterable<S> entities);

	Optional<RoomTypes> findById(Long id);

	List<RoomTypes> findAllById(Iterable<Long> ids);

	List<RoomTypes> findAll(Sort sort);

	List<RoomTypes> findAll();

	Page<RoomTypes> findAll(Pageable pageable);

	<S extends RoomTypes> Optional<S> findOne(Example<S> example);

	<S extends RoomTypes> S save(S entity);

	

}
