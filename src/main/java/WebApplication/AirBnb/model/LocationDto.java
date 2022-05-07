package WebApplication.AirBnb.model;


import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LocationDto  {
	private long locationId;
	@NotBlank
	private String locationName;
	
	
}
