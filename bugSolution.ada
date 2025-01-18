```ada
function Safe_Conversion(Source : in Integer) return Float is
   Result : Float;
begin
   -- Check for potential overflow and handle it appropriately
   if Source > Float'Last or Source < Float'First then
      raise Constraint_Error with "Integer out of range for Float conversion";
   else
      Result := Float(Source);
   end if;
   return Result;
end Safe_Conversion;

procedure Main is
   My_Integer : Integer := 1000000000;
   My_Float : constant Float := Safe_Conversion(My_Integer);
begin
   Ada.Text_IO.Put_Line("My_Float: " & Float'Image(My_Float));
exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Error: Integer out of range for Float conversion");
end Main;
```