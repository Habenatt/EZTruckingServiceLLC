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
import javax.validation.constraints.Pattern;
import java.util.ArrayList;
import java.util.List;




@Getter
@Setter
public class EmployeeRegistrationFormBean {



        private Integer id;

        @NotEmpty(message = "firstName is required!")
        @Length(min=1, max=26, message = "First Name must  be between 1 and 26")
        private String firstName;

         @NotEmpty(message = "lastName is required!")
    /*@Max(value=10, message="LAst Name must have 10 characters maximum!")
    @Min(value=3, message="LAst Name must have 10 characters minimum!")*/
        @Length(min=1, max=26, message = "Last Name must  be between 1 and 26")
        private String lastName;

       /* // @NotNull(message = "Age is required!")
        @Max(value=18, message="Age must be 18  maximum!")
        @Min(value=3, message="Age must be 3  minimum!")
        private Integer  age;*/

        @NotEmpty(message = "Telephone number is required!")
        private String telephone;



        //@Pattern(regexp = "")
        @EmailUnique(message = "Email must be unique")
        @NotEmpty(message = "Email is required!")
        private String email;




        private String userName;

        private String password;

        private String confirmPassword;

        private String address;

        private
        List<String> errorMessages = new ArrayList<>();


        @Override
        public String toString() {
            return ReflectionToStringBuilder.toString(this, ToStringStyle.MULTI_LINE_STYLE);
        }


}
