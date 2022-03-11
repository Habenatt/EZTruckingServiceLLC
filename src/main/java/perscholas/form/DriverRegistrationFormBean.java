package perscholas.form;

import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.hibernate.validator.constraints.Length;
import perscholas.validation.EmailUnique;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class DriverRegistrationFormBean {



        private Integer id;

        @Length(min=1, max=16, message = "First Name must  be between 1 and 6")
        private String firstName;

        // @NotEmpty(message = "lastName is required!")
    /*@Max(value=10, message="LAst Name must have 10 characters maximum!")
    @Min(value=3, message="LAst Name must have 10 characters minimum!")*/
        @Length(min=1, max=20, message = "Last Name must  be between 1 and 11")
        private String lastName;







       @NotEmpty(message = "Email is required!")
        // @Pattern(regexp = "")
       @EmailUnique(message = "Email must be unique")
        private String email;


        private String password;
        private String confirmPassword;

        private String userName;
        private String telephone;

        private String DOB;
        private Integer licenseNumber;

        private String licenseExpire;

        private String address;

        private Integer truckNumber;
        private Integer trailerNumber;

        private String licenseImage;







        private
        List<String> errorMessages = new ArrayList<>();


        @Override
        public String toString() {
            return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
        }

    }

