package model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import model.Customers;

@Generated(value="EclipseLink-2.5.0.v20130507-rNA", date="2019-06-02T12:21:47")
@StaticMetamodel(OrderListThisMonth.class)
public class OrderListThisMonth_ { 

    public static volatile SingularAttribute<OrderListThisMonth, Integer> total;
    public static volatile SingularAttribute<OrderListThisMonth, String> processStatus;
    public static volatile SingularAttribute<OrderListThisMonth, String> orderID;
    public static volatile SingularAttribute<OrderListThisMonth, String> shipNote;
    public static volatile SingularAttribute<OrderListThisMonth, Boolean> oderState;
    public static volatile SingularAttribute<OrderListThisMonth, Customers> customerID;
    public static volatile SingularAttribute<OrderListThisMonth, String> shipName;
    public static volatile SingularAttribute<OrderListThisMonth, Date> shipDate;
    public static volatile SingularAttribute<OrderListThisMonth, String> shipPhone;
    public static volatile SingularAttribute<OrderListThisMonth, String> shipAddress;
    public static volatile SingularAttribute<OrderListThisMonth, Date> createDate;

}