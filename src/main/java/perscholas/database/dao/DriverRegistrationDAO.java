package perscholas.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.DriverRegistration;
import perscholas.database.entity.UserRole;

import java.util.List;
import java.util.Map;

public interface DriverRegistrationDAO extends JpaRepository<DriverRegistration,Long> {

    /*@Query("SELECT d.userId from  DriverRegistration d  WHERE d.userId  = :id")*/
    public DriverRegistration findById(@Param("id") Integer id);

    @Query("select d.userId from DriverRegistration d")
    public List<DriverRegistration> findAllDrivers();

  @Query(value="SELECT  d.* FROM users u inner join driver_registration d ON u.id = d.user_id WHERE u.email = :username", nativeQuery = true)
    public DriverRegistration findByEmailLike(String username);





    public DriverRegistration deleteById(@Param("id") Integer id);

    /*@Query("SELECT d from  DriverRegistration d  WHERE d.userId  = :id")*/
    public DriverRegistration findByUserId(Integer id);


   /* @Query("select ur from UserRole ur where ur.user.id = :userId")
    List<UserRole> getUserRoles(Integer userId);*/

    public DriverRegistration deleteByUserId(@Param("user_id") Integer id);



}
