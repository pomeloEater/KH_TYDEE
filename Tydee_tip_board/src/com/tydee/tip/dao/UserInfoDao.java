package com.tydee.tip.dao;

import org.apache.ibatis.session.SqlSession;

import com.tydee.tip.dto.UserInfoDto;
import com.tydee.tip.mybatis.SqlMapConfig;



public class UserInfoDao extends SqlMapConfig {
	private String namespace = "userinfo-mapper.";
	public UserInfoDto login(UserInfoDto idpw) {
		SqlSession session = null;
		UserInfoDto dto = null;
		try {
			session = getSqlSessionFactory().openSession(false);
			dto = session.selectOne(namespace+"login", idpw);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dto;
	}
}