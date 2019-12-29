package web.dao;

import web.model.User;

import java.util.List;

public interface UserDao {

    void add(User user);

    User get(long id);

    List<User> getAll();

    void update(User user);

    void delete(long id);

    User findUserByEmail(String email);
}
