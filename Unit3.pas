unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule2.ADOQRegMark.Close;
DataModule2.ADOQRegMark.SQL.Text:= 'UPDATE ??????_???? SET ??????_????.[??????] = "'+Edit1.Text+'" '
+' WHERE (((??????_????.[???_???????])="'+fio_uch+'") AND ((??????_????.[???_????????])='+kod_predm+')) AND((??????_????.[????])like "%'+col_name+'%")';
DataModule2.ADOQRegMark.ExecSQL;
 Form3.Close;
Form1.Button3Click(Sender);
end;


end.
