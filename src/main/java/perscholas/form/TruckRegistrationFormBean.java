package perscholas.form;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;


@Getter
@Setter
public class TruckRegistrationFormBean {

    private Integer id;



    private String truckOwnerName;


    private String address;


    private Integer VINNumber;


    private Integer truckNumber;


    private Integer trailerNumber;


    private String year;



    private String make;

    private
    List<String> errorMessages = new ArrayList<>();


    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }

}
