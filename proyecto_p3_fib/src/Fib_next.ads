

package Fib_next with SPARK_Mode => ON is

  type Arrayfib is array (Integer range <>) of Integer;

   function Serie_fib_until_number
     (numEnd: Integer) return Arrayfib;
         ---Funcion en la que le pasamos un numero entero
         ---y nos devuelve la serie menor que ese numero

   function find_fib_multiplied_subsequents
     (fib   : Arrayfib;
      Value : Integer) return Arrayfib;
         --- Funcion en la que le pasamos una arrayfib
         --- que contiene toda la serie de fibonacci menor que un numero(Value)
         --- y nos devuelve una array con dos numeros seguidos que multiplicados
         --- entre ellos da el numero (Value). Si la multiplicacion es exacta
         --- devuelve un 1 al final de la array y en caso contrario un 0 al
         --- final.

end Fib_next;
