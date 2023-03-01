package com.book.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.entity.Book;
import com.book.repository.BookRepository;

@Service
@Transactional
public class BookServiceImpl implements BookService {
 @Autowired
 BookRepository repository;

public String createBook(Book book) {
  String message=repository.register(book);
	return message;
}

public List<Book> getallBooks() {
  List<Book> book=repository.allbooks();
	return book;
}

public String updatebook(Book book) {
	 String message=repository.update(book);
	return message;
}

public Book getBookDetails(int id) {
	
	return repository.getbook(id);
}

public Book authentication(String email, String password) {
	
	return  repository.authentication(email, password);
}
 
}
