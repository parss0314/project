package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class WashingVO {

	int pno;
	int code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String regdate;
	int energy;
	String imgfile;
	String ptype;
	int liter;
	String codename;
	String codename2;
	
}