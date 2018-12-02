package dao;

import java.util.List;
import bean.Category;
import bean.News;


public interface HibernateDao {
	//Category DAO Model
	public void addType(Category c);
	public int deleteType(Category c);
	public void updateType(Category c);
	public List<Category> findType();
	public List<Category> findTypeById(Category c);
	
	//News DAO Model
	public void addNew(News n);
	public int deleteNew(News n);
	public void updateNew(News n);
	public List<News> findNew();
	public List<News> findNewById(News n);
	public List<News> findNewByType(News n);
}
