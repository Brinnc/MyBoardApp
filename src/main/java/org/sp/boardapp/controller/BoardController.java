package org.sp.boardapp.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.sp.boardapp.domain.Board;
import org.sp.boardapp.util.FileManager;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

//게시판과 관련된 요청을 처리하는 하위 컨트롤러
@Controller
public class BoardController {

	//게시판 목록 요청 처리
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView getList() {
		//3단계)
		
		//4단계) 목록 저장
		ModelAndView mav=new ModelAndView("board/list");
		
		return mav;
	}
	
	//글쓰기 폼 요청
	@RequestMapping(value="/board/registform", method=RequestMethod.GET)
	public String getForm() {
		
		return "board/regist";
	}
	
	//글쓰기 요청 처리
	@RequestMapping(value="/board/regist", method=RequestMethod.POST)
	public ModelAndView regist(Board board, HttpServletRequest request) {
		//3단계)  DB(오라클)에 게시글 등록+파일 업로드
		System.out.println("title = "+board.getTitle());
		System.out.println("writer = "+board.getWriter());
		System.out.println("content = "+board.getContent());
		
		MultipartFile[] photo=board.getPhoto();
		System.out.println("파일의 갯수 = "+photo.length);
		
		//jsp의 application 내장객체는 서블릿 api에서 ServletContext
		//따라서 이 객체를 얻기 위해 HttpSession을 얻어야 함
		ServletContext context=request.getSession().getServletContext();
		String path=context.getRealPath("/resources/data/");
		System.out.println("파일이 저장될 풀 경로는 "+path);
		
		for(int i=0; i<photo.length; i++) {
			String filename=photo[i].getOriginalFilename();
			System.out.println(filename);
			
			//파일명 만들기
			String newName=FileManager.createFilename(filename);
			File file=new File(path+newName);
			try {
				photo[i].transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {		
				e.printStackTrace();
			}
			
		}
		
		//메모리 상에 올라온 파일들을 서버의 지정된 디렉토리에 저장(업로드)
		
		//게시판 리스트 재요청
		return null;
	}

}
