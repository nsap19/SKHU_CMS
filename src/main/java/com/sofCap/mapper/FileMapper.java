package com.sofCap.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.sofCap.dto.FilesDto;

@Mapper
public interface FileMapper {
	void accountFileUpload(FilesDto file);
	FilesDto getReceiptImage(int id);
	void delete(int id);
	void clubFileUpload(FilesDto file);
	FilesDto getClubImage(int id);
}
