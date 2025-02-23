/**
*
This is a javadoc comment

*/
package com.leszko.calculator;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

/** class commments*/
public class CalculatorTest {
     /** method comment*/
     private Calculator calculator = new Calculator();
     /** Added another comment*/
     @Test
     public void testSum() {
          assertEquals(5, calculator.sum(2, 3));
     }
}
