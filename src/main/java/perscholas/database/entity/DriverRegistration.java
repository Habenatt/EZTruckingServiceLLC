package perscholas.database.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;





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
@Table(name = "driver_registration")
public class DriverRegistration {





        @Id
        // this annotation is what tells hibernate that this variable is an auto
        // incremented primary key
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private Integer id;

       /* @Column(name = "user_id")
        private Integer userId;*/


        @Column(name = "dob")
        private String DOB;

        @Column(name = "license_number")
        private Integer licenseNumber;

        @Column(name = "expire_date")
        private String licenseExpire;

        @Column(name = "address")
        private String address;


        @Column(name = "truck_number")
        private Integer truckNumber;


        @Column(name = "trailer_number")
        private Integer trailerNumber;

       @Column(name = "image")
        private String licenseImage;

   /* @Column(name = "image")
    private String licenseImage;*/


   /* @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "truck_id", nullable = false)
    private User truckId;*/


    @OneToOne(fetch = FetchType.LAZY, optional = false)
        @JoinColumn(name = "user_id", nullable = false)
        private User userId;

       /* @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "user_id")
        private User user;
*/









    }


