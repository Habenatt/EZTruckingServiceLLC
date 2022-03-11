package perscholas.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.DriverRegistration;
import perscholas.database.entity.UpdateDriverLocation;

import java.util.List;
import java.util.Map;

public interface UpdateDriverLocationDAO extends JpaRepository<UpdateDriverLocation,Long> {

    public UpdateDriverLocation findById(@Param("id") Integer id);

    @Query(value="SELECT u.email, u.first_name, u.last_name, u.phone, d.truck_number, d.trailer_number, ud.id, ud.driver_location, ud.looking_load, ud.delivery_status \n" +
            "FROM users u inner join driver_registration d ON u.id= d.user_id INNER JOIN driver_daily_update ud ON ud.driver_id=d.id", nativeQuery = true)
    public  List<Map<String,Object>> findAllDriversUpdate();

    public UpdateDriverLocation findByUsername(@Param("username") String username);

    /*@Query(value="SELECT u.email, u.first_name, u.last_name, u.phone,u.type,u.username, d.address,d.truck_number, d.trailer_number, d.id FROM users u inner join driver_registration d ON u.id= d.user_id WHERE u.first_name like %:firstName", nativeQuery = true)
    public UpdateDriverLocation findByDriverId(@Param("driver_id") Integer driverId);*/

    @Query("select u from UpdateDriverLocation u")
    public List<UpdateDriverLocation> findAllUsers();




    public UpdateDriverLocation deleteById(@Param("id") Integer id);




}
