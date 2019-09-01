package info.searchman.lesson.java_mysql;

public class TmpMemo {

//SearchServlet

	//Memo_1

			//シンプルに修正前の複数検索グチャコード
		//	if(name != null && !name.equals("") && taste != null && !taste.equals("")) {
		//		sql += " where name like '%" + name + "%' AND taste like '%" + taste + "%'";
		//	}else if (name != null && !name.equals("")) {
		//		sql += " where name like '%" + name + "%'";
		//	}else if(taste != null && !taste.equals("")) {
		//		sql += " where taste like '%" + taste + "%'";
		//	}
		/*プリペアードステイト使いたい <-- 失敗して一旦放置
		//	ArrayList<String> conditions = new ArrayList<String>();
		//
		//	if (name != null && !name.equals("")) {
		//		conditions.add("name like '%?%'");
		//	}
		//
		//	if (taste != null && !taste.equals("")) {
		//		conditions.add("taste like '%?%'");
		//	}
		//
		//	if (conditions.size() > 0) {
		////		sql += " where " + String.join(" AND ", conditions);
		//		sql += " where";
		//
		//		for (int i = 0; i < conditions.size(); i++) {
		//			String condition = conditions.get(i);
		//
		//			if (i > 0) {
		//				sql += " AND ";
		//			}
		//
		//			sql += " " + condition;
		//		}
		//	}
		*/
		//Statement st = con.preparedStatement(sql);
		//st.setInt(1, 1);
		//ResultSet rs = st.executeQuery();
			//

	//Memo_2
		//		if(name != null && !name.equals("")) {
		//		sql += " where name like '%" + name + "%'";
		//	}
		//		if(taste != null && !taste.equals("")) {
		//		sql += " where taste like '%" + taste + "%'";
		//	}
		//		if(name != null && !name.equals("") && taste != null && !taste.equals("")) {
		//			sql += " where name like '%" + name + "%' AND taste like '%" + taste + "%'";
		//		}


		//		if(taste != null) {
		//			if(name != null) {
		//				sql += "where name like '%" + name + "%' AND taste like '%" + taste + "%'";
		//			} else {
		//				sql += "where taste like '%" + taste + "%'";
		//			}
		//		}

		//		if (name == null) {
		//			sql = "select * from recipe";
		//		} else {
		//		sql = "select * from recipe where name like '%" + name + "%'";
		//		}
		//	str += "select * from recipe where name like '%" + name + "%'";

		//	}

		//	// sql文をpstmtにセット
		//	pstmt = conn.prepareStatement(sql);
		//	pstmt.setString(1, "%" + name + "%");
		//	pstmt.setString(2, taste);
		//	pstmt.setString(3, budget);
		//	pstmt.setString(4, tpo);
		//	pstmt.setString(5, color);
		//	pstmt.setString(6, ingredient);

	//Memo_3
		//	pstmt = conn.prepareStatement("select * from recipe where name like ? AND taste like ?");
		//	pstmt.setString(1, "%ナス%");
		//	pstmt.setString(2, "%甘%");
			// sqlのselect文実行 //なんで２回続行してんの？
			//pstmt.execute();



//EditServlet


//RecipeBeans



}
