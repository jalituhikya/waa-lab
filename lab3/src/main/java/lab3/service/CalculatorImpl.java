package lab3.service;

import lab3.domain.Calculator;
import org.springframework.stereotype.Service;

@Service
public class CalculatorImpl implements CalculatorService {
    @Override
    public Calculator calculate(Calculator calculator) {
        if(calculator.getOperator().equals("+")){
            calculator.setResult(calculator.getOperand1() + calculator.getOperand2());
        }else if(calculator.getOperator().equals("-")){
            calculator.setResult(calculator.getOperand1() - calculator.getOperand2());

        }else if(calculator.getOperator().equals("*")){

            calculator.setResult(calculator.getOperand1() * calculator.getOperand2());
        }else if(calculator.getOperator().equals("/")) {
            calculator.setResult(calculator.getOperand1() / calculator.getOperand2());

        }
        return calculator;
    }
}
