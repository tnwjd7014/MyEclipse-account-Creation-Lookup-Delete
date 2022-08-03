package com.goodee.service;

import java.util.ArrayList;

import com.goodee.bean.DataBean;

public class MainService {
	private static DataBean bean = new DataBean();
	//private static ArrayList<DataBean> beans = new ArrayList<DataBean>();

	public static DataBean getBean() {
		return bean;
	}
	
	
}
