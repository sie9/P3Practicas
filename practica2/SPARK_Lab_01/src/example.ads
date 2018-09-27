package Example
   with SPARK_Mode => On
is

   function Max (N1, N2, N3 : Integer) return Integer
     with Post => (Max'Result = N1) or (Max'Result = N2) or (Max'Result=N3);
--     with Post => Max'Result = Integer'Max(Integer'Max(N1,N2),N3);
   --  Modifica esta postcondicion para que podamos verificar
   --  formalmente esta funcion.

end Example;
