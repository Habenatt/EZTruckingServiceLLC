package perscholas.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;

@Slf4j
@Controller
@PreAuthorize("hasAnyAuthority('ADMIN', 'EMPLOYEE')")
public class EmployeeController {

    @RequestMapping(value = "/employee", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();

        response.setViewName("employee/employeeHomePage2");

        return response;
    }


    @RequestMapping(value = "/user/fileupload", method = RequestMethod.GET)
    public ModelAndView upload(HttpServletRequest request, HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/fileUpload");

        return response;

    }

    @RequestMapping(value = "/user/fileUploadSubmit", method = RequestMethod.POST)
    public ModelAndView uploadSubmit(@RequestParam MultipartFile file, @RequestParam(required=false) String title ) throws Exception {

        String tmpdir =System.getProperty("java.io.tmpdir")+File.separator+"perscholas";

       // String saveFileName=tmpdir+ File.separator+file.getOriginalFilename();

        log.debug("OS temp directory : "+tmpdir);

        File saveFileDirectory=new File(tmpdir);
        saveFileDirectory.mkdirs();

        String saveFileName= saveFileDirectory.getAbsolutePath() +File.separator+file.getOriginalFilename();
        File targetFile =new File( saveFileName);
        FileUtils.copyInputStreamToFile(file.getInputStream(), targetFile);

        log.debug("Uploaded file saved to : "+targetFile.getAbsolutePath());

        ModelAndView response = new ModelAndView();
        response.setViewName("user/fileUploadSubmit");

        return response;


    }


/*
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
    public String submit(@RequestParam("file") MultipartFile file, ModelMap modelMap) {
        modelMap.addAttribute("file", file);


        ModelAndView response = new ModelAndView();
        response.setViewName("user/fileUpload");
        return "fileUploadView";
    }*/


}
