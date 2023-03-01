package com.book.repository;

import java.util.List;

import com.book.entity.Book;

public interface BookRepository {
	
	public String register(Book book);
	
	public String update(Book book);
	
	public Book getbook(int id);
	
	public String deletebook(int id);
	
	public List<Book> allbooks();

	public Book authentication(String email, String password);
}
