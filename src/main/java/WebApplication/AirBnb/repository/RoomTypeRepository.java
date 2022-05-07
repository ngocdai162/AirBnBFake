package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.RoomTypes;

@Repository
public interface RoomTypeRepository extends JpaRepository<RoomTypes, Long>{

}
