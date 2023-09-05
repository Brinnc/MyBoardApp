package org.sp.boardapp.domain;

import lombok.Data;

@Data
public class BoardImg {
	private int board_img_idx;
	private Board board;
	private String filename;
}
