�
 TFRMPATTERN 0�  TPF0TfrmPattern
frmPatternLeft� TopyBorderIconsbiSystemMenu BorderStylebsSingleCaptionPatternClientHeightBClientWidth@Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter
PrintScalepoNoneScaledOnCreate
FormCreate	OnDestroyFormDestroy	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidtheHeightCaptionColumn SettingFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTopiWidthFHeightCaptionQuick Look-up  TLabelLabel3LeftTop.Width� HeightCaption1      2      3      4      5 Font.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel4LeftTop2Width&HeightCaptionMemoFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.Style 
ParentFont  TMemomDevInfoLeft2Top��WidthHeight{ColorclInfoBkCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold Lines.Strings              Development Note    H1.  The data will bump against the c:\ko\sumn6.txt file, not data table.2. ParentCtl3D
ParentFontTabOrderVisible
OnDblClickmDevInfoDblClick  TDBMemoDBMemo1LeftTopDWidthHeight� Ctl3D	DataFieldNOTES
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrder  TDBCheckBoxDBCheckBox8LeftTopWidthqHeightCaptionSave Result to	DataFieldSAVETO
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrderValueCheckedYValueUncheckedN  TDBEditDBEdit3LeftTopWidthbHeightAutoSizeColorclInfoBkCtl3D	DataField
RESULTFILE
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder
OnDblClickDBEdit3DblClick  TBitBtn
bRunSampleLeft�TopWidthYHeightHintRun against Main Data TableCaptionRun - F2Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbRunSampleClick  	TwwDBGrid	wwDBGrid2LeftTop|Width� Height^IniAttributes.Delimiter;;
TitleColorclInfoBk	FixedCols ShowHorzScrollBar	Ctl3D
DataSourcedm.dCFFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder TitleAlignmenttaCenterTitleFont.CharsetANSI_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameArialTitleFont.StylefsBold 
TitleLinesTitleButtons  TDBNavigatorDBNavigator2LeftkTophWidthXHeightVisibleButtonsnbInsertnbDeletenbPostnbCancel Flat	KinddbnHorizontalParentShowHintShowHint	TabOrder  TMemomFileContentLeft)TopWidth� HeightCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmFileContent ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrderVisibleWordWrap
OnDblClickmFileContentDblClick  TDBCheckBoxDBCheckBox1LeftTopBWidthHeightCaptionDBCheckBox1	DataFieldC1
DataSourcedm.dMITabOrder	ValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox2Left:TopBWidthHeightCaptionDBCheckBox2	DataFieldC2
DataSourcedm.dMITabOrder
ValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox3LeftYTopBWidthHeightCaptionDBCheckBox3	DataFieldC3
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox4LeftwTopBWidthHeightCaptionDBCheckBox4	DataFieldC4
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TDBCheckBoxDBCheckBox5Left� TopBWidthHeightCaptionDBCheckBox5	DataFieldC5
DataSourcedm.dMITabOrderValueCheckedYValueUncheckedN  TMemomResultLeft� TopWidth'Height� ColorclInfoBkCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmResult ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrderVisible
OnDblClickmResultDblClick  TOpenDialogOpenDialog1
DefaultExt.txtFilterText File|*.txtLeftpTop  TSaveDialogSaveDialog1
DefaultExt.txtFilterText File|*.txtLeft�Top  TADQueryqQLActive	
Connectiondm.ADConnectionTransactiondm.ADTransactionSQL.Strings	select * from columns where miid = :miidorder by coid Left8Top� 	ParamDataNameMIIDDataType	ftInteger	ParamTypeptInputValue638   TIntegerFieldqQLCOID	FieldNameCOIDOriginCOIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldqQLMIID	FieldNameMIIDOriginMIIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldqQLNUM	FieldNameNUMOriginNUM  TStringFieldqQLMANUALINPUT	FieldNameMANUALINPUTOriginMANUALINPUT	FixedChar	Sized  TStringFieldqQLTABLENAME	FieldName	TABLENAMEOrigin	TABLENAME	FixedChar	Sized  TStringFieldqQLSELECTED	FieldNameSELECTEDOriginSELECTED	FixedChar	Size  TIntegerField
qQLREPEATS	FieldNameREPEATSOriginREPEATS   TDataSourcedQLDataSetqQLLeftxTop�    