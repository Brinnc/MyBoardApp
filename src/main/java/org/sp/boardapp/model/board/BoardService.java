package org.sp.boardapp.model.board;

import java.util.List;

import org.sp.boardapp.domain.Board;

//컨트롤러가 이 서비스 객체를 보유 시, 결합도를 낮추기 위함
public interface BoardService {
	public void regist(Board board);
	public List selectAll();
	public Board select(int board_idx);
	public void update(Board board);
	public void delete(int board_idx);
	
}
