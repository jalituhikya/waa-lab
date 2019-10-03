package lab3.controller;

import lab3.domain.Calculator;
import lab3.service.CalculatorService;
import lab3.service.OperatorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class CalculatorController {

    final
    private CalculatorService calculatorService;

    final
    private OperatorService operatorService;

    @Autowired
    public CalculatorController(CalculatorService calculatorService, OperatorService operatorService) {
        this.calculatorService = calculatorService;
        this.operatorService = operatorService;
    }

    @GetMapping({"/","calculator"})
    public String getCalculator(Model model){
        model.addAttribute("operators",operatorService.getOperators());
        return "calculator";
    }

    @PostMapping({"/","calculator"})
    public String calculate(Calculator calculator){
        calculatorService.calculate(calculator);
        return "result";
    }
}
