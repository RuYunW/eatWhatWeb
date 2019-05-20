package com.wry.jdbc.domain;

public class Food {
    private int id;
    private String foodname;
    private float foodprice;
    private String food_store_id;
    private String foodpic;
    private int starnum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public float getFoodprice() {
        return foodprice;
    }

    public void setFoodprice(float foodprice) {
        this.foodprice = foodprice;
    }

    public String getFood_store_id() {
        return food_store_id;
    }

    public void setFood_store_id(String food_store_id) {
        this.food_store_id = food_store_id;
    }

    public String getFoodpic() {
        return foodpic;
    }

    public void setFoodpic(String foodpic) {
        this.foodpic = foodpic;
    }

    public int getStarnum() {
        return starnum;
    }

    public void setStarnum(int starnum) {
        this.starnum = starnum;
    }
}
