unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, Db, Mask, wwdbedit, Wwdotdot, Wwdbcomb, //Execfile,
  Wwdatsrc, uADStanIntf, uADStanOption, uADStanParam, uADStanError,
  uADDatSManager, uADPhysIntf, uADDAptIntf, uADStanAsync, uADDAptManager,
  uADCompDataSet, uADCompClient, SqlTimSt;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    puMenu: TPopupMenu;
    mnuFile: TMenuItem;
    mnuExit: TMenuItem;
    mnuHelp: TMenuItem;
    mnuOptions: TMenuItem;
    mnuConfiguration: TMenuItem;
    mnuAbout: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    sb: TStatusBar;
    mnuPrinterSetup: TMenuItem;
    N1: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    mnuExitwSaveSetting: TMenuItem;
    mnuTest: TMenuItem;
    mnuMainMenu: TMenuItem;
    SetupThisMenu1: TMenuItem;
    RunNow1: TMenuItem;
    mnuSavethistoASCIIDelimeterFile: TMenuItem;
    mnuBatchRun: TMenuItem;
    mnuViewResult: TMenuItem;
    qBat: TADQuery;
    dBat: TDataSource;
    qBatBAID: TIntegerField;
    qBatNUM: TIntegerField;
    qBatFILENAME: TStringField;
    pnlClient: TPanel;
    pc: TPageControl;
    tsConfiguration: TTabSheet;
    tsMainMenu: TTabSheet;
    tsTest: TTabSheet;
    tsBatch: TTabSheet;
    pnlConfiguration: TPanel;
    Label13: TLabel;
    cbFileDlg: TwwDBComboDlg;
    Label23: TLabel;
    Label43: TLabel;
    wwDBGrid2: TwwDBGrid;
    DBNavigator2: TDBNavigator;
    bRunTestSum: TButton;
    eTSBegin: TEdit;
    Label44: TLabel;
    eTSEnd: TEdit;
    bCopyToMenu: TButton;
    Label42: TLabel;
    eTestSumResultFileName: TEdit;
    mTemp: TMemo;
    Label36: TLabel;
    bConfDone: TButton;
    bReport: TButton;
    bMenu: TButton;
    bRPat: TButton;
    mTSRPat: TMemo;
    mColPatterns: TMemo;
    mTSGrp: TMemo;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    eColGrpRange: TEdit;
    Label49: TLabel;
    mTestSum3: TMemo;
    mTestSum2: TMemo;
    mTestSum1: TMemo;
    mTestSum0: TMemo;
    mTestSum: TMemo;
    Panel2: TPanel;
    Label30: TLabel;
    lblSNumCount: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    eSnum: TEdit;
    lbSLox: TListBox;
    eSNumSave: TEdit;
    bSNumGenerate: TButton;
    Label24: TLabel;
    pnlMainMenu: TPanel;
    cbSaveOnEachStep: TCheckBox;
    cbMonitor: TCheckBox;
    cbDoSumFirst: TCheckBox;
    cbDoSumColFirst: TCheckBox;
    Label38: TLabel;
    eStartFrom: TEdit;
    Label40: TLabel;
    eUpto: TEdit;
    Label45: TLabel;
    eRefresh1: TEdit;
    eRefresh2: TEdit;
    eRefresh3: TEdit;
    bRegenerates: TButton;
    Label31: TLabel;
    cbMainHitRange: TCheckBox;
    wwDBGrid1: TwwDBGrid;
    DBNavigator4: TDBNavigator;
    Label34: TLabel;
    eResetNo: TEdit;
    bStop: TButton;
    cbRunOption: TwwDBComboBox;
    bSaveResult: TButton;
    Label22: TLabel;
    bRunNow: TBitBtn;
    bSetUpClose: TBitBtn;
    cbCalMethods: TwwDBComboBox;
    eMinHitCount: TEdit;
    mCounts: TMemo;
    GroupBox1: TGroupBox;
    dbgMenuItem: TwwDBGrid;
    DBNavigator1: TDBNavigator;
    bCopyNew: TButton;
    bRearrangeNo: TButton;
    bCopy: TButton;
    pnlTest: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    eNumbers: TEdit;
    lblEntryCounts: TLabel;
    eTrackNo: TEdit;
    Label35: TLabel;
    lbTest: TListBox;
    Label1: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblMaxMasterFile: TLabel;
    lblMaxCheckCount: TLabel;
    lblMaxBumpRecCount: TLabel;
    bCopyMainTable: TButton;
    bLoadDefault: TButton;
    bTestGenerate: TButton;
    bToMainMenu: TButton;
    Label14: TLabel;
    eN1m: TEdit;
    eN1x: TEdit;
    Label39: TLabel;
    eMinToStartSaving: TEdit;
    Label15: TLabel;
    eN2m: TEdit;
    eN2x: TEdit;
    eN3x: TEdit;
    eN3m: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    eN4m: TEdit;
    eN4x: TEdit;
    eN5x: TEdit;
    eN5m: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    eN6m: TEdit;
    eN6x: TEdit;
    cbRunManualSelection: TCheckBox;
    Label41: TLabel;
    eSelectCountForManual: TEdit;
    eMS: TEdit;
    Label20: TLabel;
    eMinSumRow: TEdit;
    eMaxSumRow: TEdit;
    Label21: TLabel;
    cbOdd: TCheckBox;
    cbEven: TCheckBox;
    Label37: TLabel;
    cbNo3_2Consecutive: TCheckBox;
    cbNo4Consecutive: TCheckBox;
    Label29: TLabel;
    eTempSavingFile: TEdit;
    bViewResultFile: TButton;
    sbUp: TSpeedButton;
    sbDown: TSpeedButton;
    Label2: TLabel;
    eCIndex: TEdit;
    pnlBatch: TPanel;
    Label25: TLabel;
    dbgBatch: TwwDBGrid;
    DBNavigator3: TDBNavigator;
    bRunAll: TButton;
    Special1: TMenuItem;
    RangeWork1: TMenuItem;
    procedure mnuExitClick(Sender: TObject);
    procedure mnuPrinterSetupClick(Sender: TObject);
    procedure mnuAboutClick(Sender: TObject);
    procedure mnuReloadSettingClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnuExitwSaveSettingClick(Sender: TObject);
    procedure bSetUpCloseClick(Sender: TObject);
    procedure mnuConfigurationClick(Sender: TObject);
    procedure mnuTestClick(Sender: TObject);
    procedure mnuMainMenuClick(Sender: TObject);
    procedure eNumbersExit(Sender: TObject);
    procedure SetupThisMenu1Click(Sender: TObject);
    procedure bTestGenerateClick(Sender: TObject);
    procedure eCIndexExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgMenuItemTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bConfDoneClick(Sender: TObject);
    procedure RunNow1Click(Sender: TObject);
    procedure bRunNowClick(Sender: TObject);
    procedure dbgMenuItemDblClick(Sender: TObject);
    procedure bCopyMainTableClick(Sender: TObject);
    procedure bLoadDefaultClick(Sender: TObject);
    procedure puMenuPopup(Sender: TObject);
    procedure eTempSavingFileDblClick(Sender: TObject);
    procedure bCopyNewClick(Sender: TObject);
    procedure mnuBatchRunClick(Sender: TObject);
    procedure bRunAllClick(Sender: TObject);
    procedure qBatAfterInsert(DataSet: TDataSet);
    procedure qBatAfterPost(DataSet: TDataSet);
    procedure bSaveResultClick(Sender: TObject);
    procedure eSnumExit(Sender: TObject);
    procedure bSNumGenerateClick(Sender: TObject);
    procedure bRearrangeNoClick(Sender: TObject);
    procedure cbMonitorClick(Sender: TObject);
    procedure mnuViewResultClick(Sender: TObject);
    procedure bStopClick(Sender: TObject);
    procedure bCopyClick(Sender: TObject);
    procedure bToMainMenuClick(Sender: TObject);
    procedure bRegeneratesClick(Sender: TObject);
    procedure bViewResultFileClick(Sender: TObject);
    procedure cbFileDlgCustomDlg(Sender: TObject);
    procedure eTestSumResultFileNameDblClick(Sender: TObject);
    procedure bRunTestSumClick(Sender: TObject);
    procedure bCopyToMenuClick(Sender: TObject);
    procedure bMenuClick(Sender: TObject);
    procedure bReportClick(Sender: TObject);
    procedure bRPatClick(Sender: TObject);
    procedure RangeWork1Click(Sender: TObject);
    procedure mTestSum0DblClick(Sender: TObject);
    procedure mTestSum1DblClick(Sender: TObject);
    procedure mTestSum2DblClick(Sender: TObject);
    procedure mTestSum3DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure GenerateBaseTable;
    function  PassedConditions(n1, n2, n3, n4, n5, n6 : integer) : boolean;
    procedure InsertIntoMasterArrayIndexNo(i, n1, n2, n3, n4, n5, n6 : integer);
    procedure DisplaySampleArrayFromIndexOf(i : integer);
    procedure ReverseConvert(RunBegins, RunEnds, rcount : integer);
  end;

