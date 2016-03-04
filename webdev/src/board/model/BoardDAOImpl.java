package board.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAOImpl implements BoardDAO{
	public static BoardDAO boardDAO = null;
	private BoardDAOImpl(){}
	
	public static BoardDAO getInstance(){
		if (boardDAO==null){
			boardDAO = new BoardDAOImpl();
		}
		return boardDAO;
	}

	@Override
	public List<BoardVO> getArticleList() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<BoardVO> list = new ArrayList<BoardVO>();
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT no, title, name, regdate, readcount ");
		sql.append(" FROM board ");
		sql.append(" ORDER BY no DESC ");
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			rs = ps.executeQuery();
			while(rs.next()){
				BoardVO boardVO = new BoardVO();
				boardVO.setNo(rs.getLong("no"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setName(rs.getString("name"));
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setReadcount(rs.getInt("readcount"));
				list.add(boardVO);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) try {rs.close();} catch(Exception e) {}
			if(ps != null) try {ps.close();} catch(Exception e) {}
			if(conn != null) try {conn.close();} catch(Exception e) {}
		}
		return list;
	}

	@Override
	public boolean insertArticle(BoardVO boardVO) {
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO board(no, title, name, content, pwd)");
		sql.append(" VALUES(seq_board.nextval, ?,?,?,?)");
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		boolean result = false;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getContent());
			ps.setString(4, boardVO.getPwd());
			ps.executeUpdate();
			result = true;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) try{ps.close();} catch(Exception e) {}
			if(conn != null) try{conn.close();} catch(Exception e) {}
		}
		return result;
	}

	@Override
	public BoardVO getArticle(long no) {
		BoardVO boardVO = new BoardVO();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select no,title,name,readcount,content,regdate");
		sql.append(" from BOARD ");
		sql.append(" where no=?");
		
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","n1","n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setLong(1,no);
			rs = ps.executeQuery();
			if(rs.next()){
				boardVO.setNo(rs.getLong("no"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setName(rs.getString("name"));
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setContent(rs.getString("content"));
				boardVO.setReadcount(rs.getInt("readcount"));
			}		
		
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs != null) try {rs.close();} catch(Exception e) {}
			if(ps != null) try {ps.close();} catch(Exception e) {}
			if(conn != null) try {conn.close();} catch(Exception e) {}
		}
		return boardVO;
	}

	@Override
	public boolean updateArticle(BoardVO boardVO) {
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE board");
		sql.append(" SET title=?, name=?, content=?");
		sql.append(" WHERE no=? and pwd=?");
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		boolean result = false;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getContent());
			ps.setLong(4, boardVO.getNo());
			ps.setString(5, boardVO.getPwd());
			if(ps.executeUpdate()>0){ //수정 삭제는 비번 틀려도 레코드 0개짜리 쿼리가 실행되서 에러가 안뜸 
				result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) try{ps.close();} catch(Exception e) {}
			if(conn != null) try{conn.close();} catch(Exception e) {}
		}
		return result;
	}

	@Override
	public boolean deleteArticle(long no, String pwd) {
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM board");
		sql.append(" WHERE no=? and pwd=?");
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		boolean result = false;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "n1", "n1");
			ps = conn.prepareStatement(sql.toString());
			ps.setLong(1, no);
			ps.setString(2, pwd);
			if(ps.executeUpdate()>0){ //수정 삭제는 비번 틀려도 레코드 0개짜리 쿼리가 실행되서 에러가 안뜸 
				result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) try{ps.close();} catch(Exception e) {}
			if(conn != null) try{conn.close();} catch(Exception e) {}
		}
		return result;
	}

}
