package org.sp.boardapp.util;

public class FileManager {
	
	//확장자 구하기
	public static String getExt(String path) {
		int index=path.lastIndexOf(".");
		
		return path.substring(index+1, path.length()); //exclusive
		
	}

	//파일명 생성
	public static String createFilename(String filename) {
		long time=System.currentTimeMillis();
		
		return time+"."+getExt(filename);
	}
}