var
  frmMain: TfrmMain;

implementation

   uses DataMod, About, global, SumReduc, config, SuperType, Matches, Sum,
  Mul, Divpas, Monitor, copyunder, Patterns, SumCol, Range2Delete;

{$R *.DFM}

procedure TfrmMain.mnuExitClick(Sender: TObject);
begin
   if MessageDlg('Do you want to exit now?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      Application.terminate;
end;

procedure TfrmMain.mnuPrinterSetupClick(Sender: TObject);
begin
   PrinterSetupDialog1.execute;
end;

procedure TfrmMain.mnuAboutClick(Sender: TObject);
begin
   frmAbout:= TfrmAbout.create(nil);
   frmAbout.showmodal;
   frmAbout.release;
   frmAbout := nil;
end;

procedure TfrmMain.mnuReloadSettingClick(Sender: TObject);
begin

end;

{
procedure TfrmMain.RefreshMenus;
begin
   try
      with dm.qMI do begin
         close;
         open;
         i := 1;
         while not eof do begin
            compname := 'cb' + IntToStr(i) + '_Save';
            with frmMain.Components[frmMain.FindComponent(compname).ComponentIndex] as TCheckBox do
               Checked := (dm.qMICBFORSAVE.AsString = 'Y');
            compname := 'cb' + IntToStr(i) + '_Run';
            with frmMain.Components[frmMain.FindComponent(compname).ComponentIndex] as TCheckBox do
               Checked := (dm.qMICBFOREXECUTE.AsString = 'Y');
            compname := 'cb' + IntToStr(i) + '_Incl';
            with frmMain.Components[frmMain.FindComponent(compname).ComponentIndex] as TCheckBox do
               Checked := (dm.qMIINCLUSIVE.AsString = 'Y');
            compname := 'lb' + IntToStr(i);
            with frmMain.Components[frmMain.FindComponent(compname).ComponentIndex] as TLabel do
               Caption := dm.qMINUM.AsString;
            compname := 'mib' + IntToStr(i);
            with frmMain.Components[frmMain.FindComponent(compname).ComponentIndex] as TBitBtn do
               Caption := dm.qMITITLE.AsString;
            inc(i);
            next;
         end;
      end;
   except
      on e:exception do disp(e.message, 'e');
   end;
end;
}
procedure TfrmMain.FormCreate(Sender: TObject);
  var myVar: Integer;
begin
  for myVar := 1 to _MaxArray do
  begin
    MAry[myVar] := TRowRec.Create;
  end;

// Temporary
   CheckForRefreshPointEntryInDB;
   RunFromReport := false;
   ReversePattern := false;
   TestAndModify := false;

   lst := TStringList.create;
   PSL := TStringList.create;
   bFile.list := TStringList.create;
   rFile.list := TStringList.create;
   mCounts.lines.clear;
   cCheckPosition := 0;
   cPosition := 1;
   pc.align := alClient;
   tsConfiguration.TabVisible := False;
   tsMainMenu.TabVisible := False;
   tsTest.TabVisible := False;
   tsBatch.TabVisible := False;
   pc.ActivePage := tsMainMenu;
   cbRunOption.ItemIndex := 1;
   GetInfoFromConfiguration;
   GenerateBaseTable;
   dm.qMI.open;
   dm.qMR.open;
   lblMaxBumpRecCount.Caption := format('%-10.0n', [_MaxBumpArray * 1.0]);
   lblMaxCheckCount.Caption := format('%-10.0n', [_CheckNo * 1.0]);
   lblMaxMasterFile.Caption := format('%-10.0n', [_MaxArray * 1.0]);

end;

procedure TfrmMain.mnuExitwSaveSettingClick(Sender: TObject);
begin
   if MessageDlg('Do you want to save settings and exit?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then begin
      SaveConfigurations;
      Application.terminate;
   end;
end;

procedure TfrmMain.bSetUpCloseClick(Sender: TObject);
begin
   if dm.qMI.State in [dsEdit, dsInsert] then dm.qMI.Post;
   pc.ActivePage := tsMainMenu;
end;

procedure TfrmMain.mnuConfigurationClick(Sender: TObject);
begin
   pc.ActivePage := tsConfiguration;
   dm.qMA.open;
   dm.qTS.open;
end;

procedure TfrmMain.mnuTestClick(Sender: TObject);
begin
   pc.ActivePage := tsTest;
end;

procedure TfrmMain.mnuMainMenuClick(Sender: TObject);
begin
   pc.ActivePage := tsMainMenu;
end;

procedure TfrmMain.eNumbersExit(Sender: TObject);
begin
   lbTest.Items.clear;
   ParseNumbers(eNumbers.text);
   if lst.count > 0 then lbTest.items.Assign(lst);
   lblEntryCounts.caption := IntToStr(lst.count) + ' items entered!';
end;

procedure TfrmMain.SetupThisMenu1Click(Sender: TObject);
begin
   if length(dm.qMICALMETHOD.AsString) < 1 then begin
      disp('There is no Calculation Method is defined!', 'e');
      exit;
   end;
   if dm.qMICALMETHOD.AsString = 'SUM' then begin
      frmSum := TfrmSum.create(nil);
      frmSum.ShowModal;
      frmSum.release;
      frmSum := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'SMC' then begin
      frmSumCol := TfrmSumCol.create(nil);
      frmSumCol.ShowModal;
      frmSumCol.release;
      frmSumCol := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'GAP' then begin
      frmSumReduction := TfrmSumReduction.create(nil);
      frmSumReduction.ShowModal;
      frmSumReduction.release;
      frmSumReduction := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'MUL' then begin
      frmMultiple := TfrmMultiple.create(nil);
      frmMultiple.ShowModal;
      frmMultiple.release;
      frmMultiple := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'DIV' then begin
      frmDIV := TfrmDIV.create(nil);
      frmDIV.ShowModal;
      frmDIV.release;
      frmDIV := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'MAT' then begin
      frmMatches := TfrmMatches.create(nil);
      frmMatches.ShowModal;
      frmMatches.release;
      frmMatches := nil;
   end;
   if dm.qMICALMETHOD.AsString = 'PAT' then begin
      frmPattern := TfrmPattern.create(nil);
      frmPattern.ShowModal;
      frmPattern.release;
      frmPattern := nil;
   end;
end;

procedure TfrmMain.bTestGenerateClick(Sender: TObject);
begin
   GenerateBaseTable;
end;

procedure TfrmMain.GenerateBaseTable;
   var h, i, i1, i2, i3, i4, i5, i6, j, k, n1, n2, n3, n4, n5, n6 : integer;
       t2, t3, t4, t5, t6 : integer;
       n1m, n2m, n3m, n4m, n5m, n6m, n1x, n2x, n3x, n4x, n5x, n6x : integer;
       r, s, t : string;
       notover, p2, p3 : boolean;
begin
   i := 1;
   notover := true;
   MaxSum := StrToInt(eMaxSumRow.text);
   MinSum := StrToInt(eMinSumRow.text);
   n1m := StrToInt(eN1m.text);
   n2m := StrToInt(eN2m.text);
   n3m := StrToInt(eN3m.text);
   n4m := StrToInt(eN4m.text);
   n5m := StrToInt(eN5m.text);
   n6m := StrToInt(eN6m.text);
   n1x := StrToInt(eN1x.text);
   n2x := StrToInt(eN2x.text);
   n3x := StrToInt(eN3x.text);
   n4x := StrToInt(eN4x.text);
   n5x := StrToInt(eN5x.text);
   n6x := StrToInt(eN6x.text);
   for i1 := n1m to n1x do begin
      if i1 >= n2m then t2 := i1 + 1 else t2 := n2m;
      for i2 := t2 to n2x do begin
         if i2 >= n3m then t3 := i2 + 1 else t3 := n3m;
         for i3 := t3 to n3x do begin
            if i3 >= n4m then t4 := i3 + 1 else t4 := n4m;
            for i4 := t4 to n4x do begin
               if i4 >= n5m then t5 := i4 + 1 else t5 := n5m;
               for i5 := t5 to n5x do begin
                  if i5 >= n6m then t6 := i5 + 1 else t6 := n6m;
                  for i6 := t6 to n6x do begin
                     if PassedConditions(i1, i2, i3, i4, i5, i6) then begin
                        InsertIntoMasterArrayIndexNo(i, i1, i2, i3, i4, i5, i6);
                        inc(i);
                     end;
                  end;
               end;
            end;
         end;
      end;
   end;
   ActualMax := i;
   sb.Panels[5].text := IntToStr(ActualMax-1);
   if ActualMax > _MaxArray then ActualMax := _MaxArray;
end;

function TfrmMain.PassedConditions(n1, n2, n3, n4, n5, n6 : integer) : boolean;
   var passed, cons1, cons2, cons3, cons4, odd : boolean;
       sum, conscount : integer;
begin
   sum := n1 + n2 + n3 + n4 + n5 + n6;
   odd := ((sum mod 2) > 0);
   passed := (sum <= MaxSum) and (sum >= MinSum);
//   if passed then passed := NoTwoSameNumbers(n1, n2, n3, n4, n5, n6);
   if passed then begin
      if not cbOdd.checked and odd then
         passed := false;
   end;
   if passed then begin
      if not cbEven.checked and not odd then
         passed := false;
   end;
   if passed then begin
      if cbNo3_2Consecutive.checked then
         begin
            conscount := 0;
            if (n2-n1) = 1 then inc(conscount);
            if (n3-n2) = 1 then inc(conscount);
            if (n4-n3) = 1 then inc(conscount);
            if (n5-n4) = 1 then inc(conscount);
            if (n6-n5) = 1 then inc(conscount);
            passed := (conscount < 3);
         end
      else
         if passed then begin
            if cbNo4Consecutive.checked then begin
               if (n4-n1) = 3 then passed := false;
               if (n5-n2) = 3 then passed := false;
               if (n6-n3) = 3 then passed := false;
            end;
         end;
   end;
   result := passed;
end;

procedure TfrmMain.InsertIntoMasterArrayIndexNo(i, n1, n2, n3, n4, n5, n6 : integer);
   var sum : integer;
begin
   if i < _MaxArray then begin
      MAry[i].n[1] := n1;
      MAry[i].n[2] := n2;
      MAry[i].n[3] := n3;
      MAry[i].n[4] := n4;
      MAry[i].n[5] := n5;
      MAry[i].n[6] := n6;
      if _debug then begin
         sum := n1 + n2 + n3 + n4 + n5 + n6;
//         MAry[i].HitCount := sum;
         MAry[i].HitCount := 0;
      end;
   end;
end;

procedure TfrmMain.eCIndexExit(Sender: TObject);
   var i: integer;
begin
   try
      i := StrToInt(eCIndex.text);
      DisplaySampleArrayFromIndexOf(i);
   except
      on e:exception do begin
         disp(e.message, 'e');
         eCIndex.text := '';
      end;
   end;
end;

procedure TfrmMain.DisplaySampleArrayFromIndexOf(i : integer);
   var j, k : integer;
       s : string;
begin
   cPosition := i;
   if cPosition < 1 then cPosition := 1;
   if cPosition > (ActualMax - 23) then cPosition := ActualMax - 23;
   for j := cPosition to cPosition + 23 do begin
      s := IntToStr(MAry[j].n[1]) + '-'
         + IntToStr(MAry[j].n[2]) + '-'
         + IntToStr(MAry[j].n[3]) + '-'
         + IntToStr(MAry[j].n[4]) + '-'
         + IntToStr(MAry[j].n[5]) + '-'
         + IntToStr(MAry[j].n[6]) + '  ';
      for k := 1 to _CheckNo do begin
         if MAry[j].checks[k] then
            s := s + 'X'
         else
            s := s + '.';
      end;
      s := s + ' ' + IntToStr(MAry[j].HitCount);
   end;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
   try
      cf.free;
      cf := nil;
   except
      on e:exception do;
   end;
end;

procedure TfrmMain.FormShow(Sender: TObject);
var
  l_Coeff : integer;
begin
  l_Coeff := GetScreenCoefficient;

  ChangeScale(l_Coeff, 100);
end;

procedure TfrmMain.dbgMenuItemTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
   OpenMenuItems(AFieldName);
end;

procedure TfrmMain.bConfDoneClick(Sender: TObject);
begin
   mnuMainMenuClick(Sender);
end;

procedure TfrmMain.RunNow1Click(Sender: TObject);
begin
   bRunNowClick(Sender);
end;

procedure TfrmMain.bRunNowClick(Sender: TObject);
   var ttb, tte, tgap, tb, te, gap : TDateTime;
       runned, DoUpToCheckUp, DoStartFrom, RunMenuItems, rerun : boolean;
begin
   DoUpToCheckUp := false;
   RunMenuItems := true;
   RunManualFromConfig := false;
   rerun := false;
   if not CheckResetNo then begin
      eResetNo.SetFocus;
      exit;
   end;
   if not CheckUpToNo then begin
      eUpto.SetFocus;
      exit;
   end;
   if not CheckStartFrom then begin
      eStartFrom.SetFocus;
      exit;
   end;
   if not CheckRefreshPoints then exit;

   RunManualFromConfig := cbRunManualSelection.checked;
   if RunManualFromConfig then begin
      GetManualList;
      cbMainHitRange.checked := false;
      cbDoSumFirst.checked := false;
      cbDoSumColFirst.checked := false;
   end;
   DoStartFrom := (StartFrom > 0);
   DoUpToCheckUp := (UpToNo > 0);
   FirstOuterRangeNo := findMinOuterGroupNo;

   if not InsideOfRefreshRecursive then mCounts.lines.clear;

   cCheckPosition := 0;
   cMainMenuOrder := 1;
   cPosition := 1;
   ttb := now;
   Stopped := false;
   WithinRange := false;
   InEndingRange := false;

   if cbDoSumFirst.checked then begin
      with dm.qMI do begin
         close;
         sql.clear;
         sql.add('select * from MenuItem where ((num > 300) and (num < 700)) order by num ');   //
         open;
         first;
         while not eof do begin
            if dm.qMICALMETHOD.AsString = 'SUM' then begin
               if stopped then exit;
               frmSum := TfrmSum.create(nil);
               frmSum.Show;
               frmSum.bFromLastDrawClick(nil);
               frmSum.bRunSampleClick(nil);
               frmSum.release;
               frmSum := nil;
               inc(cMainMenuOrder);
               DoCompactProcedure;
               if dm.qMINUM.asinteger = RefreshNo1 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo1+1);
                  RefreshNo1 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
               if dm.qMINUM.asinteger = RefreshNo2 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo2+1);
                  RefreshNo2 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
               if dm.qMINUM.asinteger = RefreshNo3 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo3+1);
                  RefreshNo3 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
            end;
            next;
         end;
         close;
         sql.clear;
         sql.add('select * from MenuItem order by num ');   //
         open;
         first;
         InsideOfRefreshRecursive := true;
         exit;
      end;
   end;

   if cbDoSumColFirst.checked then begin
      with dm.qMI do begin
         close;
         sql.clear;
         sql.add('select * from MenuItem where num >= 700 order by num ');   //
         open;
         first;
         while not eof do begin
            if dm.qMICALMETHOD.AsString = 'SMC' then begin
               if stopped then exit;
               frmSumCol := TfrmSumCol.create(nil);
               frmSumCol.Show;
               RunThisMenuForSUM;
               frmSumCol.release;
               frmSumCol := nil;
               if dm.qMINUM.asinteger = RefreshNo1 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo1+1);
                  RefreshNo1 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
               if dm.qMINUM.asinteger = RefreshNo2 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo2+1);
                  RefreshNo2 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
               if dm.qMINUM.asinteger = RefreshNo3 then begin
                  Stopped := true;
                  eStartFrom.text := inttostr(RefreshNo3+1);
                  RefreshNo3 := 0;
                  InsideOfRefreshRecursive := true;
                  bRunNowClick(Sender);
                  exit;
               end;
            //   inc(cMainMenuOrder);
            //   DoCompactProcedure;
            end;
            next;
         end;
         close;
         sql.clear;
         sql.add('select * from MenuItem order by num ');   //
         open;
         first;
         InsideOfRefreshRecursive := true;
         exit;
      end;
   end;

   with dm.qMI do begin
      first;
      if (not RunManualFromConfig) and DoStartFrom then begin
         if not dm.qMI.locate('NUM', StartFrom, []) then begin
            dm.qMI.locate('NUM', StartFrom-1, []);  // check from refresh no.
            next;
         end;
      end;
      while not eof do begin
         if RunManualFromConfig then
            RunMenuItems := IsIncludedFromConfigCheck(dm.qMINUM.AsInteger)
         else
            begin
               if DoStartFrom then
                  RunMenuItems := (dm.qMINUM.AsInteger >= StartFrom);
               if DoUpToCheckUp then
                  if dm.qMINUM.AsInteger > UpToNo then begin
                     InsideOfRefreshRecursive := false;
                     break;
                  end;
            end;
         application.processmessages;
         if stopped then exit;
         if RunMenuItems then begin
            if dm.qMINUM.asinteger = RefreshNo1 then begin
               Stopped := true;
               eStartFrom.text := inttostr(RefreshNo1+1);
               RefreshNo1 := 0;
               InsideOfRefreshRecursive := true;
               rerun := true;
            end;
            if dm.qMINUM.asinteger = RefreshNo2 then begin
               Stopped := true;
               eStartFrom.text := inttostr(RefreshNo2+1);
               RefreshNo2 := 0;
               InsideOfRefreshRecursive := true;
               rerun := true;
            end;
            if dm.qMINUM.asinteger = RefreshNo3 then begin
               Stopped := true;
               eStartFrom.text := inttostr(RefreshNo3+1);
               RefreshNo3 := 0;
               InsideOfRefreshRecursive := true;
               rerun := true;
            end;
            tb := now;
            runned := (dm.qMICBFOREXECUTE.Value = 'Y');
            if cbMainHitRange.checked and (not WithinRange) then
               IsThisMenuNumberAnBeginningRange;
            if CompareText(cbRunOption.text, 'Run Selected') = 0 then begin
               if dm.qMICBFOREXECUTE.AsString = 'Y' then begin
                  if dm.qMICALMETHOD.AsString = 'SMC' then
                     RunThisMenuForSUM;
                  if dm.qMICALMETHOD.AsString = 'GAP' then
                     RunThisMenuForSUMorGAP(_FOR_GAP);
                  if dm.qMICALMETHOD.AsString = 'MAT' then
                     RunThisMenuForMatches;
                  inc(cMainMenuOrder);
               end;
            end;
            if CompareText(cbRunOption.text, 'Run All') = 0 then begin
               if dm.qMICALMETHOD.AsString = 'SMC' then
                  RunThisMenuForSUM;
               if dm.qMICALMETHOD.AsString = 'GAP' then
                  RunThisMenuForSUMorGAP(_FOR_GAP);
               if dm.qMICALMETHOD.AsString = 'MAT' then
                  RunThisMenuForMatches;
               inc(cMainMenuOrder);
            end;
            if CompareText(cbRunOption.text, 'Run Range') = 0 then begin
               if dm.qMICBFOREXECUTE.AsString = 'Y' then begin
                  if dm.qMICALMETHOD.AsString = 'SMC' then
                     RunThisMenuForSUM;
                  if dm.qMICALMETHOD.AsString = 'GAP' then
                     RunThisMenuForSUMorGAP(_FOR_GAP);
                  if dm.qMICALMETHOD.AsString = 'MAT' then
                     RunThisMenuForMatches;
                  inc(cMainMenuOrder);
               end;
