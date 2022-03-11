package perscholas.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.DriverRegistration;
import perscholas.database.entity.TruckRegistration;

import java.util.List;

public interface TruckRegistrationDAO extends JpaRepository<TruckRegistration,Long> {

    public TruckRegistration findById(@Param("id") Integer id);

    @Query("select t from TruckRegistration t")
    public List<TruckRegistration> findAllTrucks();




    public TruckRegistration deleteById(@Param("id") Integer id);





}
