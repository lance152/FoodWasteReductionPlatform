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

    public void registerUser(User user) {
        UsersDao.addUser(user);
    }
}
