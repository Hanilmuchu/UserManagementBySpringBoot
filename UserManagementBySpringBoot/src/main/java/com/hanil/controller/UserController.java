package com.hanil.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanil.entity.Users;
import com.hanil.repo.UserRepo;

@Controller
public class UserController {
	@Autowired
	private UserRepo repo;
	@RequestMapping("/")
	public String homePage()
	{
		return "home";
	}
	@RequestMapping("/adduser")
	public String adduser()
	{
		return "adduser";
	}
	@RequestMapping("/newuser")
	public String user(Users user,ModelMap model)
	{
		repo.save(user);
		return "success";
	}
	@RequestMapping("/viewusers")
	public String viewUsers(ModelMap model)
	{
		model.put("user", repo.findAll());
		return "viewusers";
	}
	@RequestMapping("/delete/{id}")
	public String deleteUser(@PathVariable int id)
	{
		repo.deleteById(id);
		return "redirect:/viewusers";
	}
	@RequestMapping("/edit/{id}")
	public String editUser(ModelMap model,@PathVariable int id)
	{
		model.put("command", repo.findById(id));
		return "edit";
	}
	@RequestMapping(value = "/edit",method=RequestMethod.GET)
	public String editSave(Users user,ModelMap model)
	{
		repo.save(user);
		return "redirect:/viewusers";
	}
}
