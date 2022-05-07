package WebApplication.AirBnb.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import WebApplication.AirBnb.domain.Posts;
import WebApplication.AirBnb.domain.Ratings;
import WebApplication.AirBnb.model.PostDto;

@Repository
public interface PostRepository extends JpaRepository<Posts, Long>{

	@Query("SELECT new WebApplication.AirBnb.model.PostDto(acc.accountId , post.postId, roomTypeInfos.roomTypeInfoId, "
			+ "user.name , user.regisDate , post.postDate , post.title , "
			+ "post.content , hotel.hotelName , post.status , roomTypeInfos.price, location.locationName , "
			+ "hotel.address , roomTypeInfos.area , roomTypeInfos.roomAmount , roomType.roomTypeName , "
			+ "bedType.bedTypeName , user.avatar , user.phoneNumber)"
			+ "from Posts post join post.account acc join acc.user user "
			+ "join post.lstRoomTypeInfos roomTypeInfos "
			+ "join roomTypeInfos.lstBedTypeDetails bedTypeDetails "
			+ "join roomTypeInfos.hotel hotel "
			+ "join roomTypeInfos.roomType roomType "
			+ "join bedTypeDetails.bedType bedType join hotel.location location where post.status = 1 order by post.postId DESC")
	List<PostDto> getAllPost();
	
//	@Query("SELECT new WebApplication.AirBnb.model.PostDto(acc.accountId , post.postId, roomTypeInfos.roomTypeInfoId, "
//			+ "user.name , user.regisDate , post.postDate , post.title , "
//			+ "post.content , hotel.hotelName , post.status , roomTypeInfos.price, location.locationName , "
//			+ "hotel.address , roomTypeInfos.area , roomTypeInfos.roomAmount , roomType.roomTypeName , "
//			+ "bedType.bedTypeName , user.avatar , user.phoneNumber)"
//			+ "from Posts post join post.account acc join acc.user user "
//			+ "join post.lstRoomTypeInfos roomTypeInfos "
//			+ "join roomTypeInfos.lstBedTypeDetails bedTypeDetails "
//			+ "join roomTypeInfos.hotel hotel "
//			+ "join roomTypeInfos.roomType roomType "
//			+ "join bedTypeDetails.bedType bedType join hotel.location location")
//	Page<PostDto> getAllPost(Pageable pageable);
	
	@Query("SELECT new WebApplication.AirBnb.model.PostDto(acc.accountId , post.postId, roomTypeInfos.roomTypeInfoId, "
			+ "user.name, user.regisDate , post.postDate , post.title , "
			+ "post.content , hotel.hotelName , post.status , roomTypeInfos.price, location.locationName , "
			+ "hotel.address , roomTypeInfos.area , roomTypeInfos.roomAmount , roomType.roomTypeName , "
			+ "bedType.bedTypeName , user.avatar , user.phoneNumber)"
			+ "from Posts post join post.account acc join acc.user user "
			+ "join post.lstRoomTypeInfos roomTypeInfos "
			+ "join roomTypeInfos.lstBedTypeDetails bedTypeDetails "
			+ "join roomTypeInfos.hotel hotel "
			+ "join roomTypeInfos.roomType roomType "
			+ "join bedTypeDetails.bedType bedType join hotel.location location "
			+ "where post.status = 1 "
			+ "AND (LOWER(location.locationName) LIKE %:keyword% "
			+ "or LOWER(hotel.hotelName) LIKE %:keyword% "
			+ "or LOWER(roomType.roomTypeName) LIKE %:keyword% "
			+ "or LOWER(bedType.bedTypeName) LIKE %:keyword% "
			+ "or LOWER(post.title) LIKE %:keyword%)")
	List<PostDto> searchPostByKeyWord(@Param("keyword") String keyword);
	
	@Query("SELECT new WebApplication.AirBnb.model.PostDto(acc.accountId , post.postId, roomTypeInfos.roomTypeInfoId, "
			+ "user.name, user.regisDate , post.postDate , post.title , "
			+ "post.content , hotel.hotelName , post.status , roomTypeInfos.price, location.locationName , "
			+ "hotel.address , roomTypeInfos.area , roomTypeInfos.roomAmount , roomType.roomTypeName , "
			+ "bedType.bedTypeName , user.avatar , user.phoneNumber)"
			+ "from Posts post join post.account acc join acc.user user "
			+ "join post.lstRoomTypeInfos roomTypeInfos "
			+ "join roomTypeInfos.lstBedTypeDetails bedTypeDetails "
			+ "join roomTypeInfos.hotel hotel "
			+ "join roomTypeInfos.roomType roomType "
			+ "join bedTypeDetails.bedType bedType join hotel.location location "
			+ "where acc.accountId =:hostId and post.status = 1")
	List<PostDto> listPostByHostId(@Param("hostId") long hostId);
	
	@Query("SELECT new WebApplication.AirBnb.model.PostDto(acc.accountId , post.postId, roomTypeInfos.roomTypeInfoId, "
			+ "user.name , user.regisDate , post.postDate , post.title , "
			+ "post.content , hotel.hotelName , post.status , roomTypeInfos.price, location.locationName , "
			+ "hotel.address , roomTypeInfos.area , roomTypeInfos.roomAmount , roomType.roomTypeName , "
			+ "bedType.bedTypeName, user.avatar , user.phoneNumber)"
			+ "from Posts post join post.account acc join acc.user user "
			+ "join post.lstRoomTypeInfos roomTypeInfos "
			+ "join roomTypeInfos.lstBedTypeDetails bedTypeDetails "
			+ "join roomTypeInfos.hotel hotel "
			+ "join roomTypeInfos.roomType roomType "
			+ "join bedTypeDetails.bedType bedType join hotel.location location where post.status =1 and post.postId = ?1")
	PostDto getPostById(long postId);

	@Transactional
	@Modifying
	@Query("update Posts p set p.status = 0 where p.postId = ?1")
	int deletePost(long postId); 
	
}
