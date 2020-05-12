package com.sofCap.service;

import java.util.List;

import com.sofCap.dto.ApplyADto;
import com.sofCap.dto.ApplyQDto;
import com.sofCap.dto.ClubDto;

public interface ClubService {
	List<String> findClub();

	ClubDto findById(int id);

	List<ClubDto> findAll();

	List<ApplyADto> findAnswer(int club_id);
	List<ApplyQDto> findQuestion(int club_id);
}