package WebApplication.AirBnb.service;

import org.springframework.stereotype.Service;

import WebApplication.AirBnb.model.PaginatesDto;
@Service
public interface IPaginatesService {

	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}
