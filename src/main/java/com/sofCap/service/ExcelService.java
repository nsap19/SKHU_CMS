package com.sofCap.service;

import java.util.Arrays;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sofCap.dto.AccountDto;
import com.sofCap.dto.ClubDto;
import com.sofCap.mapper.AccountMapper;
import com.sofCap.model.SemDate;

@Service
public class ExcelService {
	@Autowired
	AccountService accountService;
	@Autowired
	ClubService clubService;
	@Autowired
	AccountMapper accountMapper;

	// 클럽별 회계 목록을 리턴하는 메소드
	public List<AccountDto> findByClubIdAndSem(int club_id, String sem_name) {
		return accountService.findByClubIdAndSem(club_id, sem_name);
	}

	// 학기별 전체 동아리 회계 목록을 리턴하는 메소드
	public List<AccountDto> findBySem(String sem_name) {
		return accountMapper.findBySemName(sem_name);
	}

	// 날짜 서식을 생성하는 메소드
	static CellStyle createDateStyle(Workbook workbook, String dateFormat) {
		CellStyle style = workbook.createCellStyle();
		CreationHelper createHelper = workbook.getCreationHelper();
		style.setDataFormat(createHelper.createDataFormat().getFormat(dateFormat));
		return style;
	}

	public Workbook createXLS(List<AccountDto> accounts) {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet();

		int rowCount = 0;
		Row row = sheet.createRow(rowCount++);
		row.createCell(0).setCellValue("날짜");
		row.createCell(1).setCellValue("구분");
		row.createCell(2).setCellValue("금액");
		row.createCell(3).setCellValue("사용 내역");

		sheet.setColumnWidth(0, 11 * 256);
		sheet.setColumnWidth(1, 10 * 256);
		sheet.setColumnWidth(2, 7 * 256);
		sheet.setColumnWidth(3, 15 * 256);

		// 날짜 서식 생성
		CellStyle dateStyle = createDateStyle(workbook, "yyyy-MM-dd");

		for (AccountDto account : accounts) {
			row = sheet.createRow(rowCount++);
			row.createCell(0).setCellValue(account.getDate());
			if (account.getAccount_type() == 0)
				row.createCell(1).setCellValue("중앙지원금");
			else
				row.createCell(1).setCellValue("동아리회비");
			row.createCell(2).setCellValue(account.getPrice());
			row.createCell(3).setCellValue(account.getRemark());

			row.getCell(0).setCellStyle(dateStyle); // 날짜 서식 지정
		}

		return workbook;
	}

	public Workbook createAllClubXLS(List<AccountDto> accounts) {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet();

		int rowCount = 0;
		Row row = sheet.createRow(rowCount++);
		row.createCell(0).setCellValue("동아리명");
		row.createCell(1).setCellValue("날짜");
		row.createCell(2).setCellValue("구분");
		row.createCell(3).setCellValue("금액");
		row.createCell(4).setCellValue("사용 내역");

		sheet.setColumnWidth(0, 13 * 256);
		sheet.setColumnWidth(1, 11 * 256);
		sheet.setColumnWidth(2, 10 * 256);
		sheet.setColumnWidth(3, 7 * 256);
		sheet.setColumnWidth(4, 15 * 256);

		// 날짜 서식 생성
		CellStyle dateStyle = createDateStyle(workbook, "yyyy-MM-dd");

		for (AccountDto account : accounts) {
			row = sheet.createRow(rowCount++);
			row.createCell(0).setCellValue(clubService.findById(account.getClub_id()).getClub_name());
			row.createCell(1).setCellValue(account.getDate());
			if (account.getAccount_type() == 0)
				row.createCell(2).setCellValue("중앙지원금");
			else
				row.createCell(2).setCellValue("동아리회비");
			row.createCell(3).setCellValue(account.getPrice());
			row.createCell(4).setCellValue(account.getRemark());

			row.getCell(1).setCellStyle(dateStyle); // 날짜 서식 지정
		}

		return workbook;
	}

}