//             Get Range Selections.
            end;

            // Do Main menu's range check-up.
            if cbMainHitRange.checked then begin
               IsThisMenuNumberAnEndingRange(InEndingRange,
                  MainRangeBegin, MainRangeCount);
               if InEndingRange then begin
                  PerformRevive(MainRangeCount, MainRangeBegin,
                     dm.qMINUM.asinteger);
                  WithinRange := false;
               end;
            end;

            // Calculate Times Elapsed
            te := now;
            tte := now;
            tgap := tte - ttb;
            sb.Panels[1].text := FormatDateTime('hh:mm:ss', tgap);
            gap := te - tb;
            if dm.qMICBFOREXECUTE.AsString = 'Y' then begin
               edit;
               dm.qMITIMEGAP.Value := DateTimeToSQLTimeStamp(gap);
               post;
            end;

            if RunManualFromConfig then
               if dm.qMINUM.AsInteger = LastManualNo then
                  PerformGatherManualSelectResult;

//          if ResetNo = dm.qMINUM.asinteger then
            if runned then DoCompactProcedure;

            if rerun then begin
               bRunNowClick(Sender);
               rerun := false;
               InsideOfRefreshRecursive := false;
               eStartFrom.text := '0';
               break;
            end;
         end;  // if RunMenuItem

         next;
      end;
   end;
   tte := now;
   tgap := tte - ttb;
   sb.Panels[1].text := FormatDateTime('hh:mm:ss', tgap);
   dm.qMI.first;
   InsideOfRefreshRecursive := false;
