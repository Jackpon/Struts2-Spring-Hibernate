package bean;

import java.util.Date;

import javax.persistence.*;
@Entity
public class News {
	private Integer id;
	private String title;
	private String content;
	private Date time;
	private String type;
	private String wherefrom;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)   
	@Column(name = "id", unique = true)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "title", length =255)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name = "content", length =255)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	@Column(name = "time", length =255)
	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
	@Column(name = "type", length =255)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	@Column(name = "wherefrom", length =255)
	public String getWherefrom() {
		return wherefrom;
	}

	public void setWherefrom(String wherefrom) {
		this.wherefrom = wherefrom;
	}
	

}
