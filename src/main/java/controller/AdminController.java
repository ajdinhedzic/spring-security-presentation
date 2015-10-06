package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @RequestMapping(path = "/admin", method = RequestMethod.GET)
    public String admin(ModelMap model) {
        model.addAttribute("message", "Admin Page!");
        return "dashboard";
    }
}