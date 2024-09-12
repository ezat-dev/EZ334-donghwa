package com.ace.domain;

public class Temper {

	// tb_temp 테이블
	private String tdate;
	private int c1;
	private int c2;
	private int c3;
	private int c4;
	private int c5;
	private int c6;
	private int c7;
	private int c8;
	private int c9;
	private int c10;
	private int c11;
	private int c12;
	private int c13;
	private int c14;

	private String sdateTime;
	private String edateTime;
	
	// tb_temp_pen 테이블
	private int id;
	private String pen_group_name;
	private String pen_name;
	private String pen_name2;
	private String pen_color;
	private String pen_gb;
	private String pen_tdate;
	
	// tb_temp_pen_info
	private String pen_info_name;
	private String pen_info_yn; // CASE문으로 사용
	
	// Getters and Setters
	public String getTdate() {
		return tdate;
	}
	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	
	
	
	public int getC1() {
		return c1;
	}
	public void setC1(int c1) {
		this.c1 = c1;
	}
	public int getC2() {
		return c2;
	}
	public void setC2(int c2) {
		this.c2 = c2;
	}
	public int getC3() {
		return c3;
	}
	public void setC3(int c3) {
		this.c3 = c3;
	}
	public int getC4() {
		return c4;
	}
	public void setC4(int c4) {
		this.c4 = c4;
	}
	public int getC5() {
		return c5;
	}
	public void setC5(int c5) {
		this.c5 = c5;
	}
	public int getC6() {
		return c6;
	}
	public void setC6(int c6) {
		this.c6 = c6;
	}
	public int getC7() {
		return c7;
	}
	public void setC7(int c7) {
		this.c7 = c7;
	}
	public int getC8() {
		return c8;
	}
	public void setC8(int c8) {
		this.c8 = c8;
	}
	public int getC9() {
		return c9;
	}
	public void setC9(int c9) {
		this.c9 = c9;
	}
	public int getC10() {
		return c10;
	}
	public void setC10(int c10) {
		this.c10 = c10;
	}
	public int getC11() {
		return c11;
	}
	public void setC11(int c11) {
		this.c11 = c11;
	}
	public int getC12() {
		return c12;
	}
	public void setC12(int c12) {
		this.c12 = c12;
	}
	public int getC13() {
		return c13;
	}
	public void setC13(int c13) {
		this.c13 = c13;
	}
	public int getC14() {
		return c14;
	}
	public void setC14(int c14) {
		this.c14 = c14;
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
