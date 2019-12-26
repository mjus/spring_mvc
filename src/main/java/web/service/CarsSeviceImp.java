package web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.dao.CarDaoImp;
import web.model.Car;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CarsSeviceImp implements CarsService{

    @Autowired
    private CarDaoImp carDao;

    @Override
    @Transactional
    public List<Car> getAllCars() {
        return carDao.getAllCars();
    }
}
