package org.sp.boardapp.model.admin;

import org.sp.boardapp.domain.Admin;
import org.sp.boardapp.exception.AdminException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;

	@Override
	public Admin login(Admin admin) throws AdminException{
		
		Admin dto=adminDAO.login(admin);
		
		//로그인 실패 시 예외처리
		if(dto==null) {
			throw new AdminException("⚠️ Login Failed ! ⚠️");
		}
		
		return dto;
	}
}
