package com.nextrip.modules.post;


import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.util.UtilDateTime;
import com.nextrip.modules.code.CodeServiceImpl;

@Controller
@RequestMapping(value = "/post/")
public class PostController {
	@Autowired
	PostServiceImpl service;
	
	@RequestMapping(value="postList")
	public String postList(@ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		vo.setParamsPaging(service.selectListCount(vo));
		List<Post> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "kdmin/post/postList";
	}
	@RequestMapping(value="postView")
	public String postView(Post dto, @ModelAttribute("vo") PostVo vo, Model model) throws Exception{
		if(vo.getNxPostSeq().equals("0") || vo.getNxPostSeq().equals("")) {
			//insert
		} else {
			
			Post item = service.selectOne(vo);
			model.addAttribute("postListUploaded", service.postListUploaded(vo));
			item.setLng(item.getLng() == null ?  Integer.toString(127) : item.getLng());
			item.setLat(item.getLat() == null ? Integer.toString(37) : item.getLat());
			model.addAttribute("item", item);
		}
		return "kdmin/post/postView";
	}
	
	@RequestMapping(value="postUserView")
	public String postUserView(Post dto, @ModelAttribute("vo") PostVo vo, Model model)throws Exception{
			Post item = service.postSelectOne(vo);
			model.addAttribute("item", item);
		
		return "user/post/postUserView";
	}
	
	@RequestMapping(value="postUserList")
	public String postUserList(@ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		
		vo.setParamsPaging(service.postSelectListCount(vo));
		List<Post> list = service.postSelectList(vo);
		model.addAttribute("list", list);
		
		return "user/post/postUserList";
	}
	
	@RequestMapping(value="postRegMod")
	public String postRegMod(Post dto, @ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		System.out.println("vo.getNxPostSeq(): " + vo.getNxPostSeq());
		if(vo.getNxPostSeq().equals("0") || vo.getNxPostSeq().equals("")) {
			//insert
		} else {
			Post item = service.postSelectOne(vo);
			model.addAttribute("postListUploaded", service.postListUploaded(vo));
			model.addAttribute("item", item);
		}
		return "user/post/postRegMod";
	}
	
	@RequestMapping(value="postUserInsert")
	public String postUserInsert(Post dto, PostVo vo, HttpSession httpSession, RedirectAttributes redirectAttributes)throws Exception{
		dto.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		service.postInsert(dto);
		vo.setNxPostSeq(dto.getNxPostSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postUserView";
	}
	
	@RequestMapping(value="postUserUpdate")
	public String postUserUpdate(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:postUserView";
	}
	
	@RequestMapping(value="postUserUelete")
	public String postUserUelete(Post dto, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUelete(dto);
		
		return "redirect:postUserList";
	}
	
	@RequestMapping(value="postInsert")
	public String postInsert(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postInsert(dto);
		vo.setNxPostSeq(dto.getNxPostSeq());	
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postView";
	}
	
	@RequestMapping(value="postUpdate")
	public String postUpdate(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postView";
	}
	
	@RequestMapping(value="postUelete")
	public String postUelete(Post dto, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUelete(dto);
		
		return "redirect:postList";
	}
	
	@RequestMapping(value="postDelete")
	public String postDelete(PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postDelete(vo);
		
		return "redirect:postList";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(PostVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		vo.setParamsPaging(service.selectListCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Post> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"게시글 번호", "회원 번호", "회원 이름", "닉네임", "구분", "지역", "제목", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getNxPostSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberSeq());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberName());
	        	
	        	cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberNickName());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            if(list.get(i).getPostType() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getPostType()));
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getRegion() != null) cell.setCellValue(CodeServiceImpl.selectOneCachedCode(Integer.parseInt(list.get(i).getRegion())));
	            
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getTitle());
	            
	            cell = row.createCell(7);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDateTime.dateToString(list.get(i).getRegDateTime()));
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDateTime.dateToString(list.get(i).getModDateTime()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=PostList.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	

}

