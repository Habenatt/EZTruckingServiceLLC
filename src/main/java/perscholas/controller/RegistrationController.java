package perscholas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import perscholas.database.dao.*;
import perscholas.database.entity.*;
import perscholas.form.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;
import java.util.Map;

import static org.apache.commons.lang3.StringUtils.*;

@Controller
@RequestMapping("/EZ-TruckingService")
public class RegistrationController {

    @Autowired
    private UserDAO userDao ;

    @Autowired
    private UserRoleDAO userRoleDao ;


    @Autowired
    private EmployeeRegistrationDAO employeeDao ;

    @Autowired
    private DriverRegistrationDAO driverDao;

    @Autowired
    private TruckRegistrationDAO truckDao;

    @Autowired
    private UpdateDriverLocationDAO updateLocationDao;

    @Autowired
    private ContactDAO contactDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

//searching listing  data from database to the table


    @RequestMapping(value = "/registerDriver", method = RequestMethod.GET)
    public ModelAndView registerDriver(@RequestParam(required=false) Integer id) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/registerDriver");

        if(id!=null){

            System.out.println("this form id is not null");
            System.out.println(id);
            DriverRegistration driver =driverDao.findById(id);
            User user= driver.getUserId();
            DriverRegistrationFormBean dForm= new DriverRegistrationFormBean();

            dForm.setEmail(user.getEmail());
            dForm.setFirstName(user.getFirstName());
            dForm.setLastName(user.getLastName());
            dForm.setUserName(user.getUserName());
            dForm.setTelephone(user.getTelephone());
            dForm.setPassword(user.getPassword());
            dForm.setAddress(driver.getAddress());
            dForm.setId(driver.getId());
            dForm.setDOB(driver.getDOB());
            dForm.setLicenseNumber(driver.getLicenseNumber());
            dForm.setLicenseExpire(driver.getLicenseExpire());
            dForm.setLicenseImage(driver.getLicenseImage());
            dForm.setTrailerNumber(driver.getTrailerNumber());
            dForm.setTruckNumber(driver.getTruckNumber());
            dForm.setLicenseImage(driver.getLicenseImage());

            response.addObject("formDriverKey", dForm);
        }
        else {
            DriverRegistrationFormBean dForm= new DriverRegistrationFormBean();
            response.addObject("formDriverKey", dForm);
        }

