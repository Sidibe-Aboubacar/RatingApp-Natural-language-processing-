/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package groupe;


/**
 *
 * @author macbookpro
 */
public class Statistic {

    private int count;
    private int productid;
    private float avg;
    private float fivePer;
    private float fourPer;
    private float threePer;
    private float twoPer;
    private float onePer;
    private String  name;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    public float getAvg() {
        return avg;
    }

    public void setAvg(float avg) {
        this.avg = avg;
    }

    public float getFivePer() {
        return fivePer;
    }

    public void setFivePer(float fivePer) {
        this.fivePer = fivePer;
    }

    public float getFourPer() {
        return fourPer;
    }

    public void setFourPer(float fourPer) {
        this.fourPer = fourPer;
    }

    public float getThreePer() {
        return threePer;
    }

    public void setThreePer(float threePer) {
        this.threePer = threePer;
    }

    public float getTwoPer() {
        return twoPer;
    }

    public void setTwoPer(float twoPer) {
        this.twoPer = twoPer;
    }

    public float getOnePer() {
        return onePer;
    }

    public void setOnePer(float onePer) {
        this.onePer = onePer;
    }
    
    public String getProductName(int productid)
    {
        switch (productid) {
            case 112233:
                return "Iphone";
            case 223344:
                return "Samsung";
            case 334455:
                return "LG";
            default:
                return "Sony";
        }
    }

    public String getName(int productid) {
        
        switch (productid) {
            case 112233:
                return "Iphone";
            case 223344:
                return "Samsung";
            case 334455:
                return "LG";
            default:
                return "Sony";
        }
    }

    public void setName(String name) {
        this.name = name;
    }
}
