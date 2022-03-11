package perscholas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {


    @RequestMapping(value =  "/home" , method = RequestMethod.GET)
    public ModelAndView home(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("home");

        return response;
    }





    @RequestMapping(value =  "/views/Drivers" , method = RequestMethod.GET)
    public ModelAndView Drivers(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("views/Drivers");

        return response;
    }


    @RequestMapping(value =  "/views/Truck_Driver_Page" , method = RequestMethod.GET)
    public ModelAndView Truck_Driver_Page(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("views/Truck_Driver_Page");

        return response;
    }



    @RequestMapping(value = "/views/RegistrationForm", method = RequestMethod.GET)
    public ModelAndView RegistrationForm(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("views/RegistrationForm");

        return response;
    }








    @RequestMapping(value = "/login/home", method = RequestMethod.GET)
    public ModelAndView logoutSuccess(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("home");
        return response;
    }

}
