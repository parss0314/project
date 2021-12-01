package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ComputerVO {

	int pno;
	int code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String regdate;
	int energy;
	String imgfile;
	String cpu;
	String ram;
	int weight;
	int psize;
	String codename;
	String codename2;
	
}