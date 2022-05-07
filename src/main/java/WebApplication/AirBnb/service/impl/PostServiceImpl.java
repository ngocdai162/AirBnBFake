package WebApplication.AirBnb.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import WebApplication.AirBnb.domain.Accounts;
import WebApplication.AirBnb.domain.BedTypeDetailId;
import WebApplication.AirBnb.domain.BedTypeDetails;
import WebApplication.AirBnb.domain.BedTypes;
import WebApplication.AirBnb.domain.Hotels;
import WebApplication.AirBnb.domain.Images;
import WebApplication.AirBnb.domain.Locations;
import WebApplication.AirBnb.domain.Posts;
import WebApplication.AirBnb.domain.Ratings;
import WebApplication.AirBnb.domain.Roles;
import WebApplication.AirBnb.domain.RoomTypeInfos;
import WebApplication.AirBnb.domain.RoomTypes;
import WebApplication.AirBnb.domain.ServiceDetailId;
import WebApplication.AirBnb.domain.ServiceDetails;
import WebApplication.AirBnb.domain.Services;
import WebApplication.AirBnb.domain.Users;
import WebApplication.AirBnb.model.PostDto;
import WebApplication.AirBnb.model.RatingDto;
import WebApplication.AirBnb.model.UserAccDto;
import WebApplication.AirBnb.repository.AccountRepository;
import WebApplication.AirBnb.repository.BedTypeDetailRepository;
import WebApplication.AirBnb.repository.BedTypeRepository;
import WebApplication.AirBnb.repository.HotelRepository;
import WebApplication.AirBnb.repository.ImageRepository;
import WebApplication.AirBnb.repository.PostRepository;
import WebApplication.AirBnb.repository.RatingRepository;
import WebApplication.AirBnb.repository.RoomTypeInfoRepository;
import WebApplication.AirBnb.repository.RoomTypeRepository;
import WebApplication.AirBnb.repository.ServiceDetailRepository;
import WebApplication.AirBnb.repository.ServiceRepository;
import WebApplication.AirBnb.repository.UserRepository;
import WebApplication.AirBnb.service.IPostService;

@Service
public class PostServiceImpl implements IPostService {
	@Autowired
	private PostRepository postRepository;
	@Autowired
	private ImageRepository imageRepository;
	@Autowired
	private RoomTypeInfoRepository roomTypeInfoRepository;
	@Autowired
	private HotelRepository hotelRepository;
	@Autowired
	private BedTypeDetailRepository bedTypeDetailRepository;
	@Autowired
	private ServiceRepository serviceRepository;
	@Autowired
	private ServiceDetailRepository serviceDetailRepository;
	@Autowired
	private RatingRepository ratingRepository;
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public int postDelete(long postId) {
		return postRepository.deletePost(postId);
	}
	
