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
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		Board board=sqlSession.selectOne("Board.select", board_idx);
		mybatisConfig.release(sqlSession);
		
		return board;
	}

	@Override
	public void update(Board board) {
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		int result=sqlSession.update("Board.update", board);
		
		sqlSession.commit(); //DML
		mybatisConfig.release(sqlSession);
		
	}

	@Override
	public void delete(int board_idx) throws BoardException{
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		int result=sqlSession.delete("Board.delete", board_idx);
		sqlSession.commit();
		mybatisConfig.release(sqlSession);
		
		if(result<1) { //삭제 실패 시
			throw new BoardException("cannot DELETE 😶");
		}
	}
	
	@Override
	public void updateHit(int board_idx) {
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		sqlSession.update("Board.counthit", board_idx);
		
		sqlSession.commit(); //DML
		mybatisConfig.release(sqlSession);
		
	}

}
