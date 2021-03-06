package com.tep.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.tep.commons.dao.AbstractDAO;

@Repository
public class AdminDAO extends AbstractDAO{
	protected Logger log = Logger.getLogger(this.getClass());
	
	public AdminDAO(){
		setNameSpace("admin.");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("selectMemberList");
	}

	public void insertLendplace(Map<String, Object> map) {
		insert("insertLendplace", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMemberModfiyForm(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("selectMemberModifyForm", map);
	}

	public void adminMemberModify(Map<String, Object> params) {
		update("adminMemberModify", params);
	}

	public void deleteMember(Map<String, Object> params) {
		delete("deleteMember", params);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList() {
		return (List<Map<String, Object>>) selectList("selectBoardList");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMeetingsList() {
		return (List<Map<String, Object>>) selectList("selectMeetingsList");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLendplaceList() {
		return (List<Map<String, Object>>) selectList("selectLendplaceList");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQnaList() {
		return (List<Map<String, Object>>) selectList("selectQnaList");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectQnaList(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("selectQnaList");
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> adminQnaDetail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("adminQnaDetail", map);
	}

}
