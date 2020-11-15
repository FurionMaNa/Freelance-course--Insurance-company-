unit addEditEventForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery3: TADOQuery;
    ADOQuery2: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  idEvent:integer=-1;

implementation

uses mainForm, eventForm,policyForm;

{$R *.dfm}

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
     if(Trim(Edit1.Text)<>'')then
     Begin
          AdoQuery2.Close;
          ADOQuery2.SQL.Clear;
          try
                if(idEvent>-1)then
                Begin
                     ADOQuery2.Sql.Add('Update EventTable set NameEvent='''+Edit1.Text+''' where(ID='+IntToStr(idEvent)+')');
                End else
                Begin
                     ADOQuery2.Sql.Add('INSERT INTO EventTable (NameEvent) VALUES('''+Edit1.Text+''')');
                End;
                AdoQuery2.ExecSQL;
                if (Assigned(eventForm.Form5))then eventForm.RefreshData;
                if (Assigned(policyForm.Form6))then policyForm.RefreshData;
              except
                    MessageDlg('���� ��������� �� ���������!!!!',mtError,[mbOK],0);
                    exit;
              end;
     End else
     Begin
          MessageDlg('�������� ������� �� �������',mtError,[mbOK],0);
     End;
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
     eventForm.editFormOpen:=false;
     Edit1.Text:='';
     idEvent:=-1;
     Form10.Free;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     eventForm.editFormOpen:=false;
     Edit1.Text:='';
     idEvent:=-1;
     Form10.Free;
end;

procedure TForm10.FormCreate(Sender: TObject);
var f:boolean;
begin
     f:=true;
     if(idEvent>-1)then
     Begin
          BitBtn1.Caption:='��������';
          AdoQuery3.Close;
          ADOQuery3.SQL.Clear;
          ADOQuery3.SQL.Add('SELECT * FROM EventTABLE WHERE(ID='+IntToStr(idEvent)+')');
          ADOQuery3.Open;
          While(not(ADOQuery3.Eof))do
          Begin
               Edit1.Text:=AdoQuery3.FieldByName('NameEvent').AsString;
               ADOQuery3.Next;
               f:=false;
          End;
          if(f)then
          begin
               MessageDlg('���� ������ �������� ������ ������� ������ ���!!!',mtError,[mbOK],0);
               idEvent:=-1;
               BitBtn1.Caption:='�������� �������';
          end;
     End else
     Begin
          BitBtn1.Caption:='�������� �������';
     End;
end;

end.
