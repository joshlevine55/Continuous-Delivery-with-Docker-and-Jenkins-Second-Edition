/**
*
This is a javadoc comment

*/
package com.leszko.calculator;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

/** class comment*/
public class CalculatorTest {
     /** method comment*/
     private Calculator calculator = new Calculator();

     @Test
     public void testSum() {
          assertEquals(5, calculator.sum(2, 3));
     }
}
