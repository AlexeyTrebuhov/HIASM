library elv;



uses
  SysUtils,
  Classes,
  fMain in 'fMain.pas' {MF},
  fProgr in 'fProgr.pas' {FormProgr};

{$R *.res}

procedure ExportListView(hwnd: THandle; AName:PChar); stdcall;
var s:string;
    //i:Integer;
begin
  MF := TMF.Create(nil);
  MF.Show;
  MF.Visible := False;
  if not MF.CopyListViewColumn(hwnd) then Exit;
  if not MF.CopyListViewRow(hwnd) then Exit;
  if not MF.ExportListView('demo.xls') then Exit;

end;

exports
   ExportListView;

begin

end.
