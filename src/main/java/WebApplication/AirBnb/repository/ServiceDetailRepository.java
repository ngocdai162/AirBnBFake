package WebApplication.AirBnb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import WebApplication.AirBnb.domain.ServiceDetails;
import WebApplication.AirBnb.domain.ServiceDetailId;


@Repository
public interface ServiceDetailRepository extends JpaRepository<ServiceDetails, ServiceDetailId>{

}
