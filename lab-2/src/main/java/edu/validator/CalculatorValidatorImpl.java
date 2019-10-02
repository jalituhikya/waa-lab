package edu.validator;



import edu.domain.Calc;

import java.util.ArrayList;
import java.util.List;

public class CalculatorValidatorImpl implements CalculatorValidator {
    public List<String> validate(Object object) {
        List<String> errors = new ArrayList<String>();

        Calc calc = (Calc) object;
        String operator = calc.getOperator();
        if (operator == null || operator.trim().isEmpty()) {
            errors.add("calc must have an operator");
        }
        Double operand1 = calc.getOperand1();
        if (operand1 == null) {
            errors.add("calc must have a operand1");
        }
        Double operand2 = calc.getOperand1();
        if (operand2 == null) {
            errors.add("calc must have a operand2");
        }
        return errors;
    }
}
