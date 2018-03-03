package com.mfx.Services;

import java.util.List;

import com.mfx.Entities.Books;
import com.mfx.Entities.GiveBooks;

public interface BookService {
   void insert(Books entitys);

   List<Books> selectAll();

   List<Books> selectByName(String keyString);

List<Books> selectByPhoneNum(String keyString);

void delete(int id);

Books selectById(int id);

void insertIntoGive(GiveBooks giveBooks);

List<GiveBooks> selectGiveBook();

void update(Books entity, int id);
}
