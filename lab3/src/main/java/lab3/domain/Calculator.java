package lab3.domain;

public class Calculator {
    private Double operand1;
    private Double operand2;
    private String operator;
    private Double result;

    public Double getResult() {
        return result;
    }

    public void setResult(Double result) {
        this.result = result;
    }

    public String getOperator() {
        return operator;
    }

    public Double getOperand1() {
        return operand1;
    }

    public void setOperand1(Double operand1) {
        this.operand1 = operand1;
    }

    public Double getOperand2() {
        return operand2;
    }

    public void setOperand2(Double operand2) {
        this.operand2 = operand2;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }


}
