package WebApplication.AirBnb.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountDto {
	
	//private Long IDTaiKhoan;	
	
	private String Mail;
	private String Password;
	//private int idQuyen;
//	@ManyToOne
//	@JoinColumn(name = "idquyen")
//	private Quyen Quyen;
//
//	@OneToOne(mappedBy = "TaiKhoan")
//	private NguoiDung NguoiDung;
//	
//	@OneToMany(mappedBy = "TaiKhoan")
//	private List<Tin> lstTin;
}
