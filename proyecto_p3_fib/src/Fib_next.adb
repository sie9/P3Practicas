
package body Fib_next is


   ---Funcion en la que le pasamos un numero entero
   ---y nos devuelve la serie menor que ese numero
   function Serie_fib_until_number
     (numEnd: Integer) return Arrayfib
   is
      nomVariable: Arrayfib (1..3);
   begin

      return nomVariable;
   end Serie_fib_until_number;


   --- Funcion en la que le pasamos una arrayfib
   --- que contiene toda la serie de fibonacci menor que un numero(Value)
   --- y nos devuelve una array con dos numeros seguidos que multiplicados
   --- entre ellos da el numero (Value). Si la multiplicacion es exacta
   --- devuelve un 1 al final de la array y en caso contrario un 0 al
   --- final.
   function find_fib_multiplied_subsequents
     (fib   : Arrayfib;
      Value : Integer) return Arrayfib
   is
      nomVariable: Arrayfib (1..3);
   begin
      return nomVariable;
   end find_fib_multiplied_subsequents;

end Fib_next;
