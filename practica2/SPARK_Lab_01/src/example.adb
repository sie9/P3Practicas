package body Example
   with SPARK_Mode => On
is

   function Max (N1, N2, N3 : Integer) return Integer is
      aux:Integer:=N1;
   begin
      --  Escribe aqui tu codigo para calcular el maximo de
      --  los tres numeros.
      if aux < N2 then
         aux := N2;
      end if;
      if aux < N3 then
         aux := N3;
      end if;
   
      return aux;
   end Max;

end Example;
