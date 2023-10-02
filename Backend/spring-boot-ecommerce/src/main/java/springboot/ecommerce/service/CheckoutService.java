package springboot.ecommerce.service;

import springboot.ecommerce.dto.Purchase;
import springboot.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
