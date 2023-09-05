package org.sp.boardapp.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//mybatis의 설정 파일을 읽어들여, SqlSessionFactory를 얻기위한 객체 선언
//이 객체는 어플리케이션에서 한번만 인스턴스를 생성해야하므로, 싱글턴으로 선언하도록 함
public class MybatisConfig {
	private static MybatisConfig instance;
	private SqlSessionFactory sqlSessionFactory;
	
	private MybatisConfig() {
		String resource = "org/sp/boardapp/mybatis/config.xml";
		InputStream inputStream=null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}

	public static MybatisConfig getInstance() {
		if(instance==null) {
			instance=new MybatisConfig();
		}
		
		return instance;
	}
	
	//Factory로부터 sqlSession반환
	public SqlSession getSqlSession() {
		
		return sqlSessionFactory.openSession();
	}
	
	//sqlSession반납
	public void release(SqlSession sqlSession) {
		sqlSession.close();
		
	}
}
