package com.apachegoo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.apachegoo.model.Album;

@Repository("albumMapper")
public interface AlbumMapper {
	public List<Album> findAllAlbum();
}
