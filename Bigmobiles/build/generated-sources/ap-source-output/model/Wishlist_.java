package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Customers;
import model.Products;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2019-06-01T23:58:10")
@StaticMetamodel(Wishlist.class)
public class Wishlist_ { 

    public static volatile SingularAttribute<Wishlist, Products> productID;
    public static volatile SingularAttribute<Wishlist, Integer> whishlistID;
    public static volatile SingularAttribute<Wishlist, Customers> customerID;

}