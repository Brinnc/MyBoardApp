package org.sp.boardapp.model.board;

import java.util.List;

import org.sp.boardapp.domain.BoardImg;

public interface BoardImgDAO {
	
	public void insert(BoardImg boardImg);
	public List selectAll();
	public BoardImg select(int board_img_idx);
	public void update(BoardImg boardImg); 
	public void delete(int board_img_idx); //1건 삭제
	public void deleteByBoardIdx(int board_idx); //부모의 fk를 이용한 삭제

}
