package com.mfx.Services;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mfx.Entities.Books;
import com.mfx.Entities.GiveBooks;
import com.mfx.mapper.BookDao;

@Service
public class BookServiceImpl implements BookService{
	@Resource
	BookDao bookDao;
	public void insert(Books entitys) {
		// TODO Auto-generated method stub
		bookDao.insert(entitys);
		
	}
	public List<Books> selectAll() {
		// TODO Auto-generated method stub
		List<Books> list=new ArrayList<Books>();
		list=bookDao.selectAllDao();
		return list;
	}
	public List<Books> selectByName(String name) {
		// TODO Auto-generated method stub
		List<Books> list=new ArrayList<Books>();
		list=bookDao.selectByNameDao(name);
		return list;
	}
	public List<Books> selectByPhoneNum(String keyString) {
		// TODO Auto-generated method stub
		List<Books> list=new ArrayList<Books>();
		list=bookDao.selectByPhoneNumDao(keyString);
		return list;
	}
	public void delete(int id) {
		// TODO Auto-generated method stub
		bookDao.delete(id);
	}
	public Books selectById(int id) {
		// TODO Auto-generated method stub
		
		return bookDao .selectByIdDao(id);
	}
	public void insertIntoGive(GiveBooks book) {
		// TODO Auto-generated method stub
		bookDao.insertIntoGiveDao(book);
	}
	public List<GiveBooks> selectGiveBook() {
		// TODO Auto-generated method stub
		
		return bookDao.selectGiveBookDao();
	}
	public void update(Books entity,int id) {
		// TODO Auto-generated method stub
		bookDao.updateDao(entity);
	}
	
}
