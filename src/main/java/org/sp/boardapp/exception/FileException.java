package org.sp.boardapp.exception;

//게시판 예외 객체 정의
public class FileException extends RuntimeException{
	
	public FileException(String msg) {
		super(msg);
	}
	
	//Throwable은 예외의 최상위 객체임
	public FileException(String msg, Throwable e) {
		super(msg, e);
	}
}
