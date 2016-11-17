package com.tep.admin.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.tep.admin.service.AdminService;
import com.tep.commons.common.CommandMap;
import com.tep.commons.util.PagingCalculator2;

@Controller
public class AdminController {
	protected Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value={"/admin","/admin/dashboard"})
	public ModelAndView dashboardView() throws Exception{
		ModelAndView mv = new ModelAndView("adminDashboard");
		Map<String, Object> result = adminService.selectDashboard();
//		mv.addAllObjects("data")
		return mv;
	}
	
    @RequestMapping(value="/admin/members/list", method={RequestMethod.GET, RequestMethod.POST})
    public ModelAndView memberList(CommandMap map, HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView("adminMemberList");
        
        List<Map<String,Object>> list = adminService.selectMemberList(map.getMap());
        PagingCalculator2 paging = new PagingCalculator2("admin/members/list", map.getCurrentPageNo(), list, 5, 3);
        Map<String, Object> rMap = paging.getPagingList();
        
        mv.addObject("list", rMap.get("list"));
        mv.addObject("pagingHtml",rMap.get("pagingHtml"));
        mv.addObject("currentPageNo", map.getCurrentPageNo());
        
        return mv;
    }
    
    @RequestMapping(value="/admin/lendplace/form", method=RequestMethod.GET)
    public String lendplaceForm(){
    	return "adminLendplaceWrite";
    }
    
    @RequestMapping(value="/admin/lendplace/write", method=RequestMethod.POST)
    public ModelAndView lendplaceWrite(CommandMap map, MultipartHttpServletRequest request) throws Exception{
    	adminService.insertLendplace(map.getMap(),request);
    	return new ModelAndView("redirect:/admin/lendplace/list");
    }
    
    @RequestMapping(value="/admin/lendplace/list", method=RequestMethod.GET)
    public ModelAndView lendplaceList(CommandMap map) throws Exception{
    	ModelAndView mv = new ModelAndView("adminLendplaceList");
    	
    	return mv;
    }
}
