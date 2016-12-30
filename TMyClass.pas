unit TMyClass;

interface

uses
IMyClass,
System.Classes;

  type
  TMyClassImpl = class(IMyClassBase)
  public
    function ReturnSomeInteger(Data: PAnsiChar; LenData: int32): int32; override; stdcall;
    procedure GetSomeNumber(var Number: int32); override; stdcall;
    procedure Shake; override; stdcall;
    constructor Create; overload;
    destructor Destroy; override;
  private
    SomeNumber: int32;
    SomeInteger: int32;
  end;

implementation


function TMyClassImpl.ReturnSomeInteger(Data: PAnsiChar; LenData: Integer): int32;
begin
Result := SomeInteger;
end;

procedure TMyClassImpl.GetSomeNumber(var Number: int32);
begin
  Number := SomeNumber;
end;

procedure TMyClassImpl.Shake;
begin
  Randomize;
  SomeInteger := Random(10000);
  SomeNumber  := Random(10000);
end;

constructor TMyClassImpl.Create;
begin
  SomeInteger := 0;
  SomeNumber  := 0;
end;

destructor TMyClassImpl.Destroy;
begin
end;

end.
