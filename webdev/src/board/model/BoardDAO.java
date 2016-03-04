package board.model;

import java.util.List;

public interface BoardDAO {
	public List<BoardVO> getArticleList(); 
	public boolean insertArticle(BoardVO boardVO);
	public BoardVO getArticle(long no);
	public boolean updateArticle(BoardVO boardVO);
	public boolean deleteArticle(long no,String pwd);
}
