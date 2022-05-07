package WebApplication.AirBnb.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import WebApplication.AirBnb.domain.RoomTypeInfos;
import WebApplication.AirBnb.repository.RoomTypeInfoRepository;
import WebApplication.AirBnb.service.IRoomTypeInfoService;

@Service
public class RoomTypeInfoServiceImpl implements IRoomTypeInfoService{
	@Autowired
	private RoomTypeInfoRepository repository;

	@Override
	public <S extends RoomTypeInfos> S save(S entity) {
		return repository.save(entity);
	}

	@Override
	public <S extends RoomTypeInfos> Optional<S> findOne(Example<S> example) {
		return repository.findOne(example);
	}

	@Override
	public Page<RoomTypeInfos> findAll(Pageable pageable) {
		return repository.findAll(pageable);
	}

	@Override
	public List<RoomTypeInfos> findAll() {
		return repository.findAll();
	}

	@Override
	public List<RoomTypeInfos> findAll(Sort sort) {
		return repository.findAll(sort);
	}

	@Override
	public List<RoomTypeInfos> findAllById(Iterable<Long> ids) {
		return repository.findAllById(ids);
	}

	@Override
	public Optional<RoomTypeInfos> findById(Long id) {
		return repository.findById(id);
	}

	@Override
	public <S extends RoomTypeInfos> List<S> saveAll(Iterable<S> entities) {
		return repository.saveAll(entities);
	}

	@Override
	public void flush() {
		repository.flush();
	}

	@Override
	public <S extends RoomTypeInfos> S saveAndFlush(S entity) {
		return repository.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Long id) {
		return repository.existsById(id);
	}

	@Override
	public <S extends RoomTypeInfos> List<S> saveAllAndFlush(Iterable<S> entities) {
		return repository.saveAllAndFlush(entities);
	}

	@Override
	public <S extends RoomTypeInfos> Page<S> findAll(Example<S> example, Pageable pageable) {
		return repository.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<RoomTypeInfos> entities) {
		repository.deleteInBatch(entities);
	}

	@Override
	public <S extends RoomTypeInfos> long count(Example<S> example) {
		return repository.count(example);
	}

	@Override
	public <S extends RoomTypeInfos> boolean exists(Example<S> example) {
		return repository.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<RoomTypeInfos> entities) {
		repository.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return repository.count();
	}

	@Override
	public void deleteById(Long id) {
		repository.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Long> ids) {
		repository.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(RoomTypeInfos entity) {
		repository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		repository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		repository.deleteAllInBatch();
	}

	@Override
	public RoomTypeInfos getOne(Long id) {
		return repository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends RoomTypeInfos> entities) {
		repository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		repository.deleteAll();
	}

	@Override
	public RoomTypeInfos getById(Long id) {
		return repository.getById(id);
	}

	@Override
	public <S extends RoomTypeInfos> List<S> findAll(Example<S> example) {
		return repository.findAll(example);
	}

	@Override
	public <S extends RoomTypeInfos> List<S> findAll(Example<S> example, Sort sort) {
		return repository.findAll(example, sort);
	}
	
}
