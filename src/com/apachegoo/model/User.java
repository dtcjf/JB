package com.apachegoo.model;

/**
 * 用户实体类
 * @author Administrator
 *
 */
public class User {
	private String userId;
	private String userName;
	private String userPwd;
	private String userQq;
	private String userEmail;
	private String userSex;
	private String userSignature;
	private String userIsHost;

	public String getUserIsHost() {
		return userIsHost;
	}

	public void setUserIsHost(String userIsHost) {
		this.userIsHost = userIsHost;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserQq() {
		return userQq;
	}

	public void setUserQq(String userQq) {
		this.userQq = userQq;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserSignature() {
		return userSignature;
	}

	public void setUserSignature(String userSignature) {
		this.userSignature = userSignature;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", userQq=" + userQq + ", userEmail=" + userEmail + ", userSex=" + userSex + ", userSignature=" + userSignature + ", userIsHost=" + userIsHost + "]";
	}

}
