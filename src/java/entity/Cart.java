/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Long
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    private Item getItemById(int id) {
        for (Item i : items) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public int getQuantityById(int id) {         //tra ve so luong khi biet id
        return getItemById(id).getQuantity();
    }

    //them vao cart
    public void getItem(Item t) {
        //co o cart
        if (getItemById(t.getProduct().getId())!= null) {
            Item i = getItemById(t.getProduct().getId());
            i.setQuantity(i.getQuantity()+t.getQuantity());
        } else {
            //chua co
            items.add(t);
        }
    }
    public void removeItem(int id){
        if(getItemById(id)!=null){
            items.remove(getItemById(id));
        }
    }
    public double getTotalMoney(){
        double t=0;
        for(Item i:items)
            t+=i.getQuantity()*i.getPrice();
        return t;
    }
}
