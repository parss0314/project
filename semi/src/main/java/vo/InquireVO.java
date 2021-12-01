package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class InquireVO {
	int no;
	String title;
	String id;
	String contents;
	int secret;
	String regdate;
	
}
