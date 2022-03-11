package perscholas.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import perscholas.database.entity.EmployeeRegistration;
import perscholas.database.entity.UserRole;


import java.util.List;

public interface EmployeeRegistrationDAO extends JpaRepository<EmployeeRegistration,Long> {




    public EmployeeRegistration findById(@Param("id") Integer id);

    @Query("select e from EmployeeRegistration e")
    public List<EmployeeRegistration> findAllUsers();





    public EmployeeRegistration deleteById(@Param("id") Integer id);


    public EmployeeRegistration findByUserId(@Param("user_id") Integer id);

    public EmployeeRegistration deleteByUserId(@Param("user_id") Integer id);

    /*public EmployeeRegistration findByU@Param("user_id") Integer id);*/





}