        return response;
    }



    @RequestMapping(value = "/registerDriverSubmit", method = RequestMethod.POST)
    public ModelAndView registerDriverSubmit( @Valid DriverRegistrationFormBean dForm , BindingResult errors, ModelMap model) throws Exception {



        ModelAndView response = new ModelAndView();
        System.out.println("=========================================start=====================");
        System.out.println(dForm);
        System.out.println("=========================================end=====================");

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
                dForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("formDriverKey", dForm);
            response.setViewName("registration/registerDriver");
        }
        else  {
            System.out.println("no error");
            DriverRegistration driver;
            User user;

            if(dForm.getId() == null) {
                System.out.println("this form id is null");
                //create one user in database
                driver = new DriverRegistration();
                user= new User();
            }
            else
            {
                //update record of one user in database

                System.out.println("this form id is not null");


                driver=driverDao.findById(dForm.getId());



                user= driver.getUserId();

            }



            String encryptedPassword = passwordEncoder.encode(dForm.getPassword());


            user.setPassword(encryptedPassword);
            user.setEmail(dForm.getEmail());
            user.setFirstName(dForm.getFirstName());
            user.setLastName(dForm.getLastName());
            user.setUserName(dForm.getUserName());
            user.setTelephone(dForm.getTelephone());
            user.setType("DRIVER");

           userDao.save(user);
            System.out.println(user);


            driver.setUserId(user);
            driver.setDOB(dForm.getDOB());
            driver.setLicenseNumber(dForm.getLicenseNumber());
            driver.setLicenseExpire(dForm.getLicenseExpire());
            driver.setLicenseImage(dForm.getLicenseImage());
            driver.setTrailerNumber(dForm.getTrailerNumber());
            driver.setTruckNumber(dForm.getTruckNumber());
            driver.setAddress(dForm.getAddress());
            driverDao.save(driver);
            System.out.println(driver);



            response.setViewName("registration/driverRegistrationSubmited");

            model.addAttribute("firstName", user.getFirstName());
            model.addAttribute("lastName", user.getLastName());
            model.addAttribute("userName", user.getUserName());
            model.addAttribute("email", user.getEmail());
            model.addAttribute("password", dForm.getPassword());
            model.addAttribute("telephone", user.getTelephone());
            model.addAttribute("id", driver.getId());
            model.addAttribute("idu", user.getId());
            model.addAttribute("address", driver.getAddress());

            model.addAttribute("DOB", driver.getDOB());
            model.addAttribute("licenseNo", driver.getLicenseNumber());
            model.addAttribute("licenseEx", driver.getLicenseExpire());
            model.addAttribute("truckNo", driver.getTruckNumber());
            model.addAttribute("trailerNo", driver.getTrailerNumber());
            model.addAttribute("licenseImage", driver.getLicenseImage());




        }

        return response;
    }




    @RequestMapping(value = "/registerTruck", method = RequestMethod.GET)
    public ModelAndView registerTruck(@RequestParam(required=false) Integer id) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/registerTruck");

        if(id!=null){

            System.out.println("this form id is not null");
            System.out.println(id);
            TruckRegistration truck =truckDao.findById(id);
            TruckRegistrationFormBean tForm= new TruckRegistrationFormBean();

            tForm.setId(truck.getId());
            tForm.setTruckOwnerName(truck.getTruckOwnerName());
            tForm.setAddress(truck.getAddress());
            tForm.setVINNumber(truck.getVINNumber());
            tForm.setTrailerNumber(truck.getTrailerNumber());
            tForm.setTruckNumber(truck.getTruckNumber());
            tForm.setYear(truck.getYear());
            tForm.setMake(truck.getMake());
            response.addObject("formTruckKey", tForm);
        }
        else {
            TruckRegistrationFormBean tForm= new TruckRegistrationFormBean();
            response.addObject("formTruckKey", tForm);
        }

        return response;
    }





    @RequestMapping(value = "/registerTruckSubmit", method = RequestMethod.POST)
    public ModelAndView registerTruckSubmit( @Valid TruckRegistrationFormBean tForm , BindingResult errors, ModelMap model) throws Exception {



        ModelAndView response = new ModelAndView();
        System.out.println("=========================================start=====================");
        System.out.println(tForm);
        System.out.println("=========================================end=====================");

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
              tForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("formTruckKey", tForm);
            response.setViewName("registration/registerTruck");
        }
        else  {
            System.out.println("no error");
            TruckRegistration truck;

            if(tForm.getId() == null) {
                System.out.println("this form id is null");
                //create one user in database
                truck = new TruckRegistration();
            }
            else
            {
                //update record of one user in database

                System.out.println("this form id is not null");


                truck=truckDao.findById(tForm.getId());


            }
            System.out.println("trying to add");
            truck.setTruckOwnerName(tForm.getTruckOwnerName());
            truck.setAddress(tForm.getAddress());
            truck.setVINNumber(tForm.getVINNumber());
            truck.setTrailerNumber(tForm.getTrailerNumber());
            truck.setTruckNumber(tForm.getTruckNumber());
            truck.setYear(tForm.getYear());
            truck.setMake(tForm.getMake());

            truckDao.save(truck);

            System.out.println(tForm);



            response.setViewName("registration/truckRegistrationSubmited");

            model.addAttribute("ownerName", truck.getTruckOwnerName());
            model.addAttribute("id", truck.getId());
            model.addAttribute("address", truck.getAddress());
            model.addAttribute("year", truck.getYear());
            model.addAttribute("vinNumber", truck.getVINNumber());
            model.addAttribute("truckNo", truck.getTruckNumber());
            model.addAttribute("trailerNo", truck.getTrailerNumber());
            model.addAttribute("make", truck.getMake());




        }

        return response;
    }



    @RequestMapping(value = "/brokerSubmit", method = RequestMethod.POST)
    public ModelAndView registerBrokerSubmit(@Valid ContactFormBean cForm , BindingResult errors, ModelMap model) throws Exception {



        ModelAndView response = new ModelAndView();

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
                cForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("brokerKey", "not valid data");
            response.setViewName("home");
        }
        else {
            System.out.println("no error");
            response.addObject("brokerKey", "We will contact you Soon! be safe");
            response.setViewName("home");

            Contact contact = new Contact();

    contact.setPO(cForm.getPO());
    contact.setDriverName(cForm.getDriverName());
    contact.setPickupDate(cForm.getPickupDate());
    contact.setBrokerEmail(cForm.getBrokerEmail());

    contactDao.save(contact);

    response.addObject("formBrokerKey", cForm);
    System.out.println(cForm);
    model.addAttribute("statusMessage", "Thanks, Back to you soon!");

    response.setViewName("home");

        }

        return response;
    }


    @RequestMapping(value = "/DeleteBroker", method = RequestMethod.GET)
    public ModelAndView DeleteBroker(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        Contact con;
        con=contactDao.findById(id);
        contactDao.delete(con);
        response.setViewName("redirect:/admin/broker");
        return response;

    }


    @RequestMapping(value = "/DeleteBroker2", method = RequestMethod.GET)
    public ModelAndView DeleteBroker2(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        Contact con;
        con=contactDao.findById(id);
        contactDao.delete(con);
        response.setViewName("redirect:/EZ-TruckingService/broker2");
        return response;

    }

    @RequestMapping(value =  "/broker2" , method = RequestMethod.GET)
    public ModelAndView broker2(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("employee/employeeHomePage2");
        List<Contact> trucks=contactDao.findAllContacts();
        response.addObject("contactListKey", trucks);
        return response;
    }


    @RequestMapping(value = "/updateLocationSubmit", method = RequestMethod.POST)
    public ModelAndView updateLocationSubmit(@Valid UpdateDriverLocationFormBean udForm , BindingResult errors, ModelMap model) throws Exception {

        ModelAndView response = new ModelAndView();
        System.out.println(udForm);

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
                udForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
                response.addObject("updateFormBeanKey3", "Update us your location please!");
            }

            response.addObject("updateFormBeanKey", udForm);
            response.setViewName("driver/driverHomePage");
        }

        else  {
            System.out.println("no error");
            response.addObject("updateFormBeanKey4", "Thanks for the Update!!");
            UpdateDriverLocation driverLocation;
           DriverRegistration driver;
            User user;
              Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

                String username = ((UserDetails)principal).getUsername();
                System.out.println(username +"is the email logged in");

            if(updateLocationDao.findByUsername(username) == null) {
                System.out.println("this driver  is new");
                //create one user in database
                driverLocation= new UpdateDriverLocation();
                user=userDao.findByEmail(username);
                System.out.println(user.getId() +"userID");

          driver= driverDao.findByEmailLike(username);


            }
            else
            {
                //update record of one user in database
                System.out.println("this driver  is not new");
                driverLocation=updateLocationDao.findByUsername(username);
                driver =  driverLocation.getDriverId();
                user= driver.getUserId();
                System.out.println("USERName:"+driverLocation.getUsername());
            }
            /*String encryptedPassword = passwordEncoder.encode(udForm.getPassword());

            driverLocation.setPassword(encryptedPassword);*/
            driverLocation.setUsername(username);
            driverLocation.setDriverLocation(udForm.getDriverLocation());
            driverLocation.setDeliveryStatus(udForm.getDeliveryStatus());
            driverLocation.setLookingLoad(udForm.getLookingLoad());

            driverLocation.setDriverId(driver);
//            driverLocation.setDriverId(udF);

            updateLocationDao.save(driverLocation);
            System.out.println(driverLocation.getId());
            response.setViewName("driver/driverHomePage");
            response.addObject("updateFormBeanKey", udForm);

            model.addAttribute("username", driverLocation.getUsername());
            model.addAttribute("location", driverLocation.getDriverLocation());
            model.addAttribute("LookingLoad", driverLocation.getLookingLoad());
          /*  model.addAttribute("password", udForm.getPassword());*/
            model.addAttribute("deliveryStatus", driverLocation.getDeliveryStatus());
            model.addAttribute("id", driverLocation.getId());
            model.addAttribute("address",driverLocation.getDriverId());
        }
        return response;
    }



    @RequestMapping(value = "/registerEmployee", method = RequestMethod.GET)
    public ModelAndView registerEmployee(@RequestParam(required=false) Integer id) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/registerEmployee");
        if(id==null){
            System.out.println("no ID: ");
        }

        if(id!=null){

            System.out.println("this form id is not null");
            System.out.println(id);
            EmployeeRegistration employee =employeeDao.findById(id);
            User user= employee.getUserId();
            EmployeeRegistrationFormBean eForm= new EmployeeRegistrationFormBean();

            eForm.setEmail(user.getEmail());
            eForm.setFirstName(user.getFirstName());
            eForm.setLastName(user.getLastName());
            eForm.setUserName(user.getUserName());
            eForm.setTelephone(user.getTelephone());
          /*  eForm.setPassword(user.getPassword());*/
            eForm.setAddress(employee.getAddress());
            eForm.setId(employee.getId());

            response.addObject("formBeanKey", eForm);
        }
        else {
            EmployeeRegistrationFormBean eForm= new EmployeeRegistrationFormBean();
            response.addObject("formBeanKey", eForm);
        }

        return response;
    }


    @RequestMapping(value = "/registerEmployeeSubmit", method = RequestMethod.POST)
    public ModelAndView registerEmployeeSubmit(@Valid EmployeeRegistrationFormBean eForm ,  BindingResult errors, ModelMap model) throws Exception {


        ModelAndView response = new ModelAndView();

        System.out.println(eForm);

        if(errors.hasErrors()) {
            for (FieldError error : errors.getFieldErrors()) {
                eForm.getErrorMessages().add(error.getDefaultMessage());
                System.out.println("error field = " + error.getField() + " message = " + error.getDefaultMessage());
            }

            response.addObject("formBeanKey", eForm);
            response.setViewName("registration/registerEmployee");
        }
        else  {
            System.out.println("no error");
            EmployeeRegistration employee;
            User user;

            if(eForm.getId() == null) {
                System.out.println("this form id is null");
                //create one user in database
                employee = new EmployeeRegistration();
                user= new User();
            }
            else
            {
                //update record of one user in database

                System.out.println("this form id is not null");
                System.out.println(eForm.getId());

                employee=employeeDao.findById(eForm.getId());

                System.out.println("EMPLOYEE:   "+employee.getId());
                System.out.println("USER:"+employee.getUserId());

                user= employee.getUserId();

                System.out.println("USER:"+user.getId());
                System.out.println("EMPLOYEE"+employee.getId());
                System.out.println("EMPLOYEE1"+employee.getId());
                System.out.println("EMPLOYEE2"+employee.getUserId());
                System.out.println("EMPLOYEE3"+employeeDao.findById(employee.getId()));
//                user= userDao.findById(eForm.getId());
                System.out.println("USER:"+user.getId());
            }



         String encryptedPassword = passwordEncoder.encode(eForm.getPassword());

            user.setPassword(encryptedPassword);
            user.setEmail(eForm.getEmail());
            user.setFirstName(eForm.getFirstName());
            user.setLastName(eForm.getLastName());
            user.setUserName(eForm.getUserName());
            user.setTelephone(eForm.getTelephone());
            user.setType("Employee");

            userDao.save(user);
            System.out.println(user.getId());


            employee.setUserId(user);
            employee.setAddress(eForm.getAddress());
            employeeDao.save(employee);
            System.out.println(employee.getId());



            response.setViewName("registration/employeeRegistrationSubmited");

            model.addAttribute("firstName", user.getFirstName());
            model.addAttribute("lastName", user.getLastName());
            model.addAttribute("userName", user.getUserName());
            model.addAttribute("email", user.getEmail());
            model.addAttribute("password", eForm.getPassword());
            model.addAttribute("telephone", user.getTelephone());
           model.addAttribute("id", employee.getId());
            model.addAttribute("idu", user.getId());
            model.addAttribute("address",employee.getAddress());




        }

        return response;
    }





