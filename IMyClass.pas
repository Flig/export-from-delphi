unit IMyClass;

interface

type
IMyClassBase = class
public
  function ReturnSomeInteger(Data: PAnsiChar; LenData: int32): int32; virtual; stdcall; abstract;
  procedure GetSomeNumber(var Number: int32); virtual; stdcall; abstract;
  procedure Shake; virtual; stdcall; abstract;
end;

implementation

end.
