unit TMyClass;

interface

uses
IMyClass,
System.Classes;

  type
  TMyClassImpl = class(TObject, IMyClassBase)
  public
    function ReturnSomeInteger(Data: PAnsiChar; LenData: int32): int32;  stdcall;
    procedure GetSomeNumber(var Number: int32);  stdcall;
    procedure Shake;  stdcall;
    constructor Create; overload;
    destructor Destroy; override;
  protected
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
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

function TMyClassImpl._Release: Integer;
begin
  Result := 1;
end;

function TMyClassImpl.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := 0
  else
    Result := E_NOINTERFACE;
end;

function TMyClassImpl._AddRef: Integer;
begin
  Result := 1;
end;

end.
