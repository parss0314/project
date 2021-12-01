package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CleanerVO {
	
	int pno;
	int code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String regdate;
	int energy;
	String imgfile;
	int power;
	int weight;
	int type;
	String codename;
	String codename2;
	
}