package com.kjmachine.company.mapper;

import java.util.List;

import com.kjmachine.company.domain.NoticeDTO;

public interface INoticeMapper {

	public void insert(NoticeDTO dto);
	public void noticeDelete(int noticeNo);
	public void noticeMod(NoticeDTO dto);
	public List<NoticeDTO> showList();
	public List<NoticeDTO> getNoList(int noticeNo);
	public NoticeDTO list(int noticeNo);
	public int countNotice();
}
