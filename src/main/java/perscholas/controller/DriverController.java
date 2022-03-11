package perscholas.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import perscholas.database.dao.UpdateDriverLocationDAO;
import perscholas.database.dao.UserRoleDAO;
import perscholas.database.entity.EmployeeRegistration;
import perscholas.database.entity.User;
import perscholas.form.UpdateDriverLocationFormBean;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;


@Slf4j
@Controller
@PreAuthorize("hasAnyAuthority('ADMIN', 'DRIVER')")
public class DriverController {

    @Autowired
    private UpdateDriverLocationDAO updateLocationDao;


    @RequestMapping(value = "/driver", method = RequestMethod.GET)
    public ModelAndView driver(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("driver/driverHomePage");
      /*  Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();*/


        return response;
    }

}


