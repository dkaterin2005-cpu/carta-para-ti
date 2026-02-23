package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartaController {

    @GetMapping("/")
    public String carta() {
        return "carta";
    }
}
