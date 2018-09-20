package body Tables is
   function Minimum (Table : T_Table) return Integer is
   aux: Integer;
   begin
      if Table'Length>0 then
         aux:=Table'First;
      else
         aux:=0;
      end if;

      for I in Table'Range loop
         if Table(I) <= aux then
            aux := Table(I);
         end if;
      end loop;
      return aux;
   end Minimum;

   function Linear_Search
     (Table : T_Table; Value : Integer) return Integer is
   aux:integer:=0;
   begin
      if Table'Length >0 then
         aux:=Table(Value);
      end if;
      return aux;
   end Linear_Search;

   function Binary_Search
     (Table : T_Table; Value : Integer) return Integer is

      n:Integer:=Table'Length;
      centro:Integer;
      inferior:Integer:=Table'First;
      superior:Integer:=Table'Last;
   begin

      while inferior<= superior loop
         centro:= (superior+inferior) / 2;
         if Table(centro)=Value then
            return Value;
         elsif Value<Table(centro) then
            superior:= centro-1;
         else
            inferior:= centro+1;
         end if;

      end loop;
      return -1;
   end Binary_Search;

   procedure Swap
     (A : in out Integer;
      B : in out Integer) is
   aux:Integer:=A;
   begin
      A:=B;
      B:=aux;
   end Swap;


   procedure MostrarVector
     (Table : in T_Table) is
     begin
         for I in Table'Range loop
         Put_Line("Pos: " & Integer'Image(I) & ", Valor: " &Integer'Image(Table(I)));
         end loop;
   end MostrarVector;

   procedure Swap
     (Table : in out T_Table;
      Pos_1 : in     Natural;
      Pos_2 : in     Natural) is

   begin
      Swap(Table(Pos_1), Table(Pos_2));
   end Swap;



   procedure Bubble_Sort (Table : in out T_Table) is
      -- (23, 34, 3, 21, 35, 15, 1)
   begin
      for i in Table'Range loop
         for j in Table'First..Table'Last-i loop

            if Table(j)>Table(j+1) then
               Swap(Table , j, j+1);

            end if;
         end loop;
      end loop;

   end Bubble_Sort;

   procedure Selection_Sort (Table : in out T_Table) is
      n:Integer:= Table'Last;
      min_idx: Integer;
   begin

      for i in Table'Range loop
         min_idx:= i;
         for j in i+1 .. n loop
            if Table(j)< Table(min_idx) then
               min_idx:=j;
            end if;
            Swap(Table , i, min_idx);

         end loop;
         MostrarVector(Table);
          Put_Line("-----------------------------------------");
      end loop;
   end Selection_Sort;

   procedure Insertion_Sort (Table : in out T_Table) is
   begin
      null;
   end Insertion_Sort;

   procedure Shell_Sort (Table : in out T_Table) is
   begin
      null;
   end Shell_Sort;

   procedure Merge_Sort (Table : in out T_Table) is
   begin
      null;
   end Merge_Sort;

   procedure Quick_Sort (Table : in out T_Table) is
   begin
      null;
   end Quick_Sort;

end Tables;
