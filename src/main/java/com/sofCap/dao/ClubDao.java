package com.sofCap.dao;

import java.util.List;

import com.sofCap.dto.ApplyADto;
import com.sofCap.dto.ApplyQDto;
import com.sofCap.dto.ClubDto;

public interface ClubDao {

	List<String> findClub();

	ClubDto findById(int id);

	ClubDto findByName(String name);

	List<ClubDto> findAll();

	List<ApplyADto> findAnswer(int club_id);

	List<ApplyQDto> findQ(int club_id);

	void insert(ClubDto club);

	void delete(String name);
}
