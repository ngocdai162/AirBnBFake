package WebApplication.AirBnb.service;


import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import WebApplication.AirBnb.domain.RoomTypeInfos;


public interface IRoomTypeInfoService {

	<S extends RoomTypeInfos> List<S> findAll(Example<S> example, Sort sort);

	<S extends RoomTypeInfos> List<S> findAll(Example<S> example);

	RoomTypeInfos getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends RoomTypeInfos> entities);

	RoomTypeInfos getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(RoomTypeInfos entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<RoomTypeInfos> entities);

	<S extends RoomTypeInfos> boolean exists(Example<S> example);

	<S extends RoomTypeInfos> long count(Example<S> example);

	void deleteInBatch(Iterable<RoomTypeInfos> entities);

	<S extends RoomTypeInfos> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends RoomTypeInfos> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends RoomTypeInfos> S saveAndFlush(S entity);

	void flush();

	<S extends RoomTypeInfos> List<S> saveAll(Iterable<S> entities);

	Optional<RoomTypeInfos> findById(Long id);

	List<RoomTypeInfos> findAllById(Iterable<Long> ids);

	List<RoomTypeInfos> findAll(Sort sort);

	List<RoomTypeInfos> findAll();

	Page<RoomTypeInfos> findAll(Pageable pageable);

	<S extends RoomTypeInfos> Optional<S> findOne(Example<S> example);

	<S extends RoomTypeInfos> S save(S entity);

	

}
