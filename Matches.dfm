�
 TFRMMATCHES 0x2  TPF0TfrmMatches
frmMatchesLeft?Top`BorderIconsbiSystemMenu BorderStylebsSingleCaptionMATCHESClientHeight�ClientWidth�Color��� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrder	PositionpoScreenCenter
PrintScalepoNoneScaledOnCreate
FormCreate	OnDestroyFormDestroy	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidthkHeightCaption&Bumping TablesFocusControl	wwDBGrid1Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFont  TLabelLabel2LeftGTopWidth8HeightCaption
Copy Group  TLabelLabel3Left�TopWidthHeightAutoSizeCaption~Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabellblItemCountLeft7TopWidthDHeightAutoSizeCaptionlblItemCount  TLabelLabel4Left�TopWidth1HeightCaption	Copy O.G.  TLabelLabel5Left�TopWidthHeightAutoSizeCaption~Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TDBEditDBEdit3LeftTop�WidthHHeightAutoSizeColorclInfoBkCtl3D	DataField
RESULTFILE
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder 
OnDblClickDBEdit3DblClick  TBitBtn
bRunSampleLeft{TopiWidthYHeightHintRun against Main Data TableCaptionRun - F2EnabledFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.StylefsBold 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderVisibleOnClickbRunSampleClick  TPanelpnlResultRangeLeft�TopGWidth� HeightParentColor	TabOrder TLabelLabel14LeftTopWidth,HeightCaption&RangesFocusControlDBEdit5Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style 
ParentFont  TLabelLabel15LeftZTopWidthHeightAutoSizeCaption~Font.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style 
ParentFont  TDBEditDBEdit5Left7TopWidthHeightAutoSizeColorclInfoBkCtl3D	DataField
RANGEBEGIN
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder   TDBEditDBEdit6LeftlTopWidthHeightAutoSizeColorclInfoBkCtl3D	DataFieldRANGEEND
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style ParentCtl3D
ParentFontTabOrder   TDBNavigatorDBNavigator1Left� TopWidth� Height
DataSourcedBTVisibleButtonsnbPriornbNextnbInsertnbDeletenbPostnbCancel Flat	Ctl3D	KinddbnHorizontalParentCtl3DParentShowHintShowHint	TabOrder  TMemoMemo1LeftTopIWidthNHeight"TabStopBorderStylebsNoneCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.Style Lines.Strings"It runs against Master Table Only.@Results will be automatically saved to result file if specified. ParentColor	ParentCtl3D
ParentFontReadOnly	TabOrderWordWrap  TMemomResultLeftmTopoWidth�HeightwColorclInfoBkCtl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmResult ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrderVisible
OnDblClickmResultDblClick  TMemomFileContentLeft� Top�WidthsHeight+Ctl3DParentCtl3DTabOrderVisibleWordWrap
OnDblClickmFileContentDblClick  	TwwDBGrid	wwDBGrid1LeftTopWidth{Height-ControlType.StringsFILENAME;CustomEdit;cbFileDlg;FC1;CheckBox;Y;NC2;CheckBox;Y;NC3;CheckBox;Y;NC4;CheckBox;Y;NC5;CheckBox;Y;NC6;CheckBox;Y;NODDEVEN;CustomEdit;dbcOddEven;F Selected.StringsFILENAME	31	Table NameC1	2	1C2	2	2C3	2	3C4	2	4C5	2	5C6	2	6KEEPB	7	Range~BeginKEEPE	7	Range~EndLINEB	6	Line~BeginLINEE	5	Line~EndODDEVEN	7	O/EGRPNO	6	Group~No.GRPKEEPB	11	Group~Keep BeginGRPKEEPE	10	Group~Keep EndOGNO	5	O.G.~No.OGRB	11	O.G.~Keep BeginOGRE	10	O.G.~Keep End IniAttributes.Delimiter;;
TitleColorclInfoBk	FixedCols ShowHorzScrollBar	Ctl3D
DataSourcedBTFont.CharsetANSI_CHARSET
Font.ColorclBlackFont.Height�	Font.NameArial
Font.Style Options	dgEditingdgTitlesdgIndicator
dgColLines
dgRowLinesdgTabsdgConfirmDeletedgCancelOnExit
dgWordWrap ParentCtl3D
ParentFontParentShowHintShowHint	TabOrderTitleAlignmenttaCenterTitleFont.CharsetANSI_CHARSETTitleFont.ColorclNavyTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
UseTFields  TDBCheckBoxDBCheckBox8LeftTop�WidthqHeightCaptionSave Result to	DataFieldSAVETO
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTabOrder
ValueCheckedYValueUncheckedN  TMemomDevInfoLeftdTop��Width�Height{Color��� Ctl3DFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameTimes New Roman
Font.StylefsBold Lines.Strings              Development Note    A1. Check for column condition for selection & Filter information.L2. Check for Bumping Table Name & Exist Condition, and Proper Data Condition---------------------------3. Perform Match4. Write to Result Table ParentCtl3D
ParentFontTabOrder	Visible
OnDblClickmDevInfoDblClick  TEditeGrpFromLeft�TopWidthHeightHintSource Group No.AutoSizeCtl3DParentCtl3DParentShowHintShowHint	TabOrder  TEditeGrpToLeft�TopWidthHeightHintDestination Group No.AutoSizeCtl3DParentCtl3DParentShowHintShowHint	TabOrder  TBitBtn
bCopyGroupLeft�Top Width=HeightCaptionCopy NowFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTabOrderOnClickbCopyGroupClick  TBitBtnbSearchAndRepLeft\Top~Width� HeightHintSearch And ReplaceCaption"Search / Replace Table Name  -  F5Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbSearchAndRepClick  TBitBtnbPrintLeft\Top�WidthVHeightCaption PrintFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
Glyph.Data
z  v  BMv      v   (                                       �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 0      ?��������������wwwwwww�������wwwwwww        ���������������wwwwwww�������wwwwwww�������wwwwww        wwwwwww30����337���?330� 337�wss330����337��?�330�  337�swws330���3337��73330��3337�ss3330�� 33337��w33330  33337wws333	NumGlyphs
ParentFontTabOrderOnClickbPrintClick  TBitBtnbChangePatternLeft\Top�Width� HeightHintSearch And ReplaceCaptionChange PatternsFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbChangePatternClick  TBitBtnbSearchReplaceNumbersLeft\TopJWidth� HeightHintSearch And ReplaceCaptionSearch / Replace Numbers  -  F6Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbSearchReplaceNumbersClick  TEditeOGFromLeft�TopWidthHeightHintSource Group No.AutoSizeCtl3DParentCtl3DParentShowHintShowHint	TabOrder  TEditeOGtoLeft�TopWidthHeightHintDestination Group No.AutoSizeCtl3DParentCtl3DParentShowHintShowHint	TabOrder  TBitBtnbCopyOuterGrpLeftTopWidth=HeightCaptionCopy NowFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTabOrderOnClickbCopyOuterGrpClick  TBitBtnbFindLeft�Top�Width[HeightHintSearch And ReplaceCaptionFind  -  F3Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClick
bFindClick  TwwDBComboDlg	cbFileDlgLeft� TopFWidthsHeightOnCustomDlgcbFileDlgCustomDlg
ShowButton	Style
csDropDownCtl3DParentCtl3DTabOrderWordWrapUnboundDataType	wwDefault  TDBMemoDBMemo1LeftITopeWidthHeighteCtl3D	DataFieldNOTES
DataSourcedm.dMIFont.CharsetANSI_CHARSET
Font.ColorclNavyFont.Height�	Font.NameCourier New
Font.Style ParentCtl3D
ParentFont
ScrollBars
ssVerticalTabOrder  TBitBtn	bSaveMemoLeft�Top�Width|HeightHintSearch And ReplaceCaption	Save MemoFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbSaveMemoClick  TwwDBComboBox
dbcOddEvenLeftTopgWidth?Height
ShowButton	StylecsDropDownListMapListAllowClearKeyCharCaseecUpperCase	DataFieldODDEVENDropDownCount
ItemHeight Items.Strings EO SortedTabOrderUnboundDataType	wwDefault  TBitBtn
bMultiReplLeft\TopdWidth� HeightHintSearch And ReplaceCaption Multiple Search / Replace  -  F7Font.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbMultiReplClick  TBitBtnbChangeGrpnOGLeftITopJWidth~HeightCaptionChange GroupsFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbChangeGrpnOGClick  TEdit	eDestOGNoLeft�TopWidthHeightHintFinal Outer Group No.AutoSizeColorclYellowCtl3DParentCtl3DParentShowHintShowHint	TabOrder  TBitBtnbSearchReplaceRangesLeftTop�WidthHeightHint$Search And Replace Range Begin & EndCaptionSearch / Replace RangesFont.CharsetANSI_CHARSET
Font.ColorclPurpleFont.Height�	Font.NameArial
Font.Style 	NumGlyphs
ParentFontParentShowHintShowHint	TabOrderOnClickbSearchReplaceRangesClick  TOpenDialogOpenDialog1
DefaultExt.txtFilterText File|*.txtOptionsofHideReadOnlyofNoDereferenceLinks Left� Topo  TSaveDialogSaveDialog1
DefaultExt.txtFilterText File|*.txtLeftTopo  TwwLocateDialogwwLocateDialog1CaptionLocate Field ValueSearchFieldFILENAME	MatchTypemtPartialMatchAnyCaseSensitive
SortFieldsfsSortByFieldNameDefaultButton
dbFindNextFieldSelectionfsVisibleFieldsShowMessages	Left%Topo  TADQueryqBT
BeforeOpenqBTBeforeOpen	AfterOpenqBTAfterOpenAfterInsertqBTAfterInsert	AfterPostqBTAfterPostAfterDeleteqBTAfterDelete
Connectiondm.ADConnectionTransactiondm.ADTransactionFetchOptions.AssignedValuesevRecordCountMode FetchOptions.RecordCountModecmTotalSQL.Strings
select b.*from bumptables bwhere miid = :miidorder by ogno, grpno, btid Left8Top� 	ParamDataNameMIIDDataType	ftInteger	ParamTypeptInputValue�   TIntegerFieldqBTBTID	FieldNameBTIDOriginBTIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TIntegerFieldqBTMIID	FieldNameMIIDOriginMIID  TStringFieldqBTFILENAME	FieldNameFILENAMEOriginFILENAME	FixedChar	Sized  TIntegerFieldqBTKEEPB	FieldNameKEEPBOriginKEEPB  TIntegerFieldqBTKEEPE	FieldNameKEEPEOriginKEEPE  TIntegerFieldqBTLINEB	FieldNameLINEBOriginLINEB  TIntegerFieldqBTLINEE	FieldNameLINEEOriginLINEE  TIntegerField	qBTHITTED	FieldNameHITTEDOriginHITTED  TStringFieldqBTC1	FieldNameC1OriginC1	FixedChar	Size  TStringFieldqBTC2	FieldNameC2OriginC2	FixedChar	Size  TStringFieldqBTC3	FieldNameC3OriginC3	FixedChar	Size  TStringFieldqBTC4	FieldNameC4OriginC4	FixedChar	Size  TStringFieldqBTC5	FieldNameC5OriginC5	FixedChar	Size  TStringFieldqBTC6	FieldNameC6OriginC6	FixedChar	Size  TIntegerFieldqBTGRPNO	FieldNameGRPNOOriginGRPNO  TIntegerFieldqBTGRPKEEPB	FieldNameGRPKEEPBOriginGRPKEEPB  TIntegerFieldqBTGRPKEEPE	FieldNameGRPKEEPEOriginGRPKEEPE  TIntegerFieldqBTOGNO	FieldNameOGNOOriginOGNO  TIntegerFieldqBTOGRB	FieldNameOGRBOriginOGRB  TIntegerFieldqBTOGRE	FieldNameOGREOriginOGRE  TStringField
qBTODDEVEN	FieldNameODDEVENOriginODDEVEN	FixedChar	Size   TDataSourcedBTDataSetqBTLeftxTop�   TTimer
TimerCountEnabledIntervaldOnTimerTimerCountTimerLeft�Top�    