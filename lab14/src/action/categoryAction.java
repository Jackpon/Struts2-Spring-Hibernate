package action;
import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import bean.Category;
import dao.HibernateDao;
import dao.HibernateDaoImpl;

public class categoryAction extends ActionSupport {
	private Category category;
	private List<Category> CategoryList;
	private Category editCategory;
	private HibernateDao hibernateDao=new HibernateDaoImpl();
	public String add(){
		hibernateDao.addType(category);
		return SUCCESS;
	}
	public String delete(){
		hibernateDao.deleteType(category);
		return SUCCESS;
	}
	public String update(){
		hibernateDao.updateType(category);
		return SUCCESS;
	}
	public String edit(){
		List<Category> list=hibernateDao.findTypeById(category);
		setEditCategory(list.get(0));
		return SUCCESS;
	}
	public String find(){
		setCategoryList(hibernateDao.findType());
		return "alltype";
	}
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public List<Category> getCategoryList() {
		return CategoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		CategoryList = categoryList;
	}
	public Category getEditCategory() {
		return editCategory;
	}
	public void setEditCategory(Category editCategory) {
		this.editCategory = editCategory;
	}
}
