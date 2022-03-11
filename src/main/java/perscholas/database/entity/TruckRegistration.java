package perscholas.database.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "trucks")
public class TruckRegistration {
    @Id
    // this annotation is what tells hibernate that this variable is an auto
    // incremented primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;


    @Column(name = "owner_name")
    private String truckOwnerName;

    @Column(name = "address")
    private String address;

    @Column(name = "vin_number")
    private Integer VINNumber;

    @Column(name = "truck_number")
    private Integer truckNumber;

    @Column(name = "trailer_number")
    private Integer trailerNumber;

    @Column(name = "year")
    private String year;


    @Column(name = "make")
    private String make;


    /*@OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "driver_id", nullable = true)
    private DriverRegistration driverId;*/






}
