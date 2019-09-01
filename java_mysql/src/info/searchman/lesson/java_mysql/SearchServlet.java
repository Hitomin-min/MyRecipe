
package info.searchman.lesson.java_mysql;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author otahitomi
 * 検索結果を表示する
 */
public class SearchServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		//文字型の指定
		request.setCharacterEncoding("Windows-31J");

		//index画面でセットした各種値をリクエストからゲットする
		String name = request.getParameter("name");
		//String id = request.getParameter("id"); <-- 自動採番にしたのでコメアウト
		String ingredient = request.getParameter("ingredient");
		String taste = request.getParameter("taste");
		String tpo = request.getParameter("tpo");
		String budget = request.getParameter("budget");
		String color = request.getParameter("color");
		//String url = request.getParameter("url"); <-- 機能していなくて邪魔なだけなのでコメアウト

		try {
			//なんこれ???
			Class.forName("com.mysql.jdbc.Driver");

			//データベースにアクセスする
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/company_db?serverTimezone=UTC&useSSL=false",
					"suser", "spass");
			if (conn == null) {
				request.getRequestDispatcher("/SystemError.jsp").forward(request, response);
			}

			String sql = "select * from recipe";

//Memo_1
			ArrayList<String> conditions = new ArrayList<String>();
			//名前部分一致
			if (name != null && !name.equals("")) {
				conditions.add("name like '%" + name + "%'");
			}
			//味付け部分一致
			if (taste != null && !taste.equals("")) {
				conditions.add("taste like '%" + taste + "%'");
			}
			//予算完全一致
			if (budget != null && !budget.equals("")) {
				conditions.add("budget =" + budget);
			}
			//tpo
			if (tpo != null && !tpo.equals("")) {
				conditions.add("tpo =’" + tpo + "'");
			}
			//色
			if (color != null && !color.equals("")) {
				conditions.add("color =" + color);
			}
			//材料部分一致
			if (ingredient != null && !ingredient.equals("")) {
				conditions.add("ingredient like '%" + ingredient + "%'");
			}
			//
			if (conditions.size() > 0) {
				sql += " where";

				for (int i = 0; i < conditions.size(); i++) {
					String condition = conditions.get(i);

					if (i > 0) {
						sql += " AND ";
					}

					sql += " " + condition;
				}
			}
//Memo_2
			pstmt = conn.prepareStatement(sql);
//Memo_3
			//SQL文の実行結果をrsetに入れる
			rset = pstmt.executeQuery();

			//rsetに入れたSQL文の実行結果をkekkaに入れてリクエストに入れる
			request.setAttribute("kekka", rset);

			//HttpSessionインスタンスの取得（javax.servlet.ttp.HttpSessionをインポートしておく必要がある）
			HttpSession session = request.getSession();

			//セッションスコープにインスタンスを保存
			session.setAttribute("kekka", rset);

			//リクエストに入れたSQL文の実行結果を検索結果画面に飛ばす
			request.getRequestDispatcher("/SearchResult.jsp").forward(request, response);

			rset.close();
			pstmt.close();
			conn.close();

		//検索SQL実行エラー
		} catch (Exception e) {
			e.printStackTrace();
			String status ="検索条件にマッチするデータがありません";
			request.setAttribute("status", status);
			request.getRequestDispatcher("/OperationSucceeded.jsp").forward(request, response);
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
			}
		}
	}
}
