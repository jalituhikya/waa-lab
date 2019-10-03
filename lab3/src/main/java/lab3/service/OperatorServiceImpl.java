package lab3.service;


import lab3.domain.Operator;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OperatorServiceImpl implements OperatorService {

    public List<Operator> getOperators(){

      List<Operator> operators = new ArrayList<>();
      operators.add(new Operator("+"));
      operators.add(new Operator("-"));
      operators.add(new Operator("*"));
      operators.add(new Operator("/"));

      return operators;


    }
}
