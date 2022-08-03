package com.goodee.bean;

// 페이지 관련된 정보만 담는 클래스
public class PageBean {
	// 메인 타이틀
	private String title;
	// 서브 타이틀
	private String subTitle;
	// 해당 페이지에서 이동할 페이지 url
	private String url;
	// 이동한 페이지
	private Integer num;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	
	
}
