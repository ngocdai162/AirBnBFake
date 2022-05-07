package WebApplication.AirBnb.domain;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class RoomTypeInfos implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long roomTypeInfoId;
	private int roomAmount;
	private Double area;
	private Double price;
	@OneToMany(mappedBy = "roomTypeInfo")
    private List<BedTypeDetails> lstBedTypeDetails;
	
	@OneToMany(mappedBy = "service")
    private List<ServiceDetails> lstServiceDetails;
	
	@ManyToOne
	@JoinColumn(name = "hotelId")
	private Hotels hotel;
	
	@ManyToOne
	@JoinColumn(name = "roomTypeId")
	private RoomTypes roomType;
		
	@ManyToOne
	@JoinColumn(name = "post_id")
	private Posts post;
	
}
