/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package businesslayer;

import dataaccesslayer.UsersDaoImpl;
import model.User;

/**
 *
 * @author lfrz
 */
public class UserLoginLogic {
    private UsersDaoImpl UsersDao = null;

    public UserLoginLogic() {
        UsersDao = new UsersDaoImpl();
    }
    
    public void userRegister(String username, String name, String email, String password, int usertype) {
        User user = new User();
        user.setUsername(username);
        user.setName(name);
        user.setEmail(email);
        user.setPassword(password);
        user.setUserType(usertype);
        UsersDao.addUser(user);
    }
    
    public User userLogin(String username, String password) {
        User user = UsersDao.getUserByUsername(username);
        return user;
    }
}
