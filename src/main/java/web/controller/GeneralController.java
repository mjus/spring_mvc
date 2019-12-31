package web.controller;

import web.model.User;
import web.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class GeneralController {
    private final UserService userService;

    public GeneralController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping(value = "login")
    public String loginPage() {
        return "login";
    }

    @GetMapping(value = "hello")
    public String printWelcome(ModelMap model) {
        List<String> messages = new ArrayList<>();
        messages.add("Hello!");
        messages.add("User");
        model.addAttribute("messages", messages);
        return "hello";
    }

    @GetMapping(value = "users")
    public ModelAndView getUsers() {
        List<User> users = userService.getAllUsers();
        ModelAndView modelAndView = new ModelAndView("users");
        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @GetMapping(value = "users/update/{id}")
    public ModelAndView getUserUpdate(@PathVariable("id") long userId) {
        User user = userService.getUserById(userId);
        ModelAndView modelAndView = new ModelAndView("update");
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @PostMapping(value = "users/add")
    public View addUser(@RequestParam(value = "name", required = false) String name, @RequestParam(value = "last_name", required = false) String last_name, @RequestParam(value = "email", required = false) String email) {
        if (isValidate(name, last_name, email)) {
            userService.add(new User(name, last_name, email));
        }
        return new RedirectView("/users");
    }

    @PostMapping(value = "users/update/{id}")
    public View updateUser(@PathVariable("id") long userId, @RequestParam(value = "name", required = false) String name, @RequestParam(value = "last_name", required = false) String last_name, @RequestParam(value = "email", required = false) String email) {
        if (isValidate(name, last_name, email)) {
            userService.update(new User(userId, name, last_name, email));
        }
        return new RedirectView("/users");
    }

    @PostMapping(value = "users/delete/{id}")
    public View deleteUser(@PathVariable("id") long userId) {
        userService.delete(userId);
        return new RedirectView("/users");
    }

    boolean isValidate(String s1, String s2, String s3) {
        return !s1.isEmpty() && !s2.isEmpty() && !s3.isEmpty();
    }
}