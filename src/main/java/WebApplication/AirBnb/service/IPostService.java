package WebApplication.AirBnb.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import WebApplication.AirBnb.domain.Posts;
import WebApplication.AirBnb.model.PostDto;

public interface IPostService {

	<S extends Posts> List<S> findAll(Example<S> example, Sort sort);

	<S extends Posts> List<S> findAll(Example<S> example);

	Posts getById(Long id);

	void deleteAll();

	void deleteAll(Iterable<? extends Posts> entities);

	Posts getOne(Long id);

	void deleteAllInBatch();

	void deleteAllById(Iterable<? extends Long> ids);

	void delete(Posts entity);

	void deleteAllByIdInBatch(Iterable<Long> ids);

	void deleteById(Long id);

	long count();

	void deleteAllInBatch(Iterable<Posts> entities);

	<S extends Posts> boolean exists(Example<S> example);

	<S extends Posts> long count(Example<S> example);

	void deleteInBatch(Iterable<Posts> entities);

	<S extends Posts> Page<S> findAll(Example<S> example, Pageable pageable);

	<S extends Posts> List<S> saveAllAndFlush(Iterable<S> entities);

	boolean existsById(Long id);

	<S extends Posts> S saveAndFlush(S entity);

	void flush();

	<S extends Posts> List<S> saveAll(Iterable<S> entities);

	Optional<Posts> findById(Long id);

	List<Posts> findAllById(Iterable<Long> ids);

	List<Posts> findAll(Sort sort);

	List<Posts> findAll();

	Page<Posts> findAll(Pageable pageable);

	<S extends Posts> Optional<S> findOne(Example<S> example);

	<S extends Posts> S save(S entity);

	boolean postAdd(PostDto postDto);

	List<PostDto> getAllPost();

	PostDto getPostById(long postId);

	List<PostDto> searchPostByKeyword(String keyword);

	List<PostDto> listPostByHostId(long hostId);

	int postDelete(long postId);

	

	

}