end;

procedure TfrmMain.dbgMenuItemDblClick(Sender: TObject);
begin
   if not dm.qMI.active then exit;
   if dm.qMI.recordcount < 1 then exit;
   SetupThisMenu1Click(Sender);
end;

procedure TfrmMain.bCopyMainTableClick(Sender: TObject);
   var i : integer;
begin
   if not dm.qMA.active then dm.qMA.open;
   if dm.qMA.recordcount > 0 then begin
      disp('Main table already has data! aborted!', 'i');
      exit;
   end;
   with dm.tq do begin
      sql.clear;
      sql.add('select * from main');
      open;
      if recordcount > 0 then
         while not eof do begin
            dm.qMA.insert;
            for i := 1 to 6 do
               dm.qMA.fields[i].value := fields[i-1].value;
            for i := 7 to 46 do
               dm.qMA.fields[i].value := 'N';
            dm.qMAMAID.value := GenKeyVal('MAID');
            dm.qMA.post;
            next;
         end;
   end;
end;

procedure TfrmMain.bLoadDefaultClick(Sender: TObject);
begin
   try
      ParseNumbers(cf.str('DefInit'));
      if lst.count > 0 then begin
         eN1m.text := lst[0];   eN1x.text := lst[1];
         eN2m.text := lst[2];   eN2x.text := lst[3];
         eN3m.text := lst[4];   eN3x.text := lst[5];
         eN4m.text := lst[6];   eN4x.text := lst[7];
         eN5m.text := lst[8];   eN5x.text := lst[9];
         eN6m.text := lst[10];  eN6x.text := lst[11];
         eMinSumRow.text := lst[12];
         eMaxSumRow.text := lst[13];
         cbNo3_2Consecutive.checked := (lst[14] = '1');
         cbNo4Consecutive.checked := (lst[15] = '1');
         cbOdd.checked := (lst[16] = '1');
         cbEven.checked := (lst[17] = '1');
      end;
   except
      on e:exception do disp(e.message, 'e');
   end;
end;

procedure TfrmMain.puMenuPopup(Sender: TObject);
begin
   mnuSavethistoASCIIDelimeterFile.visible := false;
   SetupThisMenu1.visible := false;
   if dbgMenuItem.focused then begin
      SetupThisMenu1.visible := true;
   end;
end;

procedure TfrmMain.eTempSavingFileDblClick(Sender: TObject);
begin
   if SaveDialog1.Execute then
      eTempSavingFile.text := SaveDialog1.filename;
end;

procedure TfrmMain.bCopyNewClick(Sender: TObject);
   var q1, q2 : TADQuery;
       i, j, k, btid, cnt, coid, m, n : integer;
begin
   q1 := TADQuery.create(nil);
   q2 := TADQuery.create(nil);
   q1.Connection := dm.ADConnection;
   q1.Transaction := dm.ADTransaction;
   q2.Connection := dm.ADConnection;
   q2.Transaction := dm.ADTransaction;
//   Copy of Main Menu Items
   i := GenKeyVal('miid');
   q1.sql.add('select * from menuitem where miid = ' + inttostr(i));
   q2.sql.add('select * from menuitem where miid = ' + dm.qMIMIID.AsString);
   q1.open;
   q2.open;
   q1.insert;
   q1.fieldbyname('miid').value := i;
   j := q2.Fieldcount;
   for k := 1 to j - 1 do begin
      try
         q1.fields[k].Value := q2.fields[k].value;
      except
         on e:exception do disp(e.message, 'e');
      end;
   end;
   q1.post;
//   Copy of BumpTables
   q1.close;
   q2.close;
   q1.sql.clear;
   q2.sql.clear;
   q1.sql.add('select * from bumptables where miid = 0 ');
   q2.sql.add('select * from bumptables where miid = ' + dm.qMIMIID.AsString
      + ' order by btid');
   q1.open;
   q2.open;
   cnt := q2.RecordCount;
   j := q2.Fieldcount;
   for m := 1 to cnt do begin
      q1.insert;
      for k := 1 to j - 1 do begin
         try
            q1.fields[k].Value := q2.fields[k].value;
         except
            on e:exception do disp(e.message, 'e');
         end;
      end;
      btid := GenKeyVal('btid');
      q1.fieldbyname('miid').value := i;
      q1.fieldbyname('btid').value := btid;
      q1.post;
      q2.next;
   end;
