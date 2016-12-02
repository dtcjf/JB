package com.apachegoo.model;

/**
 * 相册实体类
 * @author Administrator
 *
 */
public class Album {
	private String albumId;
	private String albumUserId;
	private String albumName;
	private String albumDesc;
	private String createTime;

	public String getAlbumId() {
		return albumId;
	}

	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}

	public String getAlbumUserId() {
		return albumUserId;
	}

	public void setAlbumUserId(String albumUserId) {
		this.albumUserId = albumUserId;
	}

	public String getAlbumName() {
		return albumName;
	}

	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}

	public String getAlbumDesc() {
		return albumDesc;
	}

	public void setAlbumDesc(String albumDesc) {
		this.albumDesc = albumDesc;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	@Override
	public String toString() {
		return "Album [albumId=" + albumId + ", albumUserId=" + albumUserId + ", albumName=" + albumName + ", albumDesc=" + albumDesc + ", createTime=" + createTime + "]";
	}

}
