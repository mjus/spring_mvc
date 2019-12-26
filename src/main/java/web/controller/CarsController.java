package web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import web.model.Car;
import web.service.CarsService;

import java.util.List;

@Controller
@RequestMapping("/")
public class CarsController {
    private final CarsService carsService;

    public CarsController(CarsService carsService) {
        this.carsService = carsService;
    }

    @RequestMapping(value = "cars", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        List<Car> messages = carsService.getAllCars();
        model.addAttribute("messages", messages);
        return "cars";
    }
}