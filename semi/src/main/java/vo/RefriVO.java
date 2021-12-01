package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class RefriVO {

	int pno;
	int code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String regdate;
	int energy;
	String imgfile;
	int door;
	int volume;
	String codename;
	String codename2;
	String pricegrade;
	String volumegrade;
	
}