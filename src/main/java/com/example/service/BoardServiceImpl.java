package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.domain.BoardVO;
import com.example.domain.CSCriteria;
import com.example.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;

	@Override
	public void bregister(BoardVO board) {
		log.info("register......" + board);
		mapper.insertSelectKey(board);
	}

	@Override
	public BoardVO bget(Long bno) {
		log.info("get......" + bno);
		return mapper.bread(bno);
	}

	@Override
	public boolean bmodify(BoardVO board) {
		log.info("modify......" + board);
		return mapper.bupdate(board) == 1;
	}

	@Override
	public boolean bremove(Long bno) {
		log.info("remove...." + bno);
		return mapper.bdelete(bno) == 1;
	}

	@Override
	public List<BoardVO> bgetList(CSCriteria cri) {
		log.info("get List with criteria: " + cri);
		return mapper.bgetListWithPaging(cri);
	}

}
