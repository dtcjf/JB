package com.apachegoo.model;

/**
 * 相片实体类
 * @author Administrator
 *
 */
public class Picture {
	private String pictureId;
	private String pictureName;
	private String pictureAddress;
	private String pictureAlbumId;
	private String updateTime;
	public String getPictureId() {
		return pictureId;
	}
	public void setPictureId(String pictureId) {
		this.pictureId = pictureId;
	}
	public String getPictureName() {
		return pictureName;
	}
	public void setPictureName(String pictureName) {
		this.pictureName = pictureName;
	}
	public String getPictureAddress() {
		return pictureAddress;
	}
	public void setPictureAddress(String pictureAddress) {
		this.pictureAddress = pictureAddress;
	}
	public String getPictureAlbumId() {
		return pictureAlbumId;
	}
	public void setPictureAlbumId(String pictureAlbumId) {
		this.pictureAlbumId = pictureAlbumId;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}

	@Override
	public String toString() {
		return "Picture [pictureId=" + pictureId + ", pictureName=" + pictureName + ", pictureAddress=" + pictureAddress + ", pictureAlbumId=" + pictureAlbumId + ", updateTime=" + updateTime + "]";
	}
}
