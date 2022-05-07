package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.BedTypeDetails;
import WebApplication.AirBnb.domain.BedTypeDetailId;


@Repository
public interface BedTypeDetailRepository extends JpaRepository<BedTypeDetails, BedTypeDetailId>{

}