//   Copy of Columns
   q1.close;
   q2.close;
   q1.sql.clear;
   q2.sql.clear;
   q1.sql.add('select * from columns where miid = ' + IntTOStr(i));
   q2.sql.add('select * from columns where miid = ' + dm.qMIMIID.AsString);
   q1.open;
   q2.open;
   cnt := q2.RecordCount;
   j := q2.Fieldcount;
   for m := 1 to cnt do begin
      q1.insert;
      for k := 1 to j - 1 do begin
         try
            q1.fields[k].Value := q2.fields[k].value;
         except
            on e:exception do disp(e.message, 'e');
         end;
      end;
      coid := GenKeyVal('coid');
      q1.fieldbyname('miid').value := i;
      q1.fieldbyname('coid').value := coid;
      q1.post;
      q2.next;
   end;
   q1.close;
   q2.close;
   q1.free;
   q2.free;
   q1 := nil;
   q2 := nil;
   dm.qMI.close;
   dm.qMI.open;
   dm.qMI.locate('miid', i, []);
end;

procedure TfrmMain.mnuBatchRunClick(Sender: TObject);
begin
   pc.ActivePage := tsBatch;
   qBat.open;
end;

procedure TfrmMain.bRunAllClick(Sender: TObject);
begin
   if not qBat.active then exit;
   if qBat.recordcount < 1 then exit;
   qBat.first;
   while not qBat.eof do begin
      try
//         ExecFile1.commandline := qBatFILENAME.AsString;
//         ExecFile1.execute;
      except
         on e:exception do disp(e.message, 'e');
      end;
      qBat.next;
   end;
end;

procedure TfrmMain.qBatAfterInsert(DataSet: TDataSet);
begin
   qBatBAID.Value := GenKeyVal('BAID');
   qBatNUM.Value := 0;
end;

procedure TfrmMain.qBatAfterPost(DataSet: TDataSet);
   var i : integer;
begin
   i := qBATBAID.Asinteger;
   qBat.close;
   qBat.open;
   qBat.locate('baid', i, []);

end;

procedure TfrmMain.bSaveResultClick(Sender: TObject);
   var f : TextFile;
       i : integer;
       s : string;
begin
   try
      if length(trim(eTempSavingFile.text)) < 1 then begin
         disp('No result filename is assigned!', 'e');
         exit;
      end;
      AssignFile(F, eTempSavingFile.text);
      Rewrite(F);
      for i := 1 to ActualMax do begin
         if MAry[i].checks[cMainMenuOrder-1] then begin
            s := TwoDigitNumber(MAry[i].n[1]) + ',"'
               + TwoDigitNumber(MAry[i].n[2]) + '","'
               + TwoDigitNumber(MAry[i].n[3]) + '","'
               + TwoDigitNumber(MAry[i].n[4]) + '","'
               + TwoDigitNumber(MAry[i].n[5]) + '","'
               + TwoDigitNumber(MAry[i].n[6]) + '"';
            writeln(F, s);
         end;
      end;
      CloseFile(F);
   except
      on e:exception do begin
         disp('File could not be saved for some reason!', 'e');
         closefile(f);
      end;
   end;
end;

procedure TfrmMain.eSnumExit(Sender: TObject);
begin
   lbSLox.Items.clear;
   ParseNumbers(eSnum.text);
   if lst.count > 0 then lbSLox.items.Assign(lst);
   lblSNumCount.caption := IntToStr(lst.count) + ' items entered!';
end;

procedure TfrmMain.bSNumGenerateClick(Sender: TObject);
   var i, j, k : integer;
       f : TextFile;
       s : string;
begin
   eSnumExit(Sender);
   if lst.count > 0 then begin
      disp('No numbers to generate!', 'e');
      eSnum.SetFocus;
      exit;
   end;
   if length(trim(eSNumSave.text)) < 1 then begin
      disp('No file name to save!', 'e');
      eSNumSave.SetFocus;
      exit;
   end;
   try
      AssignFile(F, eTempSavingFile.text);
      Rewrite(F);
      for i := 1 to lst.count do begin
         s := '';
         for j := 0 to lst.count - 1 do begin
         
            // Need to do calculation parts

            s := lst.Strings[1] + ',"'
               + lst.Strings[2] + '","'
               + lst.Strings[3] + '","'
               + lst.Strings[4] + '","'
               + lst.Strings[5] + '","'
               + lst.Strings[6] + '"';

         end;
         writeln(F, S);
      end;
      CloseFile(F);
      Disp('Completed!', 'i');
   except
      on e:exception do begin
         disp(e.message, 'e');
         closefile(f);
      end;
   end;
end;

procedure TfrmMain.bRearrangeNoClick(Sender: TObject);
   var i, oldi, newi : integer;
begin
   if not CheckForValidity then exit;
   i := 1;
   with dm.qMI do begin
      close;
      sql.clear;
      sql.add('select * from MenuItem where num < 300 order by num ');
      open;
      first;
      while not eof do begin    // Do Active Ones First
         if CompareText(dm.qMICBFOREXECUTE.AsString, 'Y') = 0 then begin
            dm.qMI.Edit;
            oldi := dm.qMINUM.asinteger;
            dm.qMINUM.Value := i;
            inc(i);
            newi := i-1;
            dm.qMI.Post;
            UpdateRangeInfo(oldi, newi);
         end;
         next;
      end;
      first;
      while not eof do begin    // Do INActive onew later
         if CompareText(dm.qMICBFOREXECUTE.AsString, 'Y') <> 0 then begin
            dm.qMI.Edit;
            dm.qMINUM.Value := i;
            inc(i);
            dm.qMI.Post;
         end;
         next;
      end;
      close;
      sql.clear;
      sql.add('select * from MenuItem order by num ');
      open;
      first;
   end;
   dm.qMR.close;
   dm.qMR.open;
end;

procedure TfrmMain.cbMonitorClick(Sender: TObject);
begin
   Mon := cbMonitor.checked;
   if Mon then begin
      if frmMonitor = nil then begin
         frmMonitor := TfrmMonitor.create(nil);
         frmMonitor.Show;
      end;
   end;
   if not Mon then begin
      if frmMonitor <> nil then begin
         frmMonitor.release;
         frmMonitor := nil;
      end;
   end;
end;

procedure TfrmMain.mnuViewResultClick(Sender: TObject);
var
  RunFilePC: PChar;
  Resul : Word;
  s : string;
begin
   try
      s := 'notepad ' + dm.qMIRESULTFILE.asstring;
      Resul := WinExec(pansichar(s),     { Run the program pass back }
         sw_ShowNormal);                                  { the returned result }
   except
      on e:exception do;
   end;
end;

procedure TfrmMain.mTestSum0DblClick(Sender: TObject);
begin
  mColPatterns.Clear;
  mColPatterns.Lines.Add('1');
  mColPatterns.Lines.Add('2');
  mColPatterns.Lines.Add('3');
  mColPatterns.Lines.Add('4');
  mColPatterns.Lines.Add('5');

  mTSRPat.Clear;
  mTSRPat.Lines.Add('3');
  mTSRPat.Lines.Add('4');
  mTSRPat.Lines.Add('5');
end;

procedure TfrmMain.mTestSum1DblClick(Sender: TObject);
begin
  mColPatterns.Clear;
  mColPatterns.Lines.Add('12');
  mColPatterns.Lines.Add('13');
  mColPatterns.Lines.Add('14');
  mColPatterns.Lines.Add('15');
  mColPatterns.Lines.Add('23');
  mColPatterns.Lines.Add('24');
  mColPatterns.Lines.Add('25');
  mColPatterns.Lines.Add('34');
  mColPatterns.Lines.Add('35');
  mColPatterns.Lines.Add('45');

  mTSRPat.Clear;
  mTSRPat.Lines.Add('34');
  mTSRPat.Lines.Add('35');
  mTSRPat.Lines.Add('45');
end;

procedure TfrmMain.mTestSum2DblClick(Sender: TObject);
begin
  mColPatterns.Clear;
  mColPatterns.Lines.Add('123');
  mColPatterns.Lines.Add('124');
  mColPatterns.Lines.Add('125');
  mColPatterns.Lines.Add('134');
  mColPatterns.Lines.Add('135');
  mColPatterns.Lines.Add('145');
  mColPatterns.Lines.Add('234');
  mColPatterns.Lines.Add('235');
  mColPatterns.Lines.Add('245');
  mColPatterns.Lines.Add('345');

  mTSRPat.Clear;
  mTSRPat.Lines.Add('235');
  mTSRPat.Lines.Add('245');
  mTSRPat.Lines.Add('345');
end;

procedure TfrmMain.mTestSum3DblClick(Sender: TObject);
begin
  mColPatterns.Clear;
  mColPatterns.Lines.Add('1234');
  mColPatterns.Lines.Add('1235');
  mColPatterns.Lines.Add('1245');
  mColPatterns.Lines.Add('1345');
  mColPatterns.Lines.Add('2345');

  mTSRPat.Clear;
  mTSRPat.Lines.Add('1245');
  mTSRPat.Lines.Add('1345');
  mTSRPat.Lines.Add('2345');
