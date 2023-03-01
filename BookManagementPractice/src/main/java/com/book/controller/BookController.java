package com.book.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.entity.Book;
import com.book.service.BookService;

@Controller

public class BookController {
@Autowired
BookService service;


@GetMapping("/registration")
public String home() {
	return "createbook";
}

@PostMapping("/createbook")
public String createbook(@ModelAttribute Book book , Model model) {
  String message=service.createBook(book);
  model.addAttribute("message", message);
	return "createbook";
	
}
//this is comment
@GetMapping("/allbooks")
public String allBooks(Model model) {
	 List<Book> book= service.getallBooks();
	 model.addAttribute("books", book);
	return"showBooks";
}

@PostMapping("/editBook")
public String editbook(@ModelAttribute Book book, Model model) {
	String message=service.updatebook(book);
	model.addAttribute("message", message);
	return "updateBook";
}

@GetMapping("/updateBook")
public String updatebook(@RequestParam int id, Model model) {
  Book book= service.getBookDetails(id);
  model.addAttribute("book", book);
return "updateBook";
}
@GetMapping("/login")
public String Login() {
	return "login";
}
@PostMapping("/authentication")
public String authentication(@RequestParam String username, Model model,@RequestParam String password,HttpSession session) {
	Book book=service.authentication(username, password);
	 if(book.getBookId() != 0) {
		 session.setAttribute("myData", book);
		 return "redirect:/allbooks";
	 }else {
		 model.addAttribute("message", "Email id or password is not correct.");
			return "login";
	 }
}
@GetMapping("/home")
public String home(Model model){
	model.addAttribute("message", "This is home page");
	 return"home";
}
@GetMapping("/logout")
public String Logout(Model model,HttpSession session) {
	session.invalidate();
	model.addAttribute("message", "You successfully logedout");
	return "login";
}

}
