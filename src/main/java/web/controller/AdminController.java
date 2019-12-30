package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import web.model.User;
import web.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    private final UserService userService;

    public AdminController(UserService userService) {
        this.userService = userService;
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
    public View addUser(@RequestParam(value = "name", required = false) String name
            , @RequestParam(value = "password", required = false) String password
            , @RequestParam(value = "email", required = false) String email) {
        userService.add(new User(name, password, email));
        return new RedirectView("/admin/users");
    }

    @PostMapping(value = "users/update/{id}")
    public View updateUser(@PathVariable("id") long userId, @RequestParam(value = "name", required = false) String name
            , @RequestParam(value = "password", required = false) String password
            , @RequestParam(value = "email", required = false) String email) {
        userService.update(new User(userId, name, password, email));
        return new RedirectView("/admin/users");
    }

    @PostMapping(value = "users/delete/{id}")
    public View deleteUser(@PathVariable("id") long userId) {
        userService.delete(userId);
        return new RedirectView("/admin/users");
    }
}