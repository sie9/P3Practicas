package Calculator with SPARK_Mode => On is

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer
   --  Compute the addition of  plus Second_Operand
     with Pre  => (if First_Operand >0 and Second_Operand >0 then First_Operand  <= Integer'Last - Second_Operand
                     elsif First_Operand <0 and Second_Operand <0 then First_Operand  >= Integer'First - Second_Operand),
       
        Post => Add'Result = First_Operand+Second_Operand;
   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using Add, compute the subtraction of First_Operand plus Second_Operand
     with Pre => (if First_Operand <0 and Second_Operand <0 then First_Operand- Second_Operand  >= Integer'First elsif
                    First_Operand>=0 and Second_Operand <0 then First_Operand  <= Integer'Last + Second_Operand elsif
                      First_Operand<0 and Second_Operand >=0 then First_Operand  >= Integer'First + Second_Operand),
        Post => Result = First_Operand - Second_Operand;
   --  Completa esta especificacion para que podamos verificar
   --  formalmente esta funcion.
    
end Calculator;
