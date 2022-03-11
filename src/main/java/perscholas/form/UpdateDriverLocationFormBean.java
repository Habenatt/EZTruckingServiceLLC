package perscholas.form;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class UpdateDriverLocationFormBean {

    private Integer id;
    private String username;
    /* private String password;*/
    @NotEmpty
    private String driverLocation;
    private String deliveryStatus;
    private String lookingLoad;

    private Integer driverId;



    private
    List<String> errorMessages = new ArrayList<>();


    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }



    /*private Integer id;



    private String truckOwnerName;


    private String address;*/

}
