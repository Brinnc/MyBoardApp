package org.sp.boardapp.model.board;

import java.util.List;

import org.sp.boardapp.domain.Board;
import org.sp.boardapp.domain.BoardImg;
import org.sp.boardapp.exception.BoardException;
import org.sp.boardapp.exception.BoardImgException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//서비스 인터페이스를 구현한 하위 서비스 객체
@Service
public class BoardServiceImpl implements BoardService{

	//DAO는 서비스에서 보유해야 함 : model영역의 업무이므로
	//따라서 2개 이상의 테이블에 대한 DML상황에 있어 트랜잭션 처리 또한 서비스 객체의 몫
	@Autowired
	private BoardDAO boardDAO;
	
	@Autowired
	private BoardImgDAO boardImgDAO;
	
	//DAO로부터 전달받은 예외 객체는 서비스가 방치하지 말고,
	//컨트롤러까지 전달을 해둬야 웹브라우저인 클라이언트에게 적절한 에러화면을 제공할 수 있음
	@Override
	public void regist(Board board) throws BoardException, BoardImgException{
		//2개의 DAO를 이용해 글 등록 처리
		boardDAO.insert(board); //mybatis에 의해 board_idx가 채워짐
		
		List<BoardImg> imgList=board.getBoardImgList();
				
		for(int i=0; i<imgList.size(); i++) {
			
			BoardImg boardImg=imgList.get(i);
			boardImgDAO.insert(boardImg); //boardImg테이블에 insert
		}
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Board select(int board_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Board board) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int board_idx) {
		// TODO Auto-generated method stub
		
	}

}
