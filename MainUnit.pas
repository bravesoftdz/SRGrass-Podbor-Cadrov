unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,
  DBCtrls, Buttons;

type
  TMainForm = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1DSDesigner: TAutoIncField;
    ADOQuery1DSDesigner2: TWideStringField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner4: TWideStringField;
    ADOQuery2DSDesigner: TAutoIncField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3DSDesigner: TAutoIncField;
    ADOQuery3DSDesigner2: TWideStringField;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4DSDesigner: TAutoIncField;
    ADOQuery4DSDesigner2: TIntegerField;
    ADOQuery4DSDesigner3: TIntegerField;
    ADOQuery4DSDesigner4: TWideStringField;
    ADOQuery5: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    DataSource5: TDataSource;
    ADOQuery7: TADOQuery;
    DataSource7: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBGrid5: TDBGrid;
    DBGrid7: TDBGrid;
    DBNavigator4: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    ADOQuery7DSDesigner: TAutoIncField;
    ADOQuery7DSDesigner2: TIntegerField;
    ADOQuery7DSDesigner3: TWideStringField;
    SpeedButton3: TSpeedButton;
    DBNavigator7: TDBNavigator;
    TabSheet3: TTabSheet;
    ADOQuery8: TADOQuery;
    DataSource8: TDataSource;
    DBGrid8: TDBGrid;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    Label4: TLabel;
    ADOQuery8DSDesigner: TAutoIncField;
    ADOQuery8DSDesigner2: TWideStringField;
    ADOQuery9: TADOQuery;
    DataSource9: TDataSource;
    TabSheet4: TTabSheet;
    SpeedButton4: TSpeedButton;
    DBGrid9: TDBGrid;
    ADOQuery10: TADOQuery;
    DataSource10: TDataSource;
    DBGrid10: TDBGrid;
    TabSheet5: TTabSheet;
    Memo1: TMemo;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid6: TDBGrid;
    ADOQuery6DSDesigner: TAutoIncField;
    ADOQuery6DSDesigner2: TIntegerField;
    ADOQuery6DSDesigner3: TIntegerField;
    ADOQuery6DSDesigner4: TIntegerField;
    ADOQuery6DSDesigner5: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid6CellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
    procedure ADOQuery8AfterDelete(DataSet: TDataSet);
    procedure ADOQuery8AfterEdit(DataSet: TDataSet);
    procedure ADOQuery8AfterInsert(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Ch : boolean;

implementation

{$R *.dfm}

procedure TMainForm.FormActivate(Sender: TObject);
var
 ConnectionString, C1 : AnsiString;
begin

 //������ ���������� ��������
 TabSheet4.TabVisible := false;
  //������� ������������ � ����
try

 //������ ��������� ����������

 ADOConnection1.Close;
 ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=���� ������ MS Access;Initial Catalog=' + ExtractFilePath(Application.ExeName) + 'data.mdb';
 ADOConnection1.Provider:= 'MSDASQL.1';
 ADOConnection1.ConnectionString := ConnectionString;
 ADOConnection1.Connected := true;


except
   Application.MessageBox('������ ����������� ����', '������ 1',  MB_OK and MB_ICONERROR);
   exit;
end;


//���������� ������ �������

//������ ������������
 ADOQuery1.Active := false;
 ADOQuery1.SQL.Clear;
 C1 := 'Select * from �����������';
 ADOQuery1.SQL.Add(C1);
 ADOQuery1.Active := true;

//������ ������������
 ADOQuery2.Active := false;
 ADOQuery2.SQL.Clear;
 C1 := 'Select * from ��������';
 ADOQuery2.SQL.Add(C1);
 ADOQuery2.Active := true;

 //������ ����������
 ADOQuery3.Active := false;
 ADOQuery3.SQL.Clear;
 C1 := 'Select * from ���������';
 ADOQuery3.SQL.Add(C1);
 ADOQuery3.Active := true;

 //������ ����������
 ADOQuery5.Active := false;
 ADOQuery5.SQL.Clear;
 C1 := 'Select * from ���������';
 ADOQuery5.SQL.Add(C1);
 ADOQuery5.Active := true;

//������ ����������
 ADOQuery8.Active := false;
 ADOQuery8.SQL.Clear;
 C1 := 'Select * from ���������';
 ADOQuery8.SQL.Add(C1);
 ADOQuery8.Active := true; 

end;



//����� ��������� ������ ��� ������ ���� �� ������� ������������ ����������
procedure TMainForm.DBGrid3CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//�������� ����������
 ADOQuery4.Active := false;
 ADOQuery4.SQL.Clear;
 C1 := 'Select * from �������������� where ������������ = ' +
   ADOQuery3.FieldByName('���').AsString +  ' and ���������� = ' +
     ADOQuery1.FieldByName('���').AsString;
 ADOQuery4.SQL.Add(C1);
 ADOQuery4.Active := true;
end;


//����� ��������� ������ ��� ������ ���� �� ������� ������ ������������
procedure TMainForm.DBGrid1CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//�������� ����������
 ADOQuery4.Active := false;
 ADOQuery4.SQL.Clear;
 C1 := 'Select * from �������������� where ������������ = ' +
   ADOQuery3.FieldByName('���').AsString +  ' and ���������� = ' +
     ADOQuery1.FieldByName('���').AsString;
 ADOQuery4.SQL.Add(C1);
 ADOQuery4.Active := true;
end;


//���������� ������ � ������� �������������
procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
if ADOQuery1.FieldByName('���').Value <> NULL Then
 if ADOQuery3.FieldByName('���').Value <> NULL Then
  begin
   ADOQuery4.Append;
   ADOQuery4.FieldByName('����������').Value := ADOQuery1.FieldByName('���').Value;
   ADOQuery4.FieldByName('������������').Value := ADOQuery3.FieldByName('���').Value;
   ADOQuery4.Post;
 end;  
end;

///����� ��������� ������ ��� ������ ���� �� ������� ������ ����������
procedure TMainForm.DBGrid5CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//�������� ���������� - ���������
 ADOQuery6.Active := false;
 ADOQuery6.SQL.Clear;
 C1 := 'Select * from ���������� where ������������ = ' +
   ADOQuery5.FieldByName('���').AsString +  ' and �������� = ' +
     ADOQuery2.FieldByName('���').AsString;
 ADOQuery6.SQL.Add(C1);
 ADOQuery6.Active := true;


//�������� ����������

if ADOQuery6.FieldByName('���').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
 // C1 := 'Select * from "�������� ��� ��������"';
  C1 := 'Select * from "�������� ��� ��������" where ���������� = ' +
   ADOQuery6.FieldByName('���').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end;

end;

//����� ��������� ������ ��� ������ ���� �� ������� ������ ��������
procedure TMainForm.DBGrid2CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//�������� ����������
 ADOQuery6.Active := false;
 ADOQuery6.SQL.Clear;
 C1 := 'Select * from ���������� where ������������ = ' +
   ADOQuery5.FieldByName('���').AsString +  ' and �������� = ' +
     ADOQuery2.FieldByName('���').AsString;
 ADOQuery6.SQL.Add(C1);
 ADOQuery6.Active := true;

end;


//���������� ������ � ������� ���������� (������ ��������) 
procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
if ADOQuery6.FieldByName('���').Value <> NULL Then
begin
 ADOQuery7.Append;
 ADOQuery7.FieldByName('����������').Value := ADOQuery6.FieldByName('���').Value;
 ADOQuery7.Post;
end;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
var
 C1 : AnsiString;

begin
if ADOQuery2.FieldByName('���').Value <> NULL Then
 if ADOQuery5.FieldByName('���').Value <> NULL Then
  begin
   ADOQuery6.Append;
   ADOQuery6.FieldByName('��������').Value := ADOQuery2.FieldByName('���').Value;
   ADOQuery6.FieldByName('������������').Value := ADOQuery5.FieldByName('���').Value;
   ADOQuery6.Post;
 if ADOQuery6.FieldByName('���').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
  C1 := 'Select * from "�������� ��� ��������" where ���������� = ' +
   ADOQuery6.FieldByName('���').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end; 
 end;
end;

procedure TMainForm.DBGrid6CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
  if ADOQuery6.FieldByName('���').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
  C1 := 'Select * from "�������� ��� ��������" where ���������� = ' +
   ADOQuery6.FieldByName('���').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end;
end;


//���������� ������ ���������� ��� ��������� �������
procedure TMainForm.PageControl1Change(Sender: TObject);
begin
 if Ch = true then
  begin
    ADOQuery3.Active := false;
    ADOQuery3.Active := true;
    ADOQuery5.Active := false;
    ADOQuery5.Active := true;
    Ch := false;
  end;
end;

procedure TMainForm.DBNavigator9Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterDelete(DataSet: TDataSet);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterEdit(DataSet: TDataSet);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterInsert(DataSet: TDataSet);
begin
 Ch := true;
end;


//������ �������� ���������� �����������
procedure TMainForm.SpeedButton4Click(Sender: TObject);
var
 C1 : AnsiString;
// Pc : Integer;     //���������� ���������� � ����
 Cn : integer;     //����� ������� ��������
 Pn : Integer;     //����� ����������
// Pcc : integer;   //���������� ���������� ��� ������� ��������
 Cp : integer;    //��� ���������
 F : boolean;     //���� ����� ����������� ����������
 Fp : boolean;    //���� ����� ����������
 P : integer;     //���������� �������������� ����������� ����������
 Pp : integer;    //���������� �������� ����������
begin

Memo1.Lines.Clear;
Memo1.Lines.Add('������ ��������');
Memo1.Lines.Add('����������: ' + ADOQuery1.FieldByName('���').AsString);

// Pc := ADOQuery3.RecordCount; //����� ���������� ���������� � ����

 Pn := ADOQuery1.FieldByName('���').AsInteger;

//���������� ��� ��������
 ADOQuery2.First;

 while not ADOQuery2.Eof do
 begin
  Cn := ADOQuery2.FieldByName('���').AsInteger;

 //������� ������� ���������� ������ ��� ������ �������� (��� ����� �������� ��������)
      {
//�������� �������� �������� � �������� ������� �� ����� ����������
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT ��������.* FROM �������� INNER JOIN ���������� ON ��������.��� = ����������.�������� ' +
         'WHERE (((��������.���)= ' + IntToStr(Cn) + ' ));';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;

 Pcc := ADOQuery9.RecordCount; //���������� ���������� ��� ������� ��������
}

 P := 0;
 Pp := 0;

//�������� �������� �������� � �������� ������� �� ����� ����������
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT ��������.*, ����������.[����������� ��������], ����������.[������������ ��������],' +
  ' [�������� ��� ��������].��������, ���������.* ' +
   ' FROM (��������� INNER JOIN (�������� INNER JOIN ���������� ON ��������.��� = ����������.��������) ' +
   ' ON ���������.��� = ����������.������������) LEFT JOIN [�������� ��� ��������] ON ����������.��� = ' +
   ' [�������� ��� ��������].���������� WHERE (((��������.���)= ' + IntToStr(Cn) + ' )) order by ���������.���;';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;

//�������� ����������� � �������� �������
 ADOQuery10.Active := false;
 ADOQuery10.SQL.Clear;

 C1 := 'SELECT �����������.*, ��������������.��������, ���������.* ' +
  ' FROM ����������� INNER JOIN (��������� INNER JOIN �������������� ON ���������.��� = ��������������.������������)  ' +
   'ON �����������.��� = ��������������.���������� WHERE (((�����������.���)= ' + IntToStr(Pn) + '))  order by ���������.���;';
 ADOQuery10.SQL.Add(C1);
 ADOQuery10.Active := true;

 Memo1.Lines.Add('');
 Memo1.Lines.Add('��������: ' + ADOQuery9.FieldByName('������������').AsString);


   //     ShowMessage('');


 //������ ���� ��� ���������� ���������� ��������� ���������� ���������� �� ��������� ��������
 ADOQuery3.First;
   while not ADOQuery3.Eof do //����� �� ������ ��������� ��������
    begin
     Cp := ADOQuery3.FieldByName('���').AsInteger;  //��� ���������

     //����� ���������� ��� �������� �������� � ������ �����

      ADOQuery9.Active := false;
      ADOQuery9.SQL.Clear;
      C1 := 'SELECT ��������.*, ����������.[����������� ��������], ����������.[������������ ��������],' +
       ' [�������� ��� ��������].��������, ���������.* ' +
       ' FROM (��������� INNER JOIN (�������� INNER JOIN ���������� ON ��������.��� = ����������.��������) ' +
       ' ON ���������.��� = ����������.������������) LEFT JOIN [�������� ��� ��������] ON ����������.��� = ' +
       ' [�������� ��� ��������].���������� WHERE ((��������.��� = ' + IntToStr(Cn) + ' ) ' +
        ' And (���������.��� = ' + IntToStr(Cp) + ' ))';
      ADOQuery9.SQL.Add(C1);
      ADOQuery9.Active := true;


      //�������� ��� �� �������� � ���������

      ADOQuery10.Active := false;
      ADOQuery10.SQL.Clear;
       C1 := 'SELECT �����������.*, ��������������.��������, ���������.* ' +
      ' FROM ����������� INNER JOIN (��������� INNER JOIN �������������� ON ���������.��� = ��������������.������������)  ' +
      'ON �����������.��� = ��������������.���������� WHERE ((�����������.���= ' + IntToStr(Pn) + ')' +
      ' And (���������.��� = ' + IntToStr(Cp) + ' ))';
      ADOQuery10.SQL.Add(C1);
      ADOQuery10.Active := true;

      //              ShowMessage('');

      //������ ���������� ��� �������� ���������� � �������� �� �������  ��������� � ���������� �� �� ��������� ���������
      //���� ������������� - �� ������ ������
      F := false; //�� ��������� - �� ��������
        if  ADOQuery9.RecordCount > 0 then       //���� ������� � ���������� � �������� ������ 0 - �� ��������� ������������, ����� ���� ����� ���������� ����������
         begin
           Fp := false;
          //�������� ��� ��� �� ������ - �������� �������� ��� ��������� ��������
           while not ADOQuery9.Eof do //���� ���� ������
            begin
             if (ADOQuery9.FieldByName('����������� ��������').Value = NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   if  ADOQuery9.FieldByName('��������').Value <> Null Then
                   begin
                    Fp := true;
                   // ��������� �� ����������� ������� ��������
                    if  ADOQuery9.FieldByName('��������').Value =
                        ADOQuery10.FieldByName('��������').Value then F := true;
                    end;
                   end;

             if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value <> NULL) then
                  begin
                  Fp := true;
                   // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('����������� ��������').Value <=
                        ADOQuery10.FieldByName('��������').AsInteger) and
                         (ADOQuery9.FieldByName('������������ ��������').Value >=
                           ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;

            if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   Fp := true;
                  // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('����������� ��������').Value <=
                        ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;

           if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   Fp := true;
                   // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('������������ ��������').Value >=
                        ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;

                     //ShowMessage(BoolTOStr(F));


         //        ShowMessage(IntToStr(PP) + '  ' + IntToStr(P));



             if (F) then inc(P);
              F := false;
              ADOQuery9.Next;
            end;


          if Fp then
           begin
            Inc(Pp);    //����������� ���������� ��� ��������
            Memo1.Lines.Add('���������� :' + ADOQuery9.FieldByName('������������_1').AsString);
             if (Pp <= p) Then Memo1.Lines.Add('������ ���������� ������������ �����������')
             else  Memo1.Lines.Add('������ ���������� �� ������������ �����������');
           end;
         end;


       ADOQuery3.Next;
    end;
         if Pp <= p Then Memo1.Lines.Add('�������� ��������')
         else Memo1.Lines.Add('�������� �� ��������');



 ADOQuery2.Next;
 end; //while

  PageControl1.ActivePageIndex := 4;
 end;


//������ ���������� ��� ��������� �������� 
procedure TMainForm.SpeedButton5Click(Sender: TObject);
var
 C1 : AnsiString;
// Pc : Integer;     //���������� ���������� � ����
 Cn : integer;     //����� ������� ��������
 Pn : Integer;     //����� ����������
// Pcc : integer;   //���������� ���������� ��� ������� ��������
 Cp : integer;    //��� ���������
 F : boolean;     //���� ����� ����������� ����������
 Fp : boolean;    //���� ����� ����������
 P : integer;     //���������� �������������� ����������� ����������
 Pp : integer;    //���������� �������� ����������
begin

Memo1.Lines.Clear;
Memo1.Lines.Add('������ �����������');
Memo1.Lines.Add('�����c��: ' + ADOQuery2.FieldByName('������������').AsString);

//��� ��������
 Pn := ADOQuery2.FieldByName('���').AsInteger;

//���������� ���� �����������
 ADOQuery1.First;

 while not ADOQuery1.Eof do
 begin
  Cn := ADOQuery1.FieldByName('���').AsInteger;


 P := 0;
 Pp := 0;

//�������� ������ ����������

ADOQuery10.Active := false;
 ADOQuery10.SQL.Clear;
 C1 := 'SELECT �����������.*, ��������������.��������, ���������.* ' +
  ' FROM ����������� INNER JOIN (��������� INNER JOIN �������������� ON ���������.��� = ��������������.������������)  ' +
   'ON �����������.��� = ��������������.���������� WHERE (((�����������.���)= ' + IntToStr(Cn) + '))  order by ���������.���;';
 ADOQuery10.SQL.Add(C1);
 ADOQuery10.Active := true;


//�������� ������ ��������
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT ��������.*, ����������.[����������� ��������], ����������.[������������ ��������],' +
  ' [�������� ��� ��������].��������, ���������.* ' +
   ' FROM (��������� INNER JOIN (�������� INNER JOIN ���������� ON ��������.��� = ����������.��������) ' +
   ' ON ���������.��� = ����������.������������) LEFT JOIN [�������� ��� ��������] ON ����������.��� = ' +
   ' [�������� ��� ��������].���������� WHERE (((��������.���)= ' + IntToStr(Pn) + ' )) order by ���������.���;';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;


 Memo1.Lines.Add('');
 Memo1.Lines.Add('����������: ' + ADOQuery10.FieldByName('���').AsString);


      // ShowMessage('');


 //������ ���� ��� ���������� ���������� ��������� ���������� ���������� �� ��������� ��������
 ADOQuery3.First;
   while not ADOQuery3.Eof do //����� �� ������ ���������
    begin
     Cp := ADOQuery3.FieldByName('���').AsInteger;  //��� ���������


      ADOQuery9.Active := false;
      ADOQuery9.SQL.Clear;
      C1 := 'SELECT ��������.*, ����������.[����������� ��������], ����������.[������������ ��������],' +
       ' [�������� ��� ��������].��������, ���������.* ' +
       ' FROM (��������� INNER JOIN (�������� INNER JOIN ���������� ON ��������.��� = ����������.��������) ' +
       ' ON ���������.��� = ����������.������������) LEFT JOIN [�������� ��� ��������] ON ����������.��� = ' +
       ' [�������� ��� ��������].���������� WHERE ((��������.��� = ' + IntToStr(Pn) + ' ) ' +
        ' And (���������.��� = ' + IntToStr(Cp) + ' ))';
      ADOQuery9.SQL.Add(C1);
      ADOQuery9.Active := true;


      //�������� ��� �� �������� � ���������

      ADOQuery10.Active := false;
      ADOQuery10.SQL.Clear;
       C1 := 'SELECT �����������.*, ��������������.��������, ���������.* ' +
      ' FROM ����������� INNER JOIN (��������� INNER JOIN �������������� ON ���������.��� = ��������������.������������)  ' +
      'ON �����������.��� = ��������������.���������� WHERE ((�����������.���= ' + IntToStr(Cn) + ')' +
      ' And (���������.��� = ' + IntToStr(Cp) + ' ))';
      ADOQuery10.SQL.Add(C1);
      ADOQuery10.Active := true;


      //������ ���������� ��� �������� ���������� � �������� �� �������  ��������� � ���������� �� �� ��������� ���������
      //���� ������������� - �� ������ ������
      F := false; //�� ��������� - �� ��������
        if  ADOQuery9.RecordCount > 0 then       //���� ������� � ���������� � �������� ������ 0 - �� ��������� ������������, ����� ���� ����� ���������� ����������
         begin
           Fp := false;
          //�������� ��� ��� �� ������ - �������� �������� ��� ��������� ��������
           while not ADOQuery9.Eof do //���� ���� ������
            begin
             if (ADOQuery9.FieldByName('����������� ��������').Value = NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   if  ADOQuery9.FieldByName('��������').Value <> Null Then
                   begin
                    Fp := true;
                   // ��������� �� ����������� ������� ��������
                    if  ADOQuery9.FieldByName('��������').Value =
                        ADOQuery10.FieldByName('��������').Value then F := true;
                    end;
                   end;

             if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value <> NULL) then
                  begin
                  Fp := true;
                   // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('����������� ��������').Value <=
                        ADOQuery10.FieldByName('��������').AsInteger) and
                         (ADOQuery9.FieldByName('������������ ��������').Value >=
                           ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;

            if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   Fp := true;
                  // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('����������� ��������').Value <=
                        ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;

           if (ADOQuery9.FieldByName('����������� ��������').Value <> NULL) and
                (ADOQuery9.FieldByName('������������ ��������').Value = NULL) then
                  begin
                   Fp := true;
                   // ��������� �� ����������� ���������
                   if  (ADOQuery9.FieldByName('������������ ��������').Value >=
                        ADOQuery10.FieldByName('��������').AsInteger) then F := true;
                    end;



             if (F) then inc(P);
              F := false;
              ADOQuery9.Next;
            end;


          if Fp then
           begin
            Inc(Pp);    //����������� ���������� ��� ��������
            Memo1.Lines.Add('���������� :' + ADOQuery9.FieldByName('������������_1').AsString);
             if (Pp <= p) Then Memo1.Lines.Add('������ ���������� ������������ �����������')
             else  Memo1.Lines.Add('������ ���������� �� ������������ �����������');
           end;
         end;


       ADOQuery3.Next;
    end;
         if Pp <= p Then Memo1.Lines.Add('���������� ��������')
         else Memo1.Lines.Add('���������� �� ��������');


 //     ShowMessage('1111');
 ADOQuery1.Next;
 end; //while
  PageControl1.ActivePageIndex := 4;

 end;


end.
