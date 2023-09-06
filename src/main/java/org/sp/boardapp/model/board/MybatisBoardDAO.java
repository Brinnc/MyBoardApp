package org.sp.boardapp.model.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.sp.boardapp.domain.Board;
import org.sp.boardapp.exception.BoardException;
import org.sp.boardapp.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisBoardDAO implements BoardDAO {
	
	@Autowired
	private MybatisConfig mybatisConfig;
	
	@Override
	public void insert(Board board) throws BoardException{
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		
		int result=sqlSession.insert("Board.insert", board);
		sqlSession.commit(); //DML
		mybatisConfig.release(sqlSession);
		
		//result=0; //에러test용
		
		if(result==0) {
			//글 작성 실패 시 에러
			throw new BoardException("Fail !");
		}
	}

	@Override
	public List selectAll() {
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		List list=sqlSession.selectList("Board.selectAll");
		mybatisConfig.release(sqlSession);
		
		return list;
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
