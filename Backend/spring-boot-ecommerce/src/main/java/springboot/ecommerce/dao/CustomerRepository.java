package springboot.ecommerce.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import springboot.ecommerce.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

    Customer findByEmail(String theEmail);
}
