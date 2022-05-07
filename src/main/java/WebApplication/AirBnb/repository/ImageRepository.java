package WebApplication.AirBnb.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import WebApplication.AirBnb.domain.Images;
@Repository
public interface ImageRepository extends JpaRepository<Images, Long>{
	
	@Query("SELECT images.path from Posts post join post.lstImages images WHERE post.postId = :postId")
	List<String> getImagePathByPostId(@Param("postId") long postId);
}
