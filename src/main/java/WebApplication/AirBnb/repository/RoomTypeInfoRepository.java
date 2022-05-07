package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.RoomTypeInfos;
@Repository
public interface RoomTypeInfoRepository extends JpaRepository<RoomTypeInfos, Long>{

}
