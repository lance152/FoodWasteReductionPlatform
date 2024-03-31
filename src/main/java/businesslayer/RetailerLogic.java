/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package businesslayer;

import dataaccesslayer.InventoryDaoImpl;
import dataaccesslayer.SurplusFoodDaoImpl;
import java.util.List;
import model.Food;

/**
 *
 * @author lfrz1
 */
public class RetailerLogic {
    private InventoryDaoImpl inventoryDAO = null;
    private SurplusFoodDaoImpl surplusFoodDAO = null;
    
    public RetailerLogic() {
        inventoryDAO = new InventoryDaoImpl();
        surplusFoodDAO = new SurplusFoodDaoImpl();
    }
    
    public List<Food> getFoodInventoryByOwner(String owner) {
        return inventoryDAO.getFoodsByOwner(owner);
    }
    
    public List<Food> getAllSurplusFood() {
        return surplusFoodDAO.getAllSurplusFood();
    }
}
