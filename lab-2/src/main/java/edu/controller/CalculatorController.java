package edu.controller;


import edu.domain.Calc;
import edu.validator.CalculatorValidator;
import mum.edu.framework.annotation.AutoWired;
import mum.edu.framework.annotation.Controller;
import mum.edu.framework.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class CalculatorController {

    @AutoWired
    CalculatorValidator calculatorValidator;

    @RequestMapping(value = { "/", "/calc" })
    public String multi(HttpServletRequest request, HttpServletResponse response) {
        return "/WEB-INF/jsp/CalcForm.jsp";
    }

    @RequestMapping(value = "/calculate")
    public String calculate(Calc calc, HttpServletRequest request, HttpServletResponse response) {
        List<String> errors = calculatorValidator.validate(calc);
        if (errors.isEmpty()) {
            // store product in a scope variable for the view
            if(calc.getOperator().equals("+")){
                calc.setResult(calc.getOperand1() + calc.getOperand2());
            }
            if(calc.getOperator().equals("-")){
                calc.setResult(calc.getOperand1() - calc.getOperand2());
            }
            if(calc.getOperator().equals("*")){
                calc.setResult(calc.getOperand1() * calc.getOperand2());
            }
            if(calc.getOperator().equals("/")){
                calc.setResult(calc.getOperand1() / calc.getOperand2());
            }else{
                errors.add("must have a valid operator");
                request.setAttribute("errors", errors);
                request.setAttribute("form", calc);
                return "/WEB-INF/jsp/CalcForm.jsp";
            }
            request.setAttribute("calc", calc);
            return "/WEB-INF/jsp/CalcDetails.jsp";
        } else {

            // store errors and product in a scope variable for the view
            request.setAttribute("errors", errors);
            request.setAttribute("form", calc);
            return "/WEB-INF/jsp/CalcForm.jsp";
        }
    }
}
