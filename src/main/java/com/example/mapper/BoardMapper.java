package com.example.mapper;

import java.util.List;

import com.example.domain.BoardVO;
import com.example.domain.CSCriteria;

public interface BoardMapper {
//	@Select("select * from tbl_board where bno > 0")
	public List<BoardVO> bgetList();

	public List<BoardVO> bgetListWithPaging(CSCriteria cri);

	public void binsert(BoardVO board);

	public Integer insertSelectKey(BoardVO board);

	public BoardVO bread(Long bno);

	public int bdelete(Long bno);

	public int bupdate(BoardVO board);
}
