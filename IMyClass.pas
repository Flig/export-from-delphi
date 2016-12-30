unit IMyClass;

interface

type
IMyClassBase = interface
  function ReturnSomeInteger(Data: PAnsiChar; LenData: int32): int32;  stdcall;
  procedure GetSomeNumber(var Number: int32);  stdcall;
  procedure Shake;  stdcall;
end;

implementation

end.
