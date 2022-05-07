package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.Locations;

@Repository
public interface LocationRepository extends JpaRepository<Locations, Long>{

}
