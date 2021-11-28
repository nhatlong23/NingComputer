/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Cart;
import entity.Customer;
import entity.Item;
import entity.categrory;
import entity.product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/**
 *
 * @author Long
 */
public class DAO {

    /**
     *
     * @return
     */
    //getAllproduct
    public static ArrayList<product> getListProduct() {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.product;";
        ArrayList<product> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product pr = new product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("description"));
                list.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<categrory> getCategrory() {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.categrory;"; //get categrory
        ArrayList<categrory> categrory = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                categrory pr = new categrory(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16));
                categrory.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categrory;
    }

    public static ArrayList<product> getListByCID(String cid) {         //getcid
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.product \n"
                + "where cateID = ?;"; //get cid
        ArrayList<product> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                product pr = new product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("description"));
                list.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static ArrayList<product> getLast() {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.product \n"
                + " ORDER BY RAND() LIMIT 4;";
        ArrayList<product> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product pr = new product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("description"));
                list.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    
    
    
    public static product getListByID(String id) {     
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.product \n"
                + "where id = ?;";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return new product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image1"),
                        rs.getString("image2"),
                        rs.getString("image3"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static ArrayList<product> searchBYNAME(String txtSearch) {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.product\n"
                + "where name like ?;";
        ArrayList<product> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                product pr = new product(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("image"),
                        rs.getDouble("price"),
                        rs.getString("title"),
                        rs.getString("description"));
                list.add(pr);
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Account login(String user, String pass) {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.account\n"
                + "where user = ?\n"
                + " and pass = ?;";

        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("uID"),
                        rs.getString("user"),
                        rs.getString("pass"),
                        rs.getInt("isSell"),
                        rs.getInt("isAdmin"),
                        rs.getString("email"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        Connection con = DBContext.getConnection();
        String sql = "SELECT * FROM ningcomputer.account\n"
                + "where user = ?\n";

        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("uID"),
                        rs.getString("user"),
                        rs.getString("pass"),
                        rs.getInt("isSell"),
                        rs.getInt("isAdmin"),
                        rs.getString("email"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void singup(String user, String pass, String email) {
        Connection con = DBContext.getConnection();
        String sql = "insert into ningcomputer.account( user, pass, email) values (?,?,?);";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteproduct(String pid) {
        Connection con = DBContext.getConnection();
        String sql = "delete from ningcomputer.product \n"
                + "where id = ?;";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static product getProduct(String txt) {
        Connection con = DBContext.getConnection();
        ArrayList<product> list = new ArrayList<>();
        String sql = "SELECT * FROM ningcomputer.product \n"
                + "where id = ?;";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, txt);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        
            1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getAcount(String user, String pass) {        //account customer
        Connection con = DBContext.getConnection();
        String sql = "select * from ningcomputer.customer\n"
                + " where username = ? "
                + "and password = ?;";
        try {
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(1, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getDouble("amount"),
                        rs.getString("username"),
                        rs.getString("password"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        ArrayList<product> list = dao.getListProduct(); //hàm test listProduct
        ArrayList<categrory> listC = dao.getCategrory();  //hàm test categrory
        for (categrory o : listC) {
            System.out.println(o);
        }
    }

    public ArrayList<Locale.Category> getListCategory() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