end;

procedure TfrmMain.bStopClick(Sender: TObject);
begin
   Stopped := true;
end;

procedure TfrmMain.bCopyClick(Sender: TObject);
   var bn, en : integer;
       q1, q2 : TADQuery;
       i, j, k, btid, cnt, coid, m, n : integer;
       copyok : boolean;
begin
   copyok := false;
   frmCopyUnderneath := TfrmCopyUnderneath.create(nil);
   if frmCopyUnderneath.showmodal = mrOk then begin
      bn := frmCopyUnderneath.bn;
      en := frmCopyUnderneath.en;
//      disp(inttostr(bn) + ' ' + inttostr(en), 'i');
      copyok := true;
   end;
   frmCopyUnderneath.release;
   frmCopyUnderneath := nil;

   if copyok then begin
      q1 := TADQuery.create(nil);
      q2 := TADQuery.create(nil);
      q1.Connection := dm.ADConnection;
      q1.Transaction := dm.ADTransaction;
      q2.Connection := dm.ADConnection;
      q2.Transaction := dm.ADTransaction;
      //   Copy of BumpTables
      q1.close;
      q2.close;
      q1.sql.clear;
      q2.sql.clear;
      q1.sql.add('select * from menuitem where num = ' + inttostr(en));
      q2.sql.add('select * from menuitem where num = ' + inttostr(bn));
      q1.open;
      q2.open;
      en := q1.fieldbyname('miid').asinteger;
      bn := q2.fieldbyname('miid').asinteger;
      q1.close;
      q2.close;
      q1.sql.clear;
      q2.sql.clear;
      q1.sql.add('select * from bumptables where miid = ' + inttostr(en));
      q2.sql.add('select * from bumptables where miid = ' + inttostr(bn)
         + ' order by btid');
      q1.open;
      q2.open;
      cnt := q2.RecordCount;
      j := q2.Fieldcount;
      for m := 1 to cnt do begin
         q1.insert;
         for k := 1 to j - 1 do begin
            try
               q1.fields[k].Value := q2.fields[k].value;
            except
               on e:exception do disp(e.message, 'e');
            end;
         end;
         btid := GenKeyVal('btid');
         q1.fieldbyname('miid').value := en;
         q1.fieldbyname('btid').value := btid;
         q1.post;
         q2.next;
      end;
      //   Copy of Columns
      q1.close;
      q2.close;
      q1.sql.clear;
      q2.sql.clear;
      q1.sql.add('select * from columns where miid = ' + IntTOStr(en));
      q2.sql.add('select * from columns where miid = ' + IntTOStr(bn));
      q1.open;
      q2.open;
      cnt := q2.RecordCount;
      j := q2.Fieldcount;
      for m := 1 to cnt do begin
         q1.insert;
         for k := 1 to j - 1 do begin
            try
               q1.fields[k].Value := q2.fields[k].value;
            except
               on e:exception do disp(e.message, 'e');
            end;
         end;
         coid := GenKeyVal('coid');
         q1.fieldbyname('miid').value := en;
         q1.fieldbyname('coid').value := coid;
         q1.post;
         q2.next;
      end;
      q1.close;
      q2.close;
      q1.free;
      q2.free;
      q1 := nil;
      q2 := nil;
      dm.qMI.close;
      dm.qMI.open;
      dm.qMI.locate('miid', en, []);
   end;
end;

procedure TfrmMain.bToMainMenuClick(Sender: TObject);
begin
   pc.ActivePage := tsMainMenu;
end;

procedure TfrmMain.bRegeneratesClick(Sender: TObject);
begin
   GenerateBaseTable;
end;

procedure TfrmMain.bViewResultFileClick(Sender: TObject);
var
  RunFilePC: PChar;
  Resul : Word;
  s : string;
begin
   try
      s := 'notepad ' + eTempSavingFile.text;
      Resul := WinExec(pansichar(s),     { Run the program pass back }
         sw_ShowNormal);             { the returned result }
   except
      on e:exception do;
   end;
end;

