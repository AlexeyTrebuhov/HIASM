unit fMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QExport3Dialog, QExport3, ComCtrls, CommCtrl, fProgr;

type
  TMF = class(TForm)
    LV: TListView;
    QE: TQExport3Dialog;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    ColCount: Integer;

    function CopyListViewColumn(ALVHandle:HWND): boolean;
    function CopyListViewRow(ALVHandle:HWND): boolean;
    function ExportListView(AName:PChar): boolean;
  end;

var
  MF: TMF;

implementation

{$R *.dfm}

function TMF.ExportListView(AName:PChar): boolean;
begin
  Result := False;
  QE.FileName := ExtractFilePath(Application.ExeName) + AName;
  QE.ExportSource := esListView;
  QE.Execute;
  QE.AutoSaveOptions := True;
  QE.AutoLoadOptions := True;
  //QE.
  Result := True;

end;

// ������� �������� ��������� �������
function TMF.CopyListViewColumn(ALVHandle:HWND): boolean;
const cchTextMax=148; // ������������ ����� ���������
var i: Integer;
    lvHeader: HWND;
    ItemRect: TRect;
    lvHeaderItem: HD_ITEM;
    //pszText: PChar;
    pszText: string[148];
    NewColumn: TListColumn;
begin
  Result := False;
  // �������� ������ ���������� ������
  lvHeader := ListView_GetHeader(ALVHandle);
  // �������� ���������� ��������
  ColCount := Header_GetItemCount(lvHeader);
  if ColCount = 0 then Exit;

  // ������� ������ ��� ���������
  ZeroMemory(@lvHeaderItem, SizeOf(HD_ITEM));
  ZeroMemory(@ItemRect, SizeOf(TRect));
  ZeroMemory(@NewColumn, SizeOf(TListColumn));

  // �������� ������������ �������
  lvHeaderItem.mask := HDI_TEXT;
  lvHeaderItem.fmt := HDF_STRING;
  lvHeaderItem.pszText := @pszText;
  lvHeaderItem.cchTextMax := cchTextMax;

  // ������ ���������� � ������ ���������.
  for i := 0 to ColCount-1 do
  begin
    // �������� ����� � ������ ����������
    Header_GetItem(lvHeader, i, lvHeaderItem);
    Header_GetItemRect(lvHeader, i, @ItemRect);

    // ������������� ����� � ������ ���������� � ListView_Dll
    with LV do
      begin
        // ��������� �������
        NewColumn := Columns.Add;
        NewColumn.Caption := lvHeaderItem.pszText;
        NewColumn.Width := ItemRect.Right- ItemRect.Left;
      end;
  end;
  Result := True;
  LV.Refresh;
end;

// ������� �������� ������ �������
function TMF.CopyListViewRow(ALVHandle:HWND): boolean;
const cchTextMax=255;
var  LVItemCount: Integer;
     i,j: Integer;
     LVItem: LV_ITEM;
     //pszText: PChar;
     pszText: string[255];
begin
  Result := False;
  if ALVHandle = 0 then Exit;
  // �������� ���������� ����� �������
  LVItemCount := ListView_GetItemCount(ALVHandle);
  if LVItemCount = 0 then Exit;

  // ������� �������� ����������� �������
  FormProgr := TFormProgr.Create(Self);
  FormProgr.Show;
  FormProgr.Visible := True;
  FormProgr.Refresh;
  FormProgr.pb1.Max := LVItemCount;


  // ��������� ���������
  ZeroMemory(@LVItem, SizeOf(LV_ITEM));
  LVItem.mask := LVIF_TEXT;
  LVItem.pszText := @pszText;
  LVItem.cchTextMax := cchTextMax;
  LVItem.iSubItem := 0;

  if LVItemCount = 0 then exit;

   with LV.Items do
    for i := 0 to LVItemCount - 1 do begin
      // ������� ������� ����������� �������
      FormProgr.pb1.Position := i;
      FormProgr.Refresh;
      BeginUpdate();
      with Add do begin
        LVItem.iSubItem := 0;
        SendMessage(ALVHandle, LVM_GETITEMTEXT, i, Longint(@LVItem));
        Caption := LVItem.pszText;
        for j := 1 to ColCount do
        begin
          LVItem.iSubItem := j;
          SendMessage(ALVHandle, LVM_GETITEMTEXT, i, Longint(@LVItem));
          SubItems.Add(LVItem.pszText);
        end;
      end;
    EndUpdate();
    end;
  Result := True;
  LV.Refresh;
  FormProgr.Close;
  //MF.Visible := True;
end;


procedure TMF.FormCreate(Sender: TObject);
begin
  //LV := TListView.Create(Self);
  //ShowMessage('create');
end;

end.
