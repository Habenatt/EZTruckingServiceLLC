package perscholas.database.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "driver_daily_update")
public class UpdateDriverLocation {






        @Id
        // this annotation is what tells hibernate that this variable is an auto
        // incremented primary key
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private Integer id;

       /* @Column(name = "user_id")
        private Integer userId;*/


        @Column(name = "driver_location")
        private String driverLocation;

        @Column(name = "looking_load")
        private String lookingLoad;

        @Column(name = "delivery_status")
        private String deliveryStatus;

    @Column(name = "username")
       private String username;

   /* @Column(name = "password")
       private String password;*/
        /*@Column(name = "truck_id")
        private Integer truckId;*/



    @ManyToOne
    @JoinColumn(name = "driver_id")
     private DriverRegistration driverId;

       /* @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "user_id")
        private User user;
*/









    }




