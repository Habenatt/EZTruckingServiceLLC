package perscholas.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.Contact;
import perscholas.database.entity.DriverRegistration;
import perscholas.database.entity.TruckRegistration;

import java.util.List;

public interface ContactDAO extends JpaRepository<Contact,Long> {

    public Contact findById(@Param("id") Integer id);

    public Contact deleteById(@Param("id") Integer id);

    @Query("select c from Contact c")
    public List<Contact> findAllContacts();

}
