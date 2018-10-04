with Ada.Text_IO; use Ada.Text_IO;
with Assertions;  use Assertions;
with Fib_next;     use Fib_next;

procedure Test_FIB is

   procedure Test_1 is
      Msg : constant String := "Test_1: Empty string";

   begin
      Assert_True (true = true, Msg);
   exception
      when Assertion_Error =>
         Put_Line (Msg & " Failed (assertion)");
      when others =>
         Put_Line (Msg & " Failed (exception)");
   end Test_1;

begin
   Put_Line ("********************* Test_Strings");
   Test_1;
end Test_FIB;
