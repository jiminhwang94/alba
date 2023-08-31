package com.example.service;

import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.CSCriteria;

public interface BoardService {
	public void bregister(BoardVO board);

	public BoardVO bget(Long bno);

	public boolean bmodify(BoardVO board);

	public boolean bremove(Long bno);

//	public List<BoardVO> getList();
	public List<BoardVO> bgetList(CSCriteria cri);
//	public int getTotal(Criteria cri);
}
