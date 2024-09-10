package com.ace.domain;

public class Temper {

	//tb_temp 테이블
	private String tdate;
	private String c1;
	private String c2;
	private String c3;
	private String c4;
	private String c5;
	private String c6;
	private String c7;
	private String c8;
	private String c9;
	
	private String sdateTime;
	private String edateTime;
	
	//tb_temp_pen 테이블
	private int id;
	private String pen_group_name;
	private String pen_name;
	private String pen_name2;
	private String pen_color;
	private String pen_gb;
	private String pen_tdate;
	
	//tb_temp_pen_info
	private String pen_info_name;
	private String pen_info_yn; // CASE문으로 사용
	
	public String getTdate() {
		return tdate;
	}
	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	public String getC1() {
		return c1;
	}
	public void setC1(String c1) {
		this.c1 = c1;
	}
	public String getC2() {
		return c2;
	}
	public void setC2(String c2) {
		this.c2 = c2;
	}
	public String getC3() {
		return c3;
	}
	public void setC3(String c3) {
		this.c3 = c3;
	}
	public String getC4() {
		return c4;
	}
	public void setC4(String c4) {
		this.c4 = c4;
	}
	public String getC5() {
		return c5;
	}
	public void setC5(String c5) {
		this.c5 = c5;
	}
	public String getC6() {
		return c6;
	}
	public void setC6(String c6) {
		this.c6 = c6;
	}
	public String getC7() {
		return c7;
	}
	public void setC7(String c7) {
		this.c7 = c7;
	}
	public String getC8() {
		return c8;
	}
	public void setC8(String c8) {
		this.c8 = c8;
	}
	public String getC9() {
		return c9;
	}
	public void setC9(String c9) {
		this.c9 = c9;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPen_group_name() {
		return pen_group_name;
	}
	public void setPen_group_name(String pen_group_name) {
		this.pen_group_name = pen_group_name;
	}
	public String getPen_name() {
		return pen_name;
	}
	public void setPen_name(String pen_name) {
		this.pen_name = pen_name;
	}
	public String getPen_name2() {
		return pen_name2;
	}
	public void setPen_name2(String pen_name2) {
		this.pen_name2 = pen_name2;
	}
	public String getPen_color() {
		return pen_color;
	}
	public void setPen_color(String pen_color) {
		this.pen_color = pen_color;
	}
	public String getPen_gb() {
		return pen_gb;
	}
	public void setPen_gb(String pen_gb) {
		this.pen_gb = pen_gb;
	}
	public String getPen_tdate() {
		return pen_tdate;
	}
	public void setPen_tdate(String pen_tdate) {
		this.pen_tdate = pen_tdate;
	}
	public String getSdateTime() {
		return sdateTime;
	}
	public void setSdateTime(String sdateTime) {
		this.sdateTime = sdateTime;
	}
	public String getEdateTime() {
		return edateTime;
	}
	public void setEdateTime(String edateTime) {
		this.edateTime = edateTime;
	}
	public String getPen_info_name() {
		return pen_info_name;
	}
	public void setPen_info_name(String pen_info_name) {
		this.pen_info_name = pen_info_name;
	}
	public String getPen_info_yn() {
		return pen_info_yn;
	}
	public void setPen_info_yn(String pen_info_yn) {
		this.pen_info_yn = pen_info_yn;
	}
}