//Deleting User
    @RequestMapping(value = "/deleteUserEmployee", method = RequestMethod.GET)
    public ModelAndView Delete(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        EmployeeRegistration emp;
        User user;

        emp=employeeDao.findById(id);


        System.out.println("employee:"+ id);
        System.out.println("employee:"+ emp.getUserId());
        System.out.println("employee:"+ emp.getId());
        employeeDao.delete(emp);
     userDao.delete(emp.getUserId());



        response.setViewName("registration/registerEmployee");


        return response;

    }

    @RequestMapping(value = "/DeleteUpdateDriver", method = RequestMethod.GET)
    public ModelAndView DeleteUpdateDriver(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
       UpdateDriverLocation udl;
        udl=updateLocationDao.findById(id);
        if ( udl != null ) {
            updateLocationDao.delete(udl);
        }

        response.setViewName("redirect:/EZ-TruckingService/ListAllUpdatesFromDrivers");
        return response;

    }



    @RequestMapping(value = "/DeleteUpdate2", method = RequestMethod.GET)
    public ModelAndView DeleteUpdate2(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        UpdateDriverLocation udl;
        response.setViewName("redirect:/EZ-TruckingService/broker2");
        udl=updateLocationDao.findById(id);
        if ( udl != null ) {
            updateLocationDao.delete(udl);
        }

//        response.setViewName("admin/AdminHomePage2");
        return response;

    }

    //Deleting Driver from two tables
    @RequestMapping(value = "/deleteUserDriver", method = RequestMethod.GET)
    public ModelAndView deleteUserDriver(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        DriverRegistration dri;
        User user;

        dri=driverDao.findById(id);


        System.out.println("driver:"+ id);
        System.out.println("driver:"+ dri.getUserId());
        System.out.println("driver:"+ dri.getId());

        driverDao.delete(dri);
        userDao.delete(dri.getUserId());

        response.setViewName("redirect:/EZ-TruckingService/ListAllDriversAndUsers");


        return response;

    }




    //Delleting User
    @RequestMapping(value = "/deleteTruck", method = RequestMethod.GET)
    public ModelAndView DeleteTruck(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        TruckRegistration trk;


        trk=truckDao.findById(id);
//        user= userDao.findById(eForm.getId());

        System.out.println("truck:"+ id);
        System.out.println("truck1:"+ trk.getId());
//        System.out.println("user:"+ user.getId());
        truckDao.delete(trk);

        response.setViewName("redirect:/EZ-TruckingService/ListAllTrucks");


        return response;

    }

    //Delleting User
    @RequestMapping(value = "/deleteTruck2", method = RequestMethod.GET)
    public ModelAndView DeleteTruck2(@RequestParam(required=true) Integer id ) throws Exception {
        ModelAndView response = new ModelAndView();
        TruckRegistration trk;


        trk=truckDao.findById(id);
//        user= userDao.findById(eForm.getId());

        System.out.println("truck:"+ id);
        System.out.println("truck1:"+ trk.getId());
//        System.out.println("user:"+ user.getId());
        truckDao.delete(trk);

     response.setViewName("redirect:/EZ-TruckingService/ListAllTrucks");


        return response;

    }

