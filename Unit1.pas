unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs, ExtCtrls, Menus, Buttons, ComCtrls, DBCtrls,
  XPMan;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    fayl1: TMenuItem;
    ochish1: TMenuItem;
    saqlash1: TMenuItem;
    OpenDialog2: TOpenDialog;
    SaveDialog2: TSaveDialog;
    FontDialog2: TFontDialog;
    chiqish2: TMenuItem;
    tuzatish1: TMenuItem;
    qidirish1: TMenuItem;
    FindDialog1: TFindDialog;
    SavePictureDialog1: TSavePictureDialog;
    ColorDialog1: TColorDialog;
    PrintDialog1: TPrintDialog;
    ReplaceDialog1: TReplaceDialog;
    chiqish1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    qirqibolish1: TMenuItem;
    nusxalash1: TMenuItem;
    tashlash1: TMenuItem;
    ochirish1: TMenuItem;
    izlash1: TMenuItem;
    oldingaizlash1: TMenuItem;
    almashtirish1: TMenuItem;
    otish1: TMenuItem;
    hammasinibelgilash1: TMenuItem;
    tahrirlah1: TMenuItem;
    N1: TMenuItem;
    shrift1: TMenuItem;
    korinish1: TMenuItem;
    cnhjrfcjc1: TMenuItem;
    yordam1: TMenuItem;
    ColorDialog2: TColorDialog;
    yangi1: TMenuItem;
    BitBtn9: TBitBtn;
    CBname: TComboBox;
    vaqt1: TMenuItem;
    muallif1: TMenuItem;
    XPManifest1: TXPManifest;
    procedure Button3Click(Sender: TObject);
    procedure ochish1Click(Sender: TObject);
    procedure saqlash1Click(Sender: TObject);
    procedure chiqish2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure izlash1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure CBnameChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure shrift1Click(Sender: TObject);
    procedure hammasinibelgilash1Click(Sender: TObject);
    procedure nusxalash1Click(Sender: TObject);
    procedure tashlash1Click(Sender: TObject);
    procedure qirqibolish1Click(Sender: TObject);
    procedure qidirish1Click(Sender: TObject);
    procedure vaqt1Click(Sender: TObject);
    procedure muallif1Click(Sender: TObject);
    procedure chiqish1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
yes:boolean;      s:string;
implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
          with FontDialog1 do
       begin
          if not Execute then
          exit;
          Memo1.Font:=font;
       end;
end;

procedure TForm1.ochish1Click(Sender: TObject);
begin
         with openDialog1 do
     begin
         if not Execute then exit;
         Memo1.Lines.LoadFromFile(filename);
      end;
end;

procedure TForm1.saqlash1Click(Sender: TObject);
begin
        with SaveDialog1 do
      begin
        if not Execute then exit;
        Memo1.Lines.SaveToFile(FileName);
      end;
end;

procedure TForm1.chiqish2Click(Sender: TObject);
begin
 form1.Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
memo1.Clear;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
       with openDialog1 do
     begin
       if not Execute then exit;
       Memo1.Lines.LoadFromFile(filename);
     end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
      with SaveDialog1 do
  begin
      if not Execute then
      exit;
      memo1.Lines.SaveToFile(filename);
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
Memo1.Font.Size:=StrToInt(ComboBox2.Text);
end;
 procedure TForm1.ComboBox3Change(Sender: TObject);
begin
   if ComboBox3.Text='обычный' then
   memo1.Font.Style:=[ ];
   if ComboBox3.Text='курсив' then
   memo1.Font.Style:=[FsItalic];
   if ComboBox3.Text='жирный' then
    memo1.Font.Style:=[FsBold];
   if ComboBox3.Text='жирный курсив' then
    memo1.Font.Style:=[FsItalic,FsBold];
end;


procedure TForm1.BitBtn6Click(Sender: TObject);
begin
Memo1.Alignment:=taLeftJustify;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
Memo1.Alignment:=taCenter;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
Memo1.Alignment:=taRightJustify;
end;
procedure TForm1.izlash1Click(Sender: TObject);
begin FindDialog1.Execute ;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
with FontDialog1 do
begin
if not Execute then
exit;
memo1.Font:=font;
end;
end;



procedure TForm1.BitBtn9Click(Sender: TObject);
begin
ColorDialog1.Execute;
   Memo1.Color:=ColorDialog1.Color;

end;

procedure TForm1.CBnameChange(Sender: TObject);
begin
Memo1.Font.Name := CBName.Items[CBName.ItemIndex];
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
PrintDialog1.Execute;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
i:integer;
begin
for i:=0 to Screen.Fonts.Count-1 do
   CBName.Items.Add(Screen.Fonts[i]);
    Memo1.Font.Name :=CBName.Items[CBName.ItemIndex];
end;
procedure TForm1.shrift1Click(Sender: TObject);
begin
FontDialog2.Execute;
memo1.Font:=font;
end;

procedure TForm1.hammasinibelgilash1Click(Sender: TObject);
begin
Memo1.SelectAll;
end;

procedure TForm1.nusxalash1Click(Sender: TObject);
begin
memo1.CopyToClipboard;
end;

procedure TForm1.tashlash1Click(Sender: TObject);
begin
memo1.PasteFromClipboard;
end;

procedure TForm1.qirqibolish1Click(Sender: TObject);
begin
memo1.CutToClipboard;
end;

procedure TForm1.qidirish1Click(Sender: TObject);
begin
memo1.Undo;
end;

procedure TForm1.vaqt1Click(Sender: TObject);
begin
memo1.SelText:=Copy(TimeToStr(Time),1,length(TimeToStr(Time))-3)+' '+DateToStr(Date);
end;

procedure TForm1.muallif1Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm1.chiqish1Click(Sender: TObject);
begin
PrintDialog1.Execute;
end;

end.



