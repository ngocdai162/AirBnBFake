package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.Hotels;


@Repository
public interface HotelRepository extends JpaRepository<Hotels, Long>{

}