//List all user from database




    @RequestMapping(value = "/ListAllTrucks", method = RequestMethod.GET)
    public ModelAndView ListAllTrucks() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage2");
        List<TruckRegistration> trucks=truckDao.findAllTrucks();
        response.addObject("truckListKey", trucks);

        return response;
    }


    @RequestMapping(value = "/ListAllDrivers", method = RequestMethod.GET)
    public ModelAndView ListAllDrivers() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage");
        List<User> drivers=userDao.findAllDrivers();
        response.addObject("userListKey", drivers);

        return response;
    }

    @RequestMapping(value = "/ListAllDrivers2", method = RequestMethod.GET)
    public ModelAndView ListAllDrivers2() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("employee/employeeHomePage");
        List<User> drivers=userDao.findAllDrivers();
        response.addObject("userListKey", drivers);

        return response;
    }

    @RequestMapping(value = "/ListAllDriversAndUsers", method = RequestMethod.GET)
    public ModelAndView ListAllDriversAndUsers() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage");
        List<Map<String,Object>> driversandUsers=userDao.findAllDriversAndUsers();
        response.addObject("driverUserListKey", driversandUsers);

        return response;
    }

    @RequestMapping(value = "/ListAllUpdatesFromDrivers", method = RequestMethod.GET)
    public ModelAndView ListAllUpdatesFromDrivers() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage2");
        List<Map<String,Object>> driversUpdate=updateLocationDao.findAllDriversUpdate();
        response.addObject("driverUpdateListKey", driversUpdate);

        return response;
    }

    @RequestMapping(value = "/ListAllDriversAndUsers2", method = RequestMethod.GET)
    public ModelAndView ListAllDriversAndUsers2() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("employee/employeeHomePage");
        List<Map<String,Object>> driversandUsers=userDao.findAllDriversAndUsers();
        response.addObject("driverUserListKey", driversandUsers);

        return response;
    }


   @RequestMapping(value = "/ListAllDriversAndUsersByName", method = RequestMethod.GET)
    public ModelAndView ListAllDriversAndUsersByName(@RequestParam(required = false) String search) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage");
        response.addObject("search", search);

        if(!isEmpty(search) ){
            List<Map<String,Object>> driversAndUsers=userDao.findByFirstNameLikeIgnoreCase(search);
            response.addObject("driverUserListKeyByName", driversAndUsers);

        }


        return response;
    }


    @RequestMapping(value = "/ListAllDriversAndUsersByName2", method = RequestMethod.GET)
    public ModelAndView ListAllDriversAndUsersByName2(@RequestParam(required = false) String search) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("employee/employeeHomePage");
        response.addObject("search", search);

        if(!isEmpty(search) ){
            List<Map<String,Object>> driversAndUsers=userDao.findByFirstNameLikeIgnoreCase(search);
            response.addObject("driverUserListKeyByName", driversAndUsers);

        }


        return response;
    }


    @RequestMapping(value = "/ListAllEmployeesAndUsers", method = RequestMethod.GET)
    public ModelAndView ListAllEmployeesAndUsers() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage");
        List<Map<String,Object>> employeesAndUsers=userDao.findAllEmployeesAndUsers();
        response.addObject("employeeUserListKey", employeesAndUsers);

        return response;
    }

    @RequestMapping(value = "/ListAllEmployeesAndUsers2", method = RequestMethod.GET)
    public ModelAndView ListAllEmployeesAndUsers2() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("employee/employeeHomePage");
        List<Map<String,Object>> employeesAndUsers=userDao.findAllEmployeesAndUsers();
        response.addObject("employeeUserListKey", employeesAndUsers);

        return response;
    }


    @RequestMapping(value = "/ListAllDriversByName", method = RequestMethod.GET)

    public ModelAndView ListAllDriversByName(@RequestParam(required = false) String search, @RequestParam(required = false) String firstName, @RequestParam(required = false) String lastName) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage");
        //response.addObject("formBeanKey", form);

        response.addObject("fname", firstName);
        response.addObject("lname", lastName);
        response.addObject("search", search);

        if(!isEmpty(search) ){
            List<User> users=userDao.findByFirstNameContainsIgnoreCase(search);

            response.addObject("userListKey", users);


        }

        if(!isEmpty(firstName) && !isEmpty(lastName)){
            User u= new User();
            u.setFirstName(firstName);
            u.setLastName(lastName);
            List<User> users=userDao.findByFirstNameContainsIgnoreCaseAndLastNameContainsIgnoreCase(firstName, lastName);
            response.addObject("userListKey", users);

        }

        return response;
    }





    //List all user from database
    @RequestMapping(value = "/containsIgnoreCase", method = RequestMethod.GET)
    public ModelAndView containsIgnoreCase( @RequestParam(required = false) String firstName, @RequestParam(required = false) String lastName) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("registration/userList");
        //response.addObject("formBeanKey", form);
        response.addObject("fname", firstName);
        response.addObject("lname", lastName);
        //response.setViewName("registration/userList");
        List<User> users=userDao.findByFirstNameContainsIgnoreCaseAndLastNameContainsIgnoreCase(firstName, lastName);
        response.addObject("userListKey", users);
        return response;
    }



}
