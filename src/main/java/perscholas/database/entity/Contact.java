package perscholas.database.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity
@Table(name = "contact")
public class Contact {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "po")
    private String PO;
    @Column(name = "driver_name")
    private String driverName;

    @Column(name = "pickup_date")
    private String pickupDate;

    @Column(name = "broker_email")
    private String brokerEmail;
}
