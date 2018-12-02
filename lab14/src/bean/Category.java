package bean;

import javax.persistence.*;
@Entity
public class Category {
	private Integer id;
	private String name;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)   
	@Column(name = "id", unique = true)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "name", length =255)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
