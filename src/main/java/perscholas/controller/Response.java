package perscholas.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import perscholas.database.dao.ContactDAO;
import perscholas.database.entity.Contact;
import perscholas.database.entity.User;
import perscholas.form.ContactFormBean;

import javax.validation.Valid;

@RestController
public class Response {

    @Autowired
    private ContactDAO contactDao;


   /* @RequestMapping(method = RequestMethod.POST, value = "/users")
    public Response createUser(@RequestBody Contact contacts) {
        return userService.createUser(contacts);
    }
*/


    @RequestMapping(value = "/brokerSubmit", method = RequestMethod.POST)
    public ModelAndView registerBrokerSubmit(@Valid ContactFormBean cForm , BindingResult errors, ModelMap model) throws Exception {



        ModelAndView response = new ModelAndView();

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
                cForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("formBrokerKey", cForm);
            response.setViewName("home");
        }
        else {
            System.out.println("no error");
        }



        Contact contact = new Contact();


        contact.setPO(cForm.getPO());
        contact.setDriverName(cForm.getDriverName());
        contact.setPickupDate(cForm.getPickupDate());
        contact.setBrokerEmail(cForm.getBrokerEmail());

        contactDao.save(contact);

        System.out.println(cForm);

        response.setViewName("home");

        return response;
    }


}
