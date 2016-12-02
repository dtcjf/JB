package com.apachegoo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Picture;

@Repository("pictureMapper")
public interface PictureMapper {
	public List<Picture> findAllPicture();
}
