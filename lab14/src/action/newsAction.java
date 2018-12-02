package action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import bean.Category;
import bean.News;
import dao.HibernateDao;
import dao.HibernateDaoImpl;

public class newsAction extends ActionSupport {
	private News news;
	private List<Category> CategoryList;
	private List<News> NewsList;
	private News editNews;
	private HibernateDao hibernateDao=new HibernateDaoImpl();
	public String add(){
		Timestamp d= new Timestamp(System.currentTimeMillis());
		news.setTime(d);
		hibernateDao.addNew(news);
		return SUCCESS;
	}
	public String delete(){
		hibernateDao.deleteNew(news);
		return SUCCESS;
	}
	public String update(){
		Timestamp d= new Timestamp(System.currentTimeMillis());
		news.setTime(d);
		hibernateDao.updateNew(news);
		return SUCCESS;
	}
	public String find(){
		setNewsList(hibernateDao.findNew());
		setCategoryList(hibernateDao.findType());
		return SUCCESS;
	}
	public String findByType() {
		setNewsList(hibernateDao.findNewByType(news));
		setCategoryList(hibernateDao.findType());
		return "findbytype";
	}
	public String push(){
		setCategoryList(hibernateDao.findType());
		return "push";
	}
	public String edit(){
		List<News> list=hibernateDao.findNewById(news);
		setEditNews(list.get(0));
		setCategoryList(hibernateDao.findType());
		return SUCCESS;
	}
	public String see(){
		List<News> list=hibernateDao.findNewById(news);
		setEditNews(list.get(0));
		return SUCCESS;
	}
	
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	public List<Category> getCategoryList() {
		return CategoryList;
	}
	public void setCategoryList(List<Category> categoryList) {
		CategoryList = categoryList;
	}
	public List<News> getNewsList() {
		return NewsList;
	}
	public void setNewsList(List<News> newsList) {
		NewsList = newsList;
	}
	public News getEditNews() {
		return editNews;
	}
	public void setEditNews(News editNews) {
		this.editNews = editNews;
	}
	
}
