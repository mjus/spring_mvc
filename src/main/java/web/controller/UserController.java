package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.RedirectView;
import web.model.User;
import web.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/")
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "users", method = RequestMethod.GET)
    public ModelAndView getUsers(@RequestParam(value = "action", required = false) String action, @RequestParam(value = "id", required = false) Long id) {
        if (action == null) {
            List<User> users = userService.getAllUsers();
            ModelAndView modelAndView = new ModelAndView("users");
            modelAndView.addObject("users", users);
            return modelAndView;
        } else if (action.equals("update")) {
            User user = userService.getUserById(id);
            ModelAndView modelAndView = new ModelAndView("update");
            modelAndView.addObject("user", user);
            return modelAndView;
        }
        return null;
    }

    @RequestMapping(value = "users", method = RequestMethod.POST)
    public View greetingSubmit(@RequestParam("action") String action, @RequestParam(value = "id", required = false) Long id, @RequestParam(value = "name", required = false) String name, @RequestParam(value = "last_name", required = false) String last_name, @RequestParam(value = "email", required = false) String email) {
        switch (action) {
            case "add":
                userService.add(new User(name, last_name, email));
                break;
            case "update":
                userService.update(new User(id, name, last_name, email));
                break;
            case "delete":
                userService.delete(id);
                break;
        }
        return new RedirectView("users");
    }
}