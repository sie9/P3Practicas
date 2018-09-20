with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with Tables;      use Tables;

procedure Test_Tables is

   procedure Test_1 is
      Msg   : constant String := "Test_1: Minimum";
      Table : T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Assert_True (Minimum (Table) = 1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

   procedure Test_2 is
      Msg   : constant String := "Test_2: Linear_Search";
      Table : T_Table (1 .. 5) := (5, 4, 3, 2, 1);
   begin
      Assert_True (Linear_Search (Table, 2) = 4, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_2;

    procedure Test_3 is
      Msg   : constant String := "Test_3: Binaria no encuentra valor no incluido";
       Msg1  : constant String := "Test_3: Binaria encuentra valor incluido";
      Table : T_Table (1 .. 5) := (1, 2, 3, 4, 5);
   begin
      Assert_True (Binary_Search (Table, 2) = 2, Msg1);
      Assert_True (Binary_Search (Table, 6) = -1, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_3;

   procedure Test_4 is
      Msg   : constant String := "Test_4: swap";
      A:Integer:=0;
      B:Integer:=8;

   begin
      Swap (A, B);
      Assert_True ( A = 8, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_4;

   procedure Test_5 is
      Msg   : constant String := "Test_5: swap Table";
      A:Integer:=1;
      B:Integer:=3;
      Table : T_Table (1 .. 5) := (1, 2, 3, 4, 5);

   begin
      Swap (Table, A, B);
      Assert_True ( Table(3) = 1, Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_5;

   procedure Test_6 is
      Msg   : constant String := "Test_6: Bubble sort";
      Table : T_Table (1 .. 7) := (23, 34, 3, 21, 35, 15, 1);

   begin
      Bubble_Sort (Table);
      Assert_True ( Table(1) = 1, Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_6;



   procedure Test_7 is
      Msg   : constant String := "Test_7: Selection sort";
      Table : T_Table (1 .. 8) := (23, 34, 10, 21, 35, 15, 1, 2);

   begin
      Put_Line("PRE ORDENAR ");
      MostrarVector(Table);
      Put_Line("_______________________________");
      Selection_Sort (Table);
      MostrarVector(Table);
      Assert_True ( Table(1) = 1, Msg);

   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_7;
begin
   Put_Line ("********************* Test_Tables");
   Test_1;
   Test_2;
   Test_3;
   Test_4;
   Test_5;
   Test_6;
   Test_7;

end Test_Tables;
