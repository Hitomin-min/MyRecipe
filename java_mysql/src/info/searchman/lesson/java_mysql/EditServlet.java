package info.searchman.lesson.java_mysql;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author otahitomi
 *　登録済みのレシピ情報を変更する
 */

public class EditServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("Windows-31J");
		//「mode」としてまとめて登録しておいた 登録/削除/変更 の情報を取得
		String mode1 = request.getParameter("mode1");
		//mode2には「検索結果」→「削除対象（全項目）」が入っている
		String mode2 = request.getParameter("mode2");
		String mode3 = request.getParameter("mode3");

		//「original」として取っておいた元データを取得
		//		String original = request.getParameter("original");

		//成功した時の表示メッセージを初期値に設定
		String status = "が完了しました";
		//＊modeがあるのになぜリスエストをセットしてる？
		//入力値をrecipeにセット
		RecipeBeans recipe = new RecipeBeans(request);

		if(request.getParameter("updateButton") != null || request.getParameter("updateConfButton") != null) {
			switch (mode1) {

			case "updateInput"://変更情報入力フォーム画面の表示
				//recipeにセットした検索結果のレシピ情報をレシピ変更画面に飛ばす
				request.setAttribute("recipe", recipe);
				request.getRequestDispatcher("/RecipeUpdate.jsp").forward(request, response);
				return;

			case "update"://変更SQL実行
				if (recipe.updateData() == false) {
					request.getRequestDispatcher("/SystemError.jsp").forward(request, response);
				}else {
					status = "変更" + status;
					request.setAttribute("status", status);
					request.getRequestDispatcher("/OperationSucceeded.jsp").forward(request, response);
				}break;

				//			if (!(recipe.deleteData() && recipe.addData())) {
			}
		}else if(request.getParameter("deleteButton") != null || request.getParameter("deleteConfButton") != null){
			switch(mode2) {

			case "deleteConfirm":
				request.setAttribute("recipe", recipe);
				//requestに入ったmode2の値を削除確認画面に渡している
				request.getRequestDispatcher("/DeleteConf.jsp").forward(request, response);
				return;

			case "delete": // 削除
				if (recipe.deleteData() == false) {
					request.getRequestDispatcher("/SystemError.jsp").forward(request, response);
				}else {
					status = "削除" + status;
					request.setAttribute("status", status);
					request.getRequestDispatcher("/OperationSucceeded.jsp").forward(request, response);
				}break;
			}
		}else if(request.getParameter("addButton") != null) {
			switch(mode3) {
			case "add": //登録
				if (recipe.addData() == false) {
					request.getRequestDispatcher("/SystemError.jsp").forward(request, response);
				}else {
					status = "登録" + status;
					request.setAttribute("status", status);
					request.getRequestDispatcher("/OperationSucceeded.jsp").forward(request, response);
				}break;
			}
		}
	}
	//doGetの追加
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request, response);
		}
}
