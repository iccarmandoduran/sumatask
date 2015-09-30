with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Real_Time; use Ada.Real_Time;

procedure Main is
   arreglo : array(0..500000) of Integer;
   sumafinal : array(0..4) of Integer;
   a : Integer:=0;
   inicio,fin : Time;
   task  asignacion;
   task  suma;
   task  sum1;
   task  sum2;
   task  sum3;
   task  sum4;

   task body asignacion is
   begin
      inicio:=Clock;
      a:=0;
   for i in 0..500000 loop
      arreglo(i):=1;
   end loop;
      fin:=Clock;
   end asignacion;

   task body sum1 is
   begin
      inicio:=Clock;
      a:=0;
      for i in 1..125000 loop
      a:=a+arreglo(i);
      end loop;
      Put_Line("SUMA 1");
      put(a);
      sumafinal(0):=a;

  fin:=Clock;

   end sum1;

    task body sum2 is
   begin
      inicio:=Clock;
      a:=0;
      for i in 125001..250000 loop
      a:=a+arreglo(i);
   end loop;
      Put_Line("SUMA 2");
      put(a);
      sumafinal(1):=a;
  fin:=Clock;

   end sum2;
   task body sum3 is
   begin
      inicio:=Clock;
      a:=0;
      for i in 250001..375000 loop
      a:=a+arreglo(i);
   end loop;
      Put_Line("SUMA 3");
      put(a);
      sumafinal(2):=a;
  fin:=Clock;

   end sum3;
   task body sum4 is
   begin
      inicio:=Clock;
      a:=0;
      for i in 375001..500000 loop
      a:=a+arreglo(i);
   end loop;
      Put_Line("SUMA 4");
      put(a);
      sumafinal(3):=a;
  fin:=Clock;

   end sum4;

   task body suma is
      begin
      inicio:=Clock;
      a:=0;
      for i in 0..3 loop
      a:=a+sumafinal(i);
   end loop;
      Put_Line("SUMA FINAL");
      put(a);
      fin:=Clock;
   end suma;



begin
   Put_Line("Soy el procedimiento principal");
end Main;
