package com.sofCap.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sofCap.dao.BoardDao;
import com.sofCap.dto.BoardDto;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDao boardDao;

	@Override
	public BoardDto findById(int id) {
		return boardDao.findById(id);
	}

	@Override
	public List<BoardDto> findByClubId_p(@Param("id") int club_id) {
		return boardDao.findByClubId_p(club_id);
	}

	@Override
	public List<BoardDto> findAll_p() {
		return boardDao.findAll_p();
	}

	@Override
	public List<BoardDto> findAll_r() {
		return boardDao.findAll_r();
	}

	@Override
	public List<BoardDto> findAll_n() {
		return boardDao.findAll_n();
	}

	@Override
	public List<BoardDto> findAll_m() {
		return boardDao.findAll_m();
	}

	@Override
	public List<BoardDto> listFive_p() {
		return boardDao.listFive_p();
	}

	@Override
	public List<BoardDto> listFive_r() {
		return boardDao.listFive_r();
	}

	@Override
	public BoardDto findOne(@Param("id") int id) {
		return boardDao.findOne(id);
	}

	@Override
	public void delete(int id) {
		boardDao.delete(id);
	}
}