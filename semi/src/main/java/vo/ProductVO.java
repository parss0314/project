package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class ProductVO {
	int pno;
	String pname;
	String pdesc;
	int price;
	int dcratio;
	String imgfile;
	int quantity;
	int status;
	
}
