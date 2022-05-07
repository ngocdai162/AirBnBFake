package WebApplication.AirBnb.model;
import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomTypeDto {
	private long roomTypeId;
	@NotBlank
	private String roomTypeName;	
}
