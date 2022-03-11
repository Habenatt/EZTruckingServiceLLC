package perscholas.controller;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import perscholas.database.dao.ContactDAO;
import perscholas.database.dao.TruckRegistrationDAO;
import perscholas.database.dao.UserDAO;
import perscholas.database.entity.Contact;
import perscholas.database.entity.TruckRegistration;
import perscholas.database.entity.User;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/admin")
@PreAuthorize("hasAuthority('ADMIN')")
public class AdminController {
    @Autowired
    private UserDAO userDao;

    @Autowired
    private ContactDAO contactDao;

    @Autowired
    private TruckRegistrationDAO truckDao;

    public static final Logger LOG = LoggerFactory.getLogger(AdminController.class);


    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();


        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        String username = ((UserDetails) principal).getUsername();


        User user = userDao.findByEmail(username);
        response.addObject("adminListKey", user);
        response.addObject("adminListKey2", "WELCOME!");

        response.setViewName("admin/AdminHomePage2");
        log.debug("debug message");
        return response;
    }

    @RequestMapping(value = "/driver", method = RequestMethod.GET)
    public ModelAndView driver(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("views/Drivers");
        log.debug("debug message");
        return response;
    }

    @RequestMapping(value = "/truck", method = RequestMethod.GET)
    public ModelAndView truck(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("views/Truck_Driver_Page");
        log.debug("debug message");
        return response;
    }


    @RequestMapping(value = "/broker", method = RequestMethod.GET)
    public ModelAndView broker(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("admin/AdminHomePage2");
        List<Contact> broker = contactDao.findAllContacts();
        response.addObject("contactListKey", broker);
        System.out.println();
        System.out.printf("%25s%25S%20s\n", "Broker Email", "Driver Name" ,"ID" );
        broker.forEach((e) -> { System.out.printf("%25S%25s%20S\n",  e.getBrokerEmail(), e.getDriverName(), e.getId()); });
        System.out.println();
        return response;

    }
}