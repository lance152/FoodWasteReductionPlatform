/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dataaccesslayer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Food;

/**
 *
 * @author lfrz1
 */
public class InventoryDaoImpl {
    
    public List<Food> getFoodsByOwner(String owner) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        ArrayList<Food> foods = null;
        try {
            DataSource ds = new DataSource();
            con = ds.createConnection();
            pstmt = con.prepareStatement(
                    "SELECT uid, name, location, owner, quantity, price FROM Inventory WHERE owner = ?");
            pstmt.setString(1, owner);
            rs = pstmt.executeQuery();
            foods = new ArrayList<Food>();
            while (rs.next()) {
                Food food = new Food();
                food.setUid(rs.getInt("uid"));
                food.setName(rs.getString("name"));
                food.setLocation(rs.getString("location"));
                food.setOwner(rs.getString("owner"));
                food.setQuantity(rs.getInt("quantity"));
                food.setPrice(rs.getInt("price"));
                foods.add(food);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
        }
        return foods;
    }
}
