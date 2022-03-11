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
public class ContactFormBean {

    private Integer id;

    @NotEmpty
    private String PO;

    private String driverName;
    private String pickupDate;

    @NotEmpty
    private String brokerEmail;

   private String  status;





    private
    List<String> errorMessages = new ArrayList<>();


    public ContactFormBean(Integer id) {
        this.id = id;
        this.status = "Back to you soon";
    }


    @Override
    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
    }
}
