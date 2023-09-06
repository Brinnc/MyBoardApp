package org.sp.boardapp.exception;

//게시판 예외 객체 정의
public class BoardImgException extends RuntimeException{
	
	public BoardImgException(String msg) {
		super(msg);
	}
	
	//Throwable은 예외의 최상위 객체임
	public BoardImgException(String msg, Throwable e) {
		super(msg, e);
	}
}
