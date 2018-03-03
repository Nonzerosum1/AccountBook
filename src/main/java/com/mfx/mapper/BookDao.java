package com.mfx.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mfx.Entities.Books;
import com.mfx.Entities.GiveBooks;

public interface BookDao {
	
     public void insert(Books  entitys);

	 public List<Books> selectAllDao();

	 public List<Books> selectByNameDao(@Param("name")String name);

	public List<Books> selectByPhoneNumDao(@Param("keyString")String keyString);

	public void delete(int id);

	public Books selectByIdDao(int id);

	public void insertIntoGiveDao(GiveBooks book);

	public List<GiveBooks> selectGiveBookDao();

	public void updateDao(Books entity);

}
