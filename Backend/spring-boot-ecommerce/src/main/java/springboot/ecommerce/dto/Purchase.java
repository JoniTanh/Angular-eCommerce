package springboot.ecommerce.dto;

import lombok.Data;
import springboot.ecommerce.entity.Address;
import springboot.ecommerce.entity.Customer;
import springboot.ecommerce.entity.Order;
import springboot.ecommerce.entity.OrderItem;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;


}
