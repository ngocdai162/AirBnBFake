package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.BedTypes;

@Repository
public interface BedTypeRepository extends JpaRepository<BedTypes, Long>{

}
