package perscholas.database.dao;

import java.util.List;
import java.util.Map;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.User;
import perscholas.database.entity.UserRole;


public interface UserDAO extends JpaRepository<User,Long> {

   // @Query("select ur from UserRole ur where ur.user.id = :userId")
    public User findByEmail(@Param("email") String userId);

   // @Query("select u from User u where u.id = :id")
    public User findById(@Param("id") Integer id);
    @Query("select u from User u")
    public  List<User> findAllUsers();

    @Query("select u from User u")
    public    List<User> findAllEmployees();

    @Query("select u from User u")
    public  List<User> findAllDrivers();

    @Query(value="SELECT u.email, u.first_name, u.last_name, u.phone,u.type,u.username, d.truck_number, d.trailer_number, d.id FROM users u inner join driver_registration d ON u.id= d.user_id", nativeQuery = true)
    public  List<Map<String,Object>> findAllDriversAndUsers();

      @Query(value="SELECT u.email, u.first_name, u.last_name, u.phone,u.type,u.username, e.address, e.id FROM users u inner join employee_registration e ON u.id= e.user_id", nativeQuery = true)
      List<Map<String,Object>> findAllEmployeesAndUsers();

    @Query(value="SELECT u.email, u.first_name, u.last_name, u.phone,u.type,u.username, d.address,d.truck_number, d.trailer_number, d.id FROM users u inner join driver_registration d ON u.id= d.user_id WHERE u.first_name like %:firstName", nativeQuery = true)
    List<Map<String,Object>> findByFirstNameLikeIgnoreCase(@Param("firstName")String firstName);

    @Query("select ur from UserRole ur where ur.user.id = :userId")
    List<UserRole> getUserRoles(Integer userId);

    public List<User> findByFirstNameContainsIgnoreCaseAndLastNameContainsIgnoreCase(@Param("firstName") String firstName, @Param("lastName") String lastName);

    public List<User> findByFirstNameContainsIgnoreCase(String firstName);

    /*public List<User> findByLastName(@Param("lastName") String lastName);

   // @Query("select u from User u where u.firstName = :firstName and u.lastName = :lastName")
    public List<User> findByFirstNameIgnoreCaseAndLastNameIgnoreCase(@Param("firstName") String firstName, @Param("lastName") String lastName);*/




    /*public List<User> findByFirstNameIgnoreCaseOrLastNameIgnoreCase(@Param("firstName") String firstName, @Param("lastName") String lastName);


   // @Query("select u from User u where u.firstName = :firstName")
    public List<User> findByFirstNameIgnoreCase(String firstName);*/





  /* // @Query("select u from User u where u.userName = :username")
    public User findByUserName(@Param("userName") String userName);

    public User deleteById(@Param("id") Integer id);

//  @Query(value="SELECT u.* FROM users u WHERE u.first_name like %:firstName%", nativeQuery = true)
*//*
    public List<User> findByFirstNameLikeIgnoreCase(String firstName);
*/




}