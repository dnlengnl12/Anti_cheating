package com.dyung.kim.vo;

import lombok.Data;

@Data
public class NoticeVO {
	private int notice_seq;
	private String class_code;
	private String member_id;
	private String notice_title;
	private String notice_context;
	private int notice_hits;
	private String notice_date;
	private String notice_originalFileName;
	private String notice_lastFileName;
}
