package WebApplication.AirBnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaginatesDto {
	private int currentPage, limit, start, end, totalPage;
}
