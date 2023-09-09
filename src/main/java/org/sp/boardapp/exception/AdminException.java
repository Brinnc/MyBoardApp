package org.sp.boardapp.exception;

//게시판 예외 객체 정의
public class AdminException extends RuntimeException{
	
	public AdminException(String msg) {
		super(msg);
	}
	
	//Throwable은 예외의 최상위 객체임
	public AdminException(String msg, Throwable e) {
		super(msg, e);
	}
}
