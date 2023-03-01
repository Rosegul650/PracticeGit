package com.book.repository;


import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.book.entity.Book;
@Repository
public class BookRepositoryImpl implements BookRepository {
	@Autowired
	private SessionFactory sessionFactory;
	  private Session getSession() {
		  return sessionFactory.getCurrentSession();
	  }
	public String register(Book book) {
		getSession().save(book);
		return "Book registerd";
	}
	public String update(Book book) {
		getSession().merge(book);
		return "Book Updated";
	}
	public Book getbook(int id) {
		TypedQuery<Book> query= getSession().createQuery("from Book b where b.bookId=:pid");
		query.setParameter("pid", id);
		Book book=query.getSingleResult();
		return book;
	}
	public String deletebook(int id) {
		Book book = getbook(id);
		getSession().delete(book);
		return "Book deleted";
	}
	public List<Book> allbooks() {
		List<Book> book =getSession().createQuery("from Book").getResultList();
		return book;
	}
	public Book authentication(String email, String password) {
		Book book= new Book();
   try {
		TypedQuery<Book> query= getSession().createQuery("from Book b where b.email=:pemail and b.password=:ppass");
		query.setParameter("pemail", email);
		query.setParameter("ppass", password);
		book=query.getSingleResult();
		return book;
	}catch(Exception e){
		return book;
	}
	
}
}
	