procedure TfrmMain.cbFileDlgCustomDlg(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    if not (dm.qTS.state in [dsEdit, dsInsert]) then dm.qTS.edit;
    dm.qTSFILENAME.text := OpenDialog1.filename;
    dm.qTS.post;
  end;
end;

procedure TfrmMain.eTestSumResultFileNameDblClick(Sender: TObject);
begin
   if SaveDialog1.Execute then
      eTestSumResultFileName.text := SaveDialog1.filename;
end;

procedure TfrmMain.bRunTestSumClick(Sender: TObject);
   var i, j, key,  maxlines, trackpos, xoff, yoff, seq, x, y, cx, cy : integer;
       TSFile   : array [1..100] of integer;
       TS0Store : array [1..5] of integer;
       TS1Store : array [1..10] of integer;
       TS2Store : array [1..10] of integer;
       TS3Store : array [1..5] of integer;
       q : TADQuery;
       RunBegins, RunEnds : integer;
begin
   if not dm.qTS.active then exit;
   if dm.qTS.recordcount < 1 then exit;
   try
      if length(trim(eTSBegin.text)) < 1 then
         RunBegins := 0
      else
         begin
            RunBegins := StrToInt(trim(eTSBegin.text));
            if RunBegins < 1 then RunBegins := 0;
         end;
   except
      on e:exception do begin
         disp('Error in the value in End Range!', 'e');
         eTSEnd.SetFocus;
         exit;
      end;
   end;
   try
      if length(trim(eTSEnd.text)) < 1 then
         RunEnds := 1000
      else
         begin
            RunEnds := StrToInt(trim(eTSEnd.text));
            if RunEnds < 1 then RunEnds := 1000;
         end;
   except
      on e:exception do begin
         disp('Error in the value in End Range!', 'e');
         eTSEnd.SetFocus;
         exit;
      end;
   end;

   if not RunFromReport then TestSumResFileName := eTestSumResultFileName.Text;

   xoff := 0;
   yoff := 0;
   seq := 0;
   q := TADQuery.create(nil);
   q.Connection := dm.ADConnection;
   q.Transaction := dm.ADTransaction;
   mTestSum0.Lines.clear;
   mTestSum1.Lines.clear;
   mTestSum2.Lines.clear;
   mTestSum3.Lines.clear;
   mTestSum0.Lines.LoadFromFile('c:\ko\testsum\testsum0.txt');
   mTestSum1.Lines.LoadFromFile('c:\ko\testsum\testsum1.txt');
   mTestSum2.Lines.LoadFromFile('c:\ko\testsum\testsum2.txt');
   mTestSum3.Lines.LoadFromFile('c:\ko\testsum\testsum3.txt');
   if FileExists(TestSumResFileName) then
      DeleteFile(TestSumResFileName);
   with q do begin
      close;
      sql.clear;
      sql.add('create table "' + TestSumResFileName + '" ('
         + ' n1 character(1), '
         + ' n2 character(8), '
         + ' n3 character(8), '
         + ' n4 character(8), '
         + ' n5 character(8), '
         + ' n6 character(1), '
         + ' n7 character(8), '
         + ' n8 character(8), '
         + ' n9 character(8), '
         + ' n10 character(8), '
         + ' n11 character(1), '
         + ' n12 character(8), '
         + ' n13 character(8), '
         + ' n14 character(8), '
         + ' n15 character(8), '
         + ' n16 character(1), '
         + ' n17 character(8), '
         + ' n18 character(8), '
         + ' n19 character(8), '
         + ' n20 character(8), '
         + ' n21 character(1)); ');
      execsql;
      close;
      sql.clear;
      sql.add('select * from "' + TestSumResFileName + '" ');
      open;

      j := ((dm.qTS.recordcount div 4) + 1) * 11;  // Y Size for Each Block
      for i := 1 to j do begin    // Create Blank Lines
         q.insert;
         q.Fields[0].value := '|';
         q.post;
      end;

{      if RunFromReport then begin // Write a title
         q.first;
         q.edit;
         for i := 0 to mTestSum0.Lines.count - 1 do
            q.Fields[i+1].value := mTestSum0.Lines[i];
         q.post;
      end;  }
   end;

   with dm.qTS do begin
      first;
      if RunBegins > 0 then Locate('TSID', RunBegins, []);
      while not eof do begin
         xoff := seq mod 4;   //  Make it for 4 results in a row
         yoff := seq div 4;   //              ""
         inc(seq);
         mTestSum.Lines.clear;
         mTestSum.Lines.LoadFromFile(dm.qTSFILENAME.AsString);
         maxlines := 0;
         for i := 1 to 100 do TSFile[i] := 0;   // Clear Temporary Storage
         for i := 1 to 5  do TS0Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 10 do TS1Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 10 do TS2Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 5  do TS3Store[i] := 0;  // Clear Temporary Storage

         for i := 0 to 99 do begin
            try
               if length(trim(mTestSum.lines[i])) > 0 then
                  begin
                     TSFile[i+1] := strtoint(mTestSum.lines[i]);
                     inc(maxlines);
                  end
               else
                  break;
            except
               on e:exception do begin
                  disp('Error on datafile : ' + dm.qTSFILENAME.AsString, 'e');
                  exit;
               end;
            end;
         end;

         // Fill Up the Temporary Storage with Matches Found
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 5 do
               if TSFile[i] = StrToInt(mTestSum0.lines[j-1]) then begin
                  TS0Store[trackpos] := TS0[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 10 do
               if TSFile[i] = StrToInt(mTestSum1.lines[j-1]) then begin
                  TS1Store[trackpos] := TS1[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 10 do
               if TSFile[i] = StrToInt(mTestSum2.lines[j-1]) then begin
                  TS2Store[trackpos] := TS2[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 5 do
               if TSFile[i] = StrToInt(mTestSum3.lines[j-1]) then begin
                  TS3Store[trackpos] := TS3[j];
                  inc(trackpos);
               end;

         // Fill-up the result file
         x := 1 + (xoff) * 5;
         y := 2 + yoff * 11;
         q.first;
         for i := 1 to y-1 do q.next;
         q.edit;
         q.fields[x].value := dm.qTSALIASNAME.AsString;
         q.post;
         q.next;

         for i := 1 to 10 do begin
            q.edit;
            if i < 6 then
               if ts0store[i] <> 0 then
                  q.fields[x].value := inttostr(ts0store[i]);
            if ts1store[i] <> 0 then
               q.fields[x+1].value := inttostr(ts1store[i]);
            if ts2store[i] <> 0 then
               q.fields[x+2].value := inttostr(ts2store[i]);
            if i < 6 then
               if ts3store[i] <> 0 then
                  q.fields[x+3].value := inttostr(ts3store[i]);
            q.post;
            q.next;
         end;
         if RunEnds = dm.qTSTSID.AsInteger then
            break;
         next;
      end;
   end;
   q.close;
   q.free;
   q := nil;
end;

procedure TfrmMain.bCopyToMenuClick(Sender: TObject);
   var q1, q2 : TADQuery;
       miid, i, j, k, btid, cnt, coid, m, n : integer;
begin
   q1 := TADQuery.create(nil);
   q2 := TADQuery.create(nil);
   q1.Connection := dm.ADConnection;
   q1.Transaction := dm.ADTransaction;
   q2.Connection := dm.ADConnection;
   q2.Transaction := dm.ADTransaction;
//   Create menu Item
   miid := GenKeyVal('miid');
   q1.sql.add('select * from menuitem where miid = ' + inttostr(i));
   q1.open;
   with q1 do begin
      insert;
      fieldbyname('MIID').Value := miid;
      fieldbyname('NUM').Value := 0;
      fieldbyname('CBFOREXECUTE').Value := 'Y';
      fieldbyname('INCLUSIVE').Value := 'Y';
      fieldbyname('TITLE').Value := 'Copy of TEST-SUM : ' + eTSBegin.text
         + ' - ' + eTSEnd.text;
      fieldbyname('CALMETHOD').Value := 'MAT';
      fieldbyname('RANGEBEGIN').Value := 1;
      fieldbyname('RANGEEND').Value := 1;
      fieldbyname('SAVETO').Value := 'N';
      post;
   end;
// Merge TEST-SUM Items to Bumping Table in New Menu item
   q1.close;
   q1.sql.clear;
   q1.sql.add('select * from bumptables where miid = ' + inttostr(miid));
   q2.sql.add('select * from tstable where tsid >= '
      + eTSBegin.text + ' and tsid <= ' + eTSEnd.text
      + ' order by tsid');
   q1.open;
   q2.open;
   cnt := q2.RecordCount;
   j := q2.Fieldcount;
   for m := 1 to cnt do begin
      q1.insert;
      btid := GenKeyVal('btid');
      q1.fieldbyname('miid').value := miid;
      q1.fieldbyname('btid').value := btid;
      q1.fieldbyname('FILENAME').value := q2.fieldbyname('FILENAME').asstring;
      q1.fieldbyname('KEEPB').value := 1;
      q1.fieldbyname('KEEPE').value := 1;
      q1.fieldbyname('LINEB').value := 0;
      q1.fieldbyname('LINEE').value := 0;
      q1.fieldbyname('C1').value := 'Y';
      q1.fieldbyname('C2').value := 'Y';
      q1.fieldbyname('C3').value := 'Y';
      q1.fieldbyname('C4').value := 'Y';
      q1.fieldbyname('C5').value := 'Y';
      q1.fieldbyname('C6').value := 'Y';
      q1.fieldbyname('GRPNO').value := 1;
      q1.fieldbyname('OGNO').value := 1;
      if m = 1 then begin
         q1.fieldbyname('GRPKEEPB').value := 1;
         q1.fieldbyname('GRPKEEPE').value := 1;
         q1.fieldbyname('OGRB').value := 1;
         q1.fieldbyname('OGRE').value := 1;
      end;
      q1.post;
      q2.next;
   end;
   q1.close;
   q2.close;
   q1.free;
   q2.free;
   q1 := nil;
   q2 := nil;
   dm.qMI.close;
   dm.qMI.open;
   dm.qMI.locate('miid', miid, []);
end;

procedure TfrmMain.bMenuClick(Sender: TObject);
   var q1, q2 : TADQuery;
       miid, i, j, k, btid, cnt, coid, m, n, gb, ge, brange, erange,
       grp, groupcnt, colcount, curgroup, curcol : integer;
       tsgrp, tscols : string;
       IsFirst, IsFirstGroup : boolean;
begin
   if mTSGrp.Lines.Count < 1 then begin
      disp('No Groups are listed!', 'e');
      mTSGrp.setfocus;
      exit;
   end;
   if mColPatterns.Lines.Count < 1 then begin
      disp('No Column Patterns are listed!', 'e');
      mColPatterns.setfocus;
      exit;
   end;
   if length(eColGrpRange.text) < 1 then begin
      disp('No Group Range are listed!', 'e');
      eColGrpRange.setfocus;
      exit;
   end;

   IsFirst := true;
   curgroup := 1;
   curcol := 1;
   grp := 1;
   groupcnt := mTSGrp.Lines.Count;
   colcount := mColPatterns.Lines.Count;
   ParseNumbers(eColGrpRange.text);
   if lst.count > 0 then begin
      brange := strtoint(lst[0]);
      erange := strtoint(lst[1]);
   end;
//   disp(inttostr(brange) + ':' + inttostr(erange), 'i');
//   exit;
   q1 := TADQuery.create(nil);
   q2 := TADQuery.create(nil);
   q1.Connection := dm.ADConnection;
   q1.Transaction := dm.ADTransaction;
   q2.Connection := dm.ADConnection;
   q2.Transaction := dm.ADTransaction;
//   Create menu Item
   miid := GenKeyVal('miid');
   q1.sql.add('select * from menuitem where miid = ' + inttostr(i));
   q1.open;
   with q1 do begin
      insert;
      fieldbyname('MIID').Value := miid;
      fieldbyname('NUM').Value := 0;
      fieldbyname('CBFOREXECUTE').Value := 'Y';
      fieldbyname('INCLUSIVE').Value := 'Y';
      fieldbyname('TITLE').Value := 'TEST-SUM by Menu';
      fieldbyname('CALMETHOD').Value := 'MAT';
      fieldbyname('RANGEBEGIN').Value := 1;
      fieldbyname('RANGEEND').Value := 1;
      fieldbyname('SAVETO').Value := 'N';
      post;
   end;
// Merge TEST-SUM Items to Bumping Table in New Menu item
   q1.close;
   q1.sql.clear;
   q1.sql.add('select * from bumptables where miid = ' + inttostr(miid));
   q1.open;
   for i := 0 to groupcnt - 1 do begin
      ParseNumbers(mTSGrp.lines[i]);
      gb := strtoint(lst[0]);
      ge := strtoint(lst[1]);
      q2.close;
      q2.sql.clear;
      q2.sql.add('select * from tstable where tsid >= '
         + lst[0] + ' and tsid <= ' + lst[1] + ' order by tsid');
      q2.open;
      cnt := q2.RecordCount;
      for j := 0 to colcount - 1 do begin
         tscols := mColPatterns.lines[j];
         q2.first;
         IsFirstGroup := true;
         for m := 1 to cnt do begin
            q1.insert;
            btid := GenKeyVal('btid');
            q1.fieldbyname('miid').value := miid;
            q1.fieldbyname('btid').value := btid;
            q1.fieldbyname('FILENAME').value := q2.fieldbyname('FILENAME').asstring;
            q1.fieldbyname('KEEPB').value := 1;
            q1.fieldbyname('KEEPE').value := 1;
            q1.fieldbyname('LINEB').value := 0;
            q1.fieldbyname('LINEE').value := 0;
            if pos('1', tscols) > 0 then q1.fieldbyname('C1').value := 'Y';
            if pos('2', tscols) > 0 then q1.fieldbyname('C2').value := 'Y';
            if pos('3', tscols) > 0 then q1.fieldbyname('C3').value := 'Y';
            if pos('4', tscols) > 0 then q1.fieldbyname('C4').value := 'Y';
            if pos('5', tscols) > 0 then q1.fieldbyname('C5').value := 'Y';
            q1.fieldbyname('GRPNO').value := grp;
            if IsFirstGroup then begin
               q1.fieldbyname('GRPKEEPB').value := brange;
               q1.fieldbyname('GRPKEEPE').value := erange;
               IsFirstGroup := false;
            end;
            q1.fieldbyname('OGNO').value := 1;
            if IsFirst then begin
               q1.fieldbyname('OGRB').value := brange;
               q1.fieldbyname('OGRE').value := erange;
               IsFirst := false;
            end;
            q1.post;
            q2.next;
         end;
         inc(grp);
      end;
      q2.close;
   end;
   q1.close;
   q1.free;
   q2.free;
   q1 := nil;
   q2 := nil;
   dm.qMI.close;
   dm.qMI.open;
   dm.qMI.locate('miid', miid, []);
end;

procedure TfrmMain.bReportClick(Sender: TObject);
   var i, j, groupcnt, curgroup, gb, ge : integer;
      oldtsbegin, oldtsend : string;
begin
   RunFromReport := true;
   oldtsbegin := eTSBegin.text;
   oldtsend := eTSEnd.text;
   if mTSGrp.Lines.Count < 1 then begin
      disp('No Groups are listed!', 'e');
      mTSGrp.setfocus;
      exit;
   end;
   groupcnt := mTSGrp.Lines.Count;
   for i := 0 to groupcnt - 1 do begin
      if length(mTSGrp.lines[i]) > 1 then begin
         ParseNumbers(mTSGrp.lines[i]);
         gb := strtoint(lst[0]);
         ge := strtoint(lst[1]);
         eTSBegin.text := lst[0];
         eTSEnd.text := lst[1];
         TestSumResFileName := 'c:\ko\testsum\'+mTSGrp.lines[i]+'.dbf';
         bRunTestSumClick(Sender);

      end;
   end;
   RunFromReport := false;
   eTSBegin.text := oldtsbegin;
   eTSEnd.text   := oldtsend;
end;

procedure TfrmMain.bRPatClick(Sender: TObject);
   var i, j, groupcnt, curgroup, gb, ge, MaxTSR, rcount : integer;
      oldtsbegin, oldtsend : string;
begin
   //Final result should be the list of the alias only.
   if mTSGrp.Lines.Count < 1 then begin
      disp('No Groups are listed!', 'e');
      mTSGrp.setfocus;
      exit;
   end;
   if mTSRPat.Lines.Count < 1 then begin
      disp('No Reverse Patterns are listed!', 'e');
      mTSRPat.setfocus;
      exit;
   end;
   for i := 1 to 10 do
      for j := 1 to 1000 do
         TSR[i][j] := 0;  // Clear Result Holder
   MaxTSR := 1;
   rcount := 0;
   for i := 0 to 99 do TSKey[i+1] := 0;   // Clear Temporary Key Storage
   for i := 0 to 99 do begin
      try
         if length(trim(mTSRPat.lines[i])) > 0 then
            begin
               TSKey[i+1] := strtoint(mTSRPat.lines[i]);
               inc(rcount);
            end
         else
            break;
      except
         on e:exception do begin
            disp('Error on R-Pattern : ', 'e');
            exit;
         end;
      end;
   end;
   mTestSum0.Lines.clear;
   mTestSum1.Lines.clear;
   mTestSum2.Lines.clear;
   mTestSum3.Lines.clear;
   mTestSum0.Lines.LoadFromFile('c:\ko\testsum\testsum0.txt');
   mTestSum1.Lines.LoadFromFile('c:\ko\testsum\testsum1.txt');
   mTestSum2.Lines.LoadFromFile('c:\ko\testsum\testsum2.txt');
   mTestSum3.Lines.LoadFromFile('c:\ko\testsum\testsum3.txt');

   groupcnt := mTSGrp.Lines.Count;
   for i := 0 to groupcnt - 1 do begin
      if length(mTSGrp.lines[i]) > 1 then begin
         ParseNumbers(mTSGrp.lines[i]);
         gb := strtoint(lst[0]);
         ge := strtoint(lst[1]);
         ReverseConvert(gb, ge, rcount);
      end;
   end;
   mTemp.lines.clear;
   for i := 1 to rcount do begin
      mTemp.lines.add(mTSRPat.lines[i-1]);
      for j := 1 to 1000 do
         if TSR[i][j] > 0 then begin
            dm.qTS.first;
            dm.qTS.Locate('TSID', j, []);
            mTemp.lines.add(format('%10s %2d', [dm.qTSALIASNAME.AsString, TSR[i,j]]));
         end;
   end;
   mTemp.lines.savetofile('c:\ko\testsum\result.txt');
end;

procedure TfrmMain.RangeWork1Click(Sender: TObject);
  var FRange: TfrmSpecialRange;
begin
  FRange := TfrmSpecialRange.Create(Self);
  try
     FRange.ShowModal;
     dm.qMI.Refresh;
  finally
    FreeAndNil(FRange);
  end;
end;

procedure TfrmMain.ReverseConvert(RunBegins, RunEnds, rcount : integer);
   var i, j, k, key,  maxlines, trackpos, rpoint, totalcount : integer;
       TSFile   : array [1..100] of integer;
       TS0Store : array [1..5] of integer;
       TS1Store : array [1..10] of integer;
       TS2Store : array [1..10] of integer;
       TS3Store : array [1..5] of integer;
begin
   if not dm.qTS.active then exit;
   if dm.qTS.recordcount < 1 then exit;
   with dm.qTS do begin
      first;
      if RunBegins > 0 then Locate('TSID', RunBegins, []);
      while not eof do begin
         rpoint := dm.qTSTSID.AsInteger;
         mTestSum.Lines.clear;
         mTestSum.Lines.LoadFromFile(dm.qTSFILENAME.AsString);
         maxlines := 0;
         for i := 1 to 100 do TSFile[i] := 0;   // Clear Temporary Storage
         for i := 1 to 5  do TS0Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 10 do TS1Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 10 do TS2Store[i] := 0;  // Clear Temporary Storage
         for i := 1 to 5  do TS3Store[i] := 0;  // Clear Temporary Storage

         for i := 0 to 99 do begin
            try
               if length(trim(mTestSum.lines[i])) > 0 then
                  begin
                     TSFile[i+1] := strtoint(mTestSum.lines[i]);
                     inc(maxlines);
                  end
               else
                  break;
            except
               on e:exception do begin
                  disp('Error on datafile : ' + dm.qTSFILENAME.AsString, 'e');
                  exit;
               end;
            end;
         end;

         // Fill Up the Temporary Storage with Matches Found
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 5 do
               if TSFile[i] = StrToInt(mTestSum0.lines[j-1]) then begin
                  TS0Store[trackpos] := TS0[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 10 do
               if TSFile[i] = StrToInt(mTestSum1.lines[j-1]) then begin
                  TS1Store[trackpos] := TS1[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 10 do
               if TSFile[i] = StrToInt(mTestSum2.lines[j-1]) then begin
                  TS2Store[trackpos] := TS2[j];
                  inc(trackpos);
               end;
         trackpos := 1;
         for i := 1 to maxlines do
            for j := 1 to 5 do
               if TSFile[i] = StrToInt(mTestSum3.lines[j-1]) then begin
                  TS3Store[trackpos] := TS3[j];
                  inc(trackpos);
               end;

         for k := 1 to rcount do begin
            totalcount := 0;
            for i := 1 to 10 do begin
               if i < 6 then
                  if ts0store[i] <> 0 then
                     if TSKey[k] = ts0store[i] then inc(totalcount);
               if ts1store[i] <> 0 then
                  if TSKey[k] = ts1store[i] then inc(totalcount);
               if ts2store[i] <> 0 then
                  if TSKey[k] = ts2store[i] then inc(totalcount);
               if i < 6 then
                  if ts3store[i] <> 0 then
                     if TSKey[k] = ts3store[i] then inc(totalcount);
            end;
            TSR[k][rpoint] := totalcount;
         end;
         if RunEnds = dm.qTSTSID.AsInteger then
            break;
         next;
      end;
   end;
end;

end.
