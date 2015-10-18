/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import service.FormService;
/**
 *
 * @author icon
 */
public class FormController extends SimpleFormController {
    private FormService formService;
    public FormController() {
        //Initialize controller properties here or 
        //in the Web Application Context

        //setCommandClass(MyCommand.class);
        //setCommandName("MyCommandName");
        //setSuccessView("successView");
        //setFormView("formView");
        
        setCommandClass(Name.class);
        setCommandName("name");
        setSuccessView("ViewForm");
        setFormView("FormObat");
    }
    
    public void setFormService(FormService formService){
        this.formService = formService;
    }
    
  @Override
     protected ModelAndView onSubmit(
     HttpServletRequest request, 
     HttpServletResponse response, 
     Object command, 
     BindException errors) throws Exception {
         Name name = (Name) command;
     ModelAndView mv = new ModelAndView(getSuccessView());
     mv.addObject("helloMessage", formService.sayHello(name.getValue()));
     mv.addObject("helloId", formService.sayId(name.getId()));
     mv.addObject("helloJenis", formService.sayJenis(name.getJenis()));
     mv.addObject("helloJumlah", formService.sayJumlah(name.getJumlah()));
     mv.addObject("helloHarga", formService.sayHarga(name.getHarga()));
     return mv;
     }

    //Use onSubmit instead of doSubmitAction 
    //when you need access to the Request, Response, or BindException objects
    /*
     @Override
     protected ModelAndView onSubmit(
     HttpServletRequest request, 
     HttpServletResponse response, 
     Object command, 
     BindException errors) throws Exception {
     ModelAndView mv = new ModelAndView(getSuccessView());
     //Do something...
     return mv;
     }
     */
}
