package com.portfolio.vo;

import java.util.Date;

public class PostVO {
    private Integer seq;
    private Integer owner;
    private String title;
    private String content;
    private Date reg_dt;
    private Date mod_dt;
    private String pi_ip;
    private Integer count;
    private Integer pi_like;
    private Integer pi_dislike;
    private Integer pi_status;
    private Integer pi_board_seq;
    private String ui_name;
    private Integer no;
    private String bi_name;
    

        
	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	
        
    public Integer getOwner() {
		return owner;
	}

	public void setOwner(Integer owner) {
		this.owner = owner;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
	
    public Date getReg_dt() {
		return reg_dt;
	}

	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}

	public Date getMod_dt() {
		return mod_dt;
	}

	public void setMod_dt(Date mod_dt) {
		this.mod_dt = mod_dt;
	}

	public String getPi_ip() {
        return this.pi_ip;
    }

    public void setPi_ip(String pi_ip) {
        this.pi_ip = pi_ip;
    }

    

    public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getPi_like() {
        return this.pi_like;
    }

    public void setPi_like(Integer pi_like) {
        this.pi_like = pi_like;
    }

    public Integer getPi_dislike() {
        return this.pi_dislike;
    }

    public void setPi_dislike(Integer pi_dislike) {
        this.pi_dislike = pi_dislike;
    }

    public Integer getPi_status() {
        return this.pi_status;
    }

    public void setPi_status(Integer pi_status) {
        this.pi_status = pi_status;
    }

    public Integer getPi_board_seq() {
        return this.pi_board_seq;
    }

    public void setPi_board_seq(Integer pi_board_seq) {
        this.pi_board_seq = pi_board_seq;
    }

    public String getUi_name() {
        return this.ui_name;
    }

    public void setUi_name(String ui_name) {
        this.ui_name = ui_name;
    }

    public Integer getNo() {
        return this.no;
    }

    public void setNo(Integer no) {
        this.no = no;
    }

    public String getBi_name() {
        return this.bi_name;
    }

    public void setBi_name(String bi_name) {
        this.bi_name = bi_name;
    }



    
}
