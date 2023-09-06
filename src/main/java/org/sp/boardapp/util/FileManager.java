package org.sp.boardapp.util;

import java.io.File;
import java.io.IOException;

import org.sp.boardapp.exception.FileException;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
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
	
	//파일 저장
	public String save(String path, String filename, MultipartFile mf) throws FileException{
		
		//파일명 만들기
		String newName=FileManager.createFilename(filename);
		
		File file=new File(path+"/hello/"+newName);
		
		try {
			mf.transferTo(file);
		} catch (IllegalStateException e) {
			throw new FileException("이미지 저장 실패", e);
		} catch (IOException e) {
			throw new FileException("이미지 저장 실패", e);
		}
		
		return newName;
	}
	
}
