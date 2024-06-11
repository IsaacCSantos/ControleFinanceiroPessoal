unit Utils;

interface

uses
  System.SysUtils, System.Classes, Vcl.ComCtrls;

type
  TUtils = class
  public
    class function IsStringEmpty(const AStr: string): Boolean;
    class function IsValidEmail(const AEmail: string): Boolean;
    class procedure ShowErrorMessage(const AMessage: string);
    class procedure ShowInfoMessage(const AMessage: string);
    class function FormatCurrency(Value: Currency): string;
    class procedure MostrarAba(pPage: TPageControl; pAba: TTabSheet);
  end;

implementation

uses
  Vcl.Dialogs, RegularExpressions;

{ TUtils }

class function TUtils.IsStringEmpty(const AStr: string): Boolean;
begin
  Result := Trim(AStr) = '';
end;

class function TUtils.IsValidEmail(const AEmail: string): Boolean;
const
  EMAIL_REGEX_PATTERN = '^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$';
begin
  Result := TRegEx.IsMatch(AEmail, EMAIL_REGEX_PATTERN);
end;

class procedure TUtils.ShowErrorMessage(const AMessage: string);
begin
  MessageDlg(AMessage, mtError, [mbOK], 0);
end;

class procedure TUtils.ShowInfoMessage(const AMessage: string);
begin
  MessageDlg(AMessage, mtInformation, [mbOK], 0);
end;

class function TUtils.FormatCurrency(Value: Currency): string;
begin
  Result := FormatCurr('R$ #,##0.00', Value);
end;

class procedure TUtils.MostrarAba(pPage: TPageControl; pAba: TTabSheet);
Var
  iPage: Integer;
begin
  for iPage := 0 to pPage.PageCount - 1 do
    pPage.Pages[iPage].TabVisible := false;

  pPage.ActivePage := pAba;
end;

end.