	@Override
	@Transactional(rollbackFor = { Exception.class, Throwable.class })
	public boolean postAdd(PostDto postDto) {
		try {
			// Save post entity
			Posts postEntity = new Posts();
			Accounts account = new Accounts();
			account.setAccountId(postDto.getAccountId());
			postEntity.setAccount(account);// set accountID
			postEntity.setTitle(postDto.getTitle());// setTitle
			postEntity.setContent(postDto.getContent());// setContent
			postEntity.setStatus(1);// setStatus
			Date date = Calendar.getInstance().getTime();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String strDate = dateFormat.format(date);
			postEntity.setPostDate(strDate);// setPostDate = currentDate
			postRepository.save(postEntity);//
			// Save 5 images
			Images imageEntity1 = new Images();
			imageEntity1.setPath(postDto.getImage1());
			imageEntity1.setPost(postEntity);
			imageRepository.save(imageEntity1);// Save first image
			Images imageEntity2 = new Images();
			imageEntity2.setPath(postDto.getImage2());
			imageEntity2.setPost(postEntity);
			imageRepository.save(imageEntity2);// Save second image
			Images imageEntity3 = new Images();
			imageEntity3.setPath(postDto.getImage3());
			imageEntity3.setPost(postEntity);
			imageRepository.save(imageEntity3);// Save third image
			Images imageEntity4 = new Images();
			imageEntity4.setPath(postDto.getImage4());
			imageEntity4.setPost(postEntity);
			imageRepository.save(imageEntity4);// Save fourth image
			Images imageEntity5 = new Images();
			imageEntity5.setPath(postDto.getImage5());
			imageEntity5.setPost(postEntity);
			imageRepository.save(imageEntity5);// Save fifth image
			// Save hotel
			Hotels hotelEntity = new Hotels();
			hotelEntity.setHotelName(postDto.getHotelName());
			hotelEntity.setAddress(postDto.getAddress());
			Locations locationEntity = new Locations();
			locationEntity.setLocationId(postDto.getLocationId());

			hotelEntity.setLocation(locationEntity);
			hotelRepository.save(hotelEntity);
			// Save roomtypeinfos
			RoomTypeInfos roomTypeInfoEntity = new RoomTypeInfos();
			roomTypeInfoEntity.setArea(postDto.getArea());
			roomTypeInfoEntity.setPrice(postDto.getPrice());
			roomTypeInfoEntity.setRoomAmount(postDto.getRoomAmount());
			roomTypeInfoEntity.setHotel(hotelEntity);
			roomTypeInfoEntity.setPost(postEntity);
			RoomTypes roomTypeEntity = new RoomTypes();
			roomTypeEntity.setRoomTypeId(postDto.getRoomTypeId());
			roomTypeInfoEntity.setRoomType(roomTypeEntity);
			roomTypeInfoRepository.save(roomTypeInfoEntity);
			// Save bedTypeDetails
			BedTypeDetailId bedTypeDetailId = new BedTypeDetailId();
			bedTypeDetailId.setBedTypeId(postDto.getBedTypeId());
			bedTypeDetailId.setRoomTypeInfoId(roomTypeInfoEntity.getRoomTypeInfoId());
			BedTypeDetails bedTypeDetailEntity = new BedTypeDetails();
			BedTypes bedTypeEntity = new BedTypes();
			bedTypeEntity.setBedTypeId(postDto.getBedTypeId());
			bedTypeDetailEntity.setBedType(bedTypeEntity);
			bedTypeDetailEntity.setRoomTypeInfo(roomTypeInfoEntity);
			bedTypeDetailEntity.setBedTypeDetailId(bedTypeDetailId);
			bedTypeDetailRepository.save(bedTypeDetailEntity);
			// Save serviceDetail
			for (int i = 0; i < postDto.getLstServiceIds().size(); i++) {
				ServiceDetailId serviceDetailId = new ServiceDetailId();
				serviceDetailId.setRoomTypeInfoId(roomTypeInfoEntity.getRoomTypeInfoId());
				serviceDetailId.setServiceId(postDto.getLstServiceIds().get(i));
				ServiceDetails serviceDetailEntity = new ServiceDetails();
				Services serviceEntity = new Services();
				serviceEntity.setServiceId(postDto.getLstServiceIds().get(i));
				serviceDetailEntity.setRoomTypeInfo(roomTypeInfoEntity);
				serviceDetailEntity.setService(serviceEntity);
				serviceDetailEntity.setDescription("OK");
				serviceDetailEntity.setServiceDetailId(serviceDetailId);
				serviceDetailRepository.save(serviceDetailEntity);
			}
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	@Override
	public List<PostDto> getAllPost() {
		List<PostDto> tempList = new ArrayList<PostDto>();
		tempList = postRepository.getAllPost();
		for (PostDto postDto : tempList) {
			postDto.setLstServiceNames(serviceRepository.getServiceNameByRoomTypeInfoId(postDto.getRomTypeInfoId()));
			List<String> lstImagePath = new ArrayList<String>();
			lstImagePath = imageRepository.getImagePathByPostId(postDto.getPostId());
			if (lstImagePath.size() == 5) {
				postDto.setImage1(lstImagePath.get(0));
				postDto.setImage2(lstImagePath.get(1));
				postDto.setImage3(lstImagePath.get(2));
				postDto.setImage4(lstImagePath.get(3));
				postDto.setImage5(lstImagePath.get(4));
			}
			List<Ratings> lstRatings = ratingRepository.getAllRatingByPostId(postDto.getPostId());
			//postDto.setLstRatings(lstRatings);
			int ratingAmount = 0;
			int totalStarNumber = 0;
			for (Ratings rating : lstRatings) {
				ratingAmount++;
				totalStarNumber += rating.getStarsNumber();
			}

			postDto.setRatingAmount(ratingAmount);
			if (ratingAmount != 0)
				postDto.setAvarageStarNumber(totalStarNumber / ratingAmount);
			else
				postDto.setAvarageStarNumber(0);
		}
		
		
		return tempList;
	}
	
	@Override
	public List<PostDto> searchPostByKeyword(String keyword) {
		List<PostDto> tempList = new ArrayList<PostDto>();
		tempList = postRepository.searchPostByKeyWord(keyword);
		for (PostDto postDto : tempList) {
			postDto.setLstServiceNames(serviceRepository.getServiceNameByRoomTypeInfoId(postDto.getRomTypeInfoId()));
			List<String> lstImagePath = new ArrayList<String>();
			lstImagePath = imageRepository.getImagePathByPostId(postDto.getPostId());
			if (lstImagePath.size() == 5) {
				postDto.setImage1(lstImagePath.get(0));
				postDto.setImage2(lstImagePath.get(1));
				postDto.setImage3(lstImagePath.get(2));
				postDto.setImage4(lstImagePath.get(3));
				postDto.setImage5(lstImagePath.get(4));
			}
			List<Ratings> lstRatings = ratingRepository.getAllRatingByPostId(postDto.getPostId());
//			postDto.setLstRatings(lstRatings);
			int ratingAmount = 0;
			int totalStarNumber = 0;
			for (Ratings rating : lstRatings) {
				ratingAmount++;
				totalStarNumber += rating.getStarsNumber();
			}

			postDto.setRatingAmount(ratingAmount);
			if (ratingAmount != 0)
				postDto.setAvarageStarNumber(totalStarNumber / ratingAmount);
			else
				postDto.setAvarageStarNumber(0);
		}
		return tempList;
	}
	
	@Override
	public List<PostDto> listPostByHostId(long hostId) {
		List<PostDto> tempList = new ArrayList<PostDto>();
		tempList = postRepository.listPostByHostId(hostId);
		for (PostDto postDto : tempList) {
			postDto.setLstServiceNames(serviceRepository.getServiceNameByRoomTypeInfoId(postDto.getRomTypeInfoId()));
			List<String> lstImagePath = new ArrayList<String>();
			lstImagePath = imageRepository.getImagePathByPostId(postDto.getPostId());
			if (lstImagePath.size() == 5) {
				postDto.setImage1(lstImagePath.get(0));
				postDto.setImage2(lstImagePath.get(1));
				postDto.setImage3(lstImagePath.get(2));
				postDto.setImage4(lstImagePath.get(3));
				postDto.setImage5(lstImagePath.get(4));
			}
			List<Ratings> lstRatings = ratingRepository.getAllRatingByPostId(postDto.getPostId());
//			postDto.setLstRatings(lstRatings);
			int ratingAmount = 0;
			int totalStarNumber = 0;
			for (Ratings rating : lstRatings) {
				ratingAmount++;
				totalStarNumber += rating.getStarsNumber();
			}

			postDto.setRatingAmount(ratingAmount);
			if (ratingAmount != 0)
				postDto.setAvarageStarNumber(totalStarNumber / ratingAmount);
			else
				postDto.setAvarageStarNumber(0);
		}
//		tempList.forEach(e->{
//			System.out.println(e);
//		});
		return tempList;
	}


	@Override
	public PostDto getPostById(long postId) {
		PostDto postDto = postRepository.getPostById(postId);
		postDto.setLstServices(serviceRepository.getServiceByRoomTypeInfoId(postDto.getRomTypeInfoId()));
		List<String> lstImagePath = new ArrayList<String>();
		lstImagePath = imageRepository.getImagePathByPostId(postDto.getPostId());
		if (lstImagePath.size() == 5) {
			postDto.setImage1(lstImagePath.get(0));
			postDto.setImage2(lstImagePath.get(1));
			postDto.setImage3(lstImagePath.get(2));
			postDto.setImage4(lstImagePath.get(3));
			postDto.setImage5(lstImagePath.get(4));
		}
		List<Ratings> lstRatings = ratingRepository.getAllRatingByPostId(postDto.getPostId());
		postDto.setLstRatings(lstRatings);
		postDto.setHostRatingAmount(ratingRepository.getTotalRatingAmountByAccountId(postDto.getAccountId()));
//		List<RatingDto> lstRatingDtos = ratingRepository.getAllRatingDtoByPostId(postDto.getPostId());
//		postDto.setLstRatingDtos(lstRatingDtos);
//		for (RatingDto ratingDto : lstRatingDtos) {
//			System.out.print(ratingDto.getStarsNumber()+"star");
//			System.out.print(ratingDto.getComment()+" comment");
//			System.out.print(ratingDto.getUserAvatar()+" avt");
//			System.out.print(ratingDto.getUserName()+" Teen");
//		}
		List<RatingDto> lstRatingDtos = new ArrayList<RatingDto>();
		int ratingAmount = 0;
		int totalStarNumber = 0;
		for (Ratings rating : lstRatings) {
			RatingDto ratingDto = new RatingDto();
			ratingDto.setRatingDate(rating.getRatingDate()); 
			ratingDto.setStarsNumber(rating.getStarsNumber());
			ratingDto.setRatingDate(rating.getRatingDate());
			ratingDto.setComment(rating.getComment());
			Users userEntity = userRepository.findByAccountId(rating.getAccountId());
			ratingDto.setUserName(userEntity.getName());
			ratingDto.setUserAvatar(userEntity.getAvatar());
			lstRatingDtos.add(ratingDto);
			ratingAmount++;
			totalStarNumber += rating.getStarsNumber();
		}
		postDto.setLstRatingDtos(lstRatingDtos);
		lstRatingDtos.forEach(e->{
			System.out.println(e);
		});
		postDto.setRatingAmount(ratingAmount);
		if (ratingAmount != 0)
			postDto.setAvarageStarNumber(totalStarNumber / ratingAmount);
		else
			postDto.setAvarageStarNumber(0);

		return postDto;
	}

	@Override
	public <S extends Posts> S save(S entity) {
		return postRepository.save(entity);
	}

	@Override
	public <S extends Posts> Optional<S> findOne(Example<S> example) {
		return postRepository.findOne(example);
	}

	@Override
	public Page<Posts> findAll(Pageable pageable) {
		return postRepository.findAll(pageable);
	}

	@Override
	public List<Posts> findAll() {
		return postRepository.findAll();
	}

	@Override
	public List<Posts> findAll(Sort sort) {
		return postRepository.findAll(sort);
	}

	@Override
	public List<Posts> findAllById(Iterable<Long> ids) {
		return postRepository.findAllById(ids);
	}

	@Override
	public Optional<Posts> findById(Long id) {
		return postRepository.findById(id);
	}

	@Override
	public <S extends Posts> List<S> saveAll(Iterable<S> entities) {
		return postRepository.saveAll(entities);
	}

	@Override
	public void flush() {
		postRepository.flush();
	}

	@Override
	public <S extends Posts> S saveAndFlush(S entity) {
		return postRepository.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Long id) {
		return postRepository.existsById(id);
	}

	@Override
	public <S extends Posts> List<S> saveAllAndFlush(Iterable<S> entities) {
		return postRepository.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Posts> Page<S> findAll(Example<S> example, Pageable pageable) {
		return postRepository.findAll(example, pageable);
	}

	@Override
	public void deleteInBatch(Iterable<Posts> entities) {
		postRepository.deleteInBatch(entities);
	}

	@Override
	public <S extends Posts> long count(Example<S> example) {
		return postRepository.count(example);
	}

	@Override
	public <S extends Posts> boolean exists(Example<S> example) {
		return postRepository.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Posts> entities) {
		postRepository.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return postRepository.count();
	}

	@Override
	public void deleteById(Long id) {
		postRepository.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Long> ids) {
		postRepository.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Posts entity) {
		postRepository.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		postRepository.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		postRepository.deleteAllInBatch();
	}

	@Override
	public Posts getOne(Long id) {
		return postRepository.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Posts> entities) {
		postRepository.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		postRepository.deleteAll();
	}

	@Override
	public Posts getById(Long id) {
		return postRepository.getById(id);
	}

	@Override
	public <S extends Posts> List<S> findAll(Example<S> example) {
		return postRepository.findAll(example);
	}

	@Override
	public <S extends Posts> List<S> findAll(Example<S> example, Sort sort) {
		return postRepository.findAll(example, sort);
	}

}
