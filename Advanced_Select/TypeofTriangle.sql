SELECT IF(A+B <= C,'Not A Triangle',IF(A=B AND B=C,'Equilateral',IF(A = B OR B = C OR C = A,'Isosceles','Scalene'))) FROM TRIANGLES 
