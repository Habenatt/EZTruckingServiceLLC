package perscholas.database.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import perscholas.validation.EmailUnique;


@Getter
@Setter
@Entity
@Table(name = "employee_registration")
public class EmployeeRegistration {


        @Id
        // this annotation is what tells hibernate that this variable is an auto
        // incremented primary key
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private Integer id;



        @Column(name = "address")
        private String address;


        @OneToOne(fetch = FetchType.LAZY, optional = false)
        @JoinColumn(name = "user_id", nullable = false)
        private User userId;



       /* @OneToOne(cascade = CascadeType.ALL)
        @JoinColumn(name = "user_id")
        private User user;*/

       /* @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "user_id")
        private User user;
*/









}
