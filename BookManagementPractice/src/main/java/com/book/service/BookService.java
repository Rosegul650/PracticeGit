package com.book.service;

import java.util.List;

import com.book.entity.Book;

public interface BookService {
     public String createBook(Book book);
     
     public List<Book> getallBooks();
     
     public String updatebook(Book book);
	
     public Book getBookDetails(int id);
     
     public Book authentication(String email, String password);
}
