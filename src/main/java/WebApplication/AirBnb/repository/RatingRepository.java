package WebApplication.AirBnb.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.Ratings;
import WebApplication.AirBnb.model.RatingDto;
@Repository
public interface RatingRepository extends JpaRepository<Ratings, Long>{

	@Query(value="select * from ratings as r where r.post_id = ?1", nativeQuery = true)
	List<Ratings> getAllRatingByPostId(long postId);
	
	@Query(value="select sum(r.stars_number) from ratings as r, posts as p, accounts as a where r.post_id = p.post_id and p.account_id = a.account_id and a.account_id = ?1", nativeQuery = true)
	int getTotalStarNumberByAccountId(long accountId);
	
	@Query(value="select count(*) from ratings as r, posts as p, accounts as a where r.post_id = p.post_id and p.account_id = a.account_id and a.account_id = ?1", nativeQuery = true)
	int getTotalRatingAmountByAccountId(long accountId);
	
}
