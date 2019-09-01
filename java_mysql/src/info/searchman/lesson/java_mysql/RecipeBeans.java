package info.searchman.lesson.java_mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

public class RecipeBeans {

	private String id;
	private String name;
	private String ingredient;
	private String taste;
	private String tpo;
	private int budget;
	private String color;
	private String url;

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private DataSource ds = null;

	//フォームから入力値を受け取ってビーンズにセット
	public RecipeBeans(HttpServletRequest request) {

		setId(request.getParameter("id"));
		setName(request.getParameter("name"));
		setIngredient(request.getParameter("ingredient"));
		setTaste(request.getParameter("taste"));
		setTpo(request.getParameter("tpo"));

		//予算がnullだと、パースイントするものがねえよ？って言われちゃうから
//		setBudget( budget =request.getParameter("budget");
//		if (stringBudget == null) {
//			budget = Integer. parseInt (stringBudget);
//			budget = 0;
//		}else {
//			System.out.println("**"+ stringBudget + "**");
//			budget = Integer. parseInt (stringBudget);
//			budget = 0;
//		}

		setBudget(Integer. parseInt(request.getParameter("budget")));
		setColor(request.getParameter("color"));
		setUrl(request.getParameter("url"));
	}


	private void doDataBase(String sql) throws Exception {

		InitialContext ic = new InitialContext();
		ds = (DataSource) ic.lookup("java:comp/env/jdbc/searchman?useSSL=false");
		conn = ds.getConnection();

//		System.out.println(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.execute();

		pstmt.close();
		conn.close();
	}

	// getter setter
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIngredient() {
		return ingredient;
	}



	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}



	public String getTaste() {
		return taste;
	}



	public void setTaste(String taste) {
		this.taste = taste;
	}



	public String getTpo() {
		return tpo;
	}



	public void setTpo(String tpo) {
		this.tpo = tpo;
	}



	public int getBudget() {
		return budget;
	}



	public void setBudget(int budget) {
		this.budget = budget;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public String getUrl() {
		return url;
	}



	public void setUrl(String url) {
		this.url = url;
	}

	// 登録
	public Boolean addData() {
		try {
			String sql = "insert into recipe (name, ingredient, taste, tpo, budget, color, url) values ('" + name + "','"
					+ ingredient + "','" + taste + "','" + tpo + "','" + budget + "','" + color + "','" + url + "')";
			System.out.println(sql);
			doDataBase(sql);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

    // 削除
	public Boolean deleteData() {
		try {
			String sql = "delete from recipe where id=" + id;
			doDataBase(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	//変更
	public Boolean updateData() {
		try {
			String sql = "update recipe set name='"+ name + "', ingredient='" + ingredient + "', taste='" + taste + "', tpo='" + tpo + "', budget='" + budget + "', color='" + color + "', url='" + url + "' where id =" + id ;
			System.out.println("実行予定のSQL文：" + sql);
			doDataBase(sql);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
