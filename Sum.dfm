�
 TFRMSUM 0|  TPF0TfrmSumfrmSumLeft� Top`BorderIconsbiSystemMenu BorderStylebsSingleCaptionSUM Set-up (Quick Look-up)ClientHeightiClientWidth6Color��� Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter
PrintScalepoNoneScaledOnCreate
FormCreate	OnDestroyFormDestroy	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TShapeShape1Left	Top,Width"Height  TLabelLabel1LeftTopWidtheHeightCaptionColumn SettingFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTopkWidthTHeightCaptionQuick Look-up  TLabelLabel3LeftTop.Width� HeightCaption1      2      3      4      5  TLabelLabel4LeftTop}Width&HeightCaptionMemoFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.Style 
ParentFont  TLabelLabel5Left� Top2Width2HeightCaptionShow TopFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel6Left� Top	Width#HeightCaption/* Never check "R" for SUM Items from main menu.Font.CharsetANSI_CHARSET
Font.ColorclRedFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel7Left�TopLWidth<HeightCaptionFrom BottomFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabellblLineLeft� Top7Width%HeightCaptionlblLineFont.CharsetANSI_CHARSET
Font.ColorclGrayFont.Height�	Font.NameArial
Font.Style 
ParentFont  TDBEditDBEdit1Left� Top1WidthHeightAutoSizeCtl3D	DataFieldROWBEGIN
DataSourcedm.dMIParentCtl3DTabOrder  TButtonbFromLastDrawLeftxTop$Width� HeightCaptionPopulate From Last DrawTabOrderOnClickbFromLastDrawClick  TDBEditDBEdit3LeftTopKWidthbHeightAutoSizeColorclInfoBkCtl3D	DataField
RESULTFILE
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder 
OnDblClickDBEdit3DblClick  TBitBtn
bRunSampleLeft�TopBWidthYHeightHintRun against Main Data TableCaptionRun - F2Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbRunSampleClick  TDBCheckBoxDBCheckBox8LeftTop7WidthqHeightCaptionSave Result to	DataFieldSAVETO
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderValueCheckedYValueUncheckedN  TDBMemoDBMemo1LeftTop� WidthHeight� Ctl3D	DataFieldNOTES
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrder  TMemomDevInfoLeftTop��WidthHeight{ColorclInfoBkCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold Lines.Strings              Development Note    H1.  The data will bump against the c:\ko\sumn6.txt file, not data table.2. ParentCtl3D
ParentFontTabOrderVisible
OnDblClickmDevInfoDblClick  TMemomFileContentLeftTop|Width� Height� Ctl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmFileContent ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrderVisibleWordWrap
OnDblClickmFileContentDblClick  	TwwDBGrid	wwDBGrid2LeftTop� Width� Height� Selected.StringsMANUALINPUT	35	Manual Input IniAttributes.Delimiter;;
TitleColorclInfoBk	FixedCols ShowHorzScrollBar	Ctl3D
DataSourcedQLFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrderTitleAlignmenttaCenterTitleFont.CharsetANSI_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameArialTitleFont.StylefsBold 
TitleLinesTitleButtons  TDBNavigatorDBNavigator2LeftlTopjWidthXHeightVisibleButtonsnbInsertnbDeletenbPostnbCancel Flat	KinddbnHorizontalParentShowHintShowHint	TabOrder  TDBCheckBoxDBCheckBox1LeftTopBWidthHeight	DataFieldC1
DataSourcedm.dMITabOrder	ValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox2Left<TopBWidthHeightCaptionDBCheckBox2	DataFieldC2
DataSourcedm.dMITabOrder
ValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox3Left[TopBWidthHeightCaptionDBCheckBox3	DataFieldC3
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox4LeftzTopBWidthHeightCaptionDBCheckBox4	DataFieldC4
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox5Left� TopBWidthHeightCaptionDBCheckBox5	DataFieldC5
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TDBEditDBEdit2LeftTopIWidthHeightAutoSizeCtl3D	DataFieldROWEND
DataSourcedm.dMIParentCtl3DTabOrder  TMemomResultLeftzTopAWidthkHeight� ColorclInfoBkCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmResult ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrderVisible
OnDblClickmResultDblClick  TOpenDialogOpenDialog1
DefaultExt.txtFilterText File|*.txtLeftoTopI  TSaveDialogSaveDialog1
DefaultExt.txtFilterText File|*.txtLeft�TopI  TADQueryqQLActive	
BeforeOpenqQLBeforeOpenAfterInsertqQLAfterInsert
Connectiondm.ADConnectionTransactiondm.ADTransactionSQL.Strings	select * from columns where miid = :miidorder by coid Left8Top� 	ParamDataNameMIIDDataType	ftInteger	ParamTypeptInput   TStringFieldqQLMANUALINPUTDisplayLabelManual InputDisplayWidth#	FieldNameMANUALINPUTOriginMANUALINPUT	FixedChar	Sized  TIntegerFieldqQLCOID	FieldNameCOIDOriginCOIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	Visible  TIntegerFieldqQLMIID	FieldNameMIIDOriginMIIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	Visible  TIntegerFieldqQLNUM	FieldNameNUMOriginNUMVisible  TStringFieldqQLTABLENAME	FieldName	TABLENAMEOrigin	TABLENAMEVisible	FixedChar	Sized  TStringFieldqQLSELECTED	FieldNameSELECTEDOriginSELECTEDVisible	FixedChar	Size  TIntegerField
qQLREPEATS	FieldNameREPEATSOriginREPEATSVisible   TDataSourcedQLDataSetqQLLeftxTop�    