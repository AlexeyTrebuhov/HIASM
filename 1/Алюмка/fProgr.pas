unit fProgr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFormProgr = class(TForm)
    pb1: TProgressBar;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProgr: TFormProgr;

implementation

{$R *.dfm}

end.
