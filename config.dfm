�
 TFRMCONFIG 0�  TPF0
TfrmConfig	frmConfigLeft� Top� BorderIconsbiSystemMenu BorderStylebsSingleCaptionConfigurationClientHeight(ClientWidth6ColorclWindowCtl3DFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
PrintScalepoNoneScaled	OnDestroyFormDestroyOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTopWidth� HeightCaptionDouble-Click to edit an item.Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TPanelpnlPrintLeftTopWidthHeight	
BevelOuterbvNoneTabOrder
OnDblClickpnlPrintDblClick  TPanelPanel1Left Top Width6HeightAlignalTopColorclWhiteTabOrder  	TwwDBGriddbgItemsLeftTopWidth4HeightSelected.StringsDESCR	40	Item Description IniAttributes.Delimiter;;
TitleColor	clBtnFace	FixedCols ShowHorzScrollBar	AlignalClientColorclWhiteCtl3D	Font.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitles
dgColLines
dgRowLinesdgTabsdgRowSelectdgConfirmDeletedgCancelOnExit
dgWordWrapdgPerfectRowFit ParentCtl3D
ParentFontReadOnly	TabOrder TitleAlignmenttaCenterTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclMaroonTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold 
TitleLinesTitleButtons
OnDblClickdbgItemsDblClick   TButtonbCloseLeft� Top
WidthKHeightCaption&ApplyModalResultTabOrderOnClickbCloseClick  TPanelpnlEditLeftTopWidth2Height
BevelInner	bvLowered
BevelWidthBorderWidthBorderStylebsSingleTabOrderVisible TLabelLabel6LeftTop!Width� HeightCaptionValue must be type ofFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TDBTextDBText1LeftTop	WidthHeight	DataFieldDESCRFont.CharsetDEFAULT_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabellblTypeLeft� Top!Width� HeightAutoSizeFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TDBMemodbMemoLeftTop:WidthHeight� ColorclInfoBk	DataFieldNOTES
DataSourcedConfigTabOrder  TDBEditdbEditLeftTop:WidthHeightColorclInfoBkTabOrder   TButtonbOkLeftKTop� WidthKHeightCaption&SaveTabOrderOnClickbOkClick  TButtonbCancelLeft� Top� WidthKHeightCaptionCancelTabOrderOnClickbCancelClick   TADQueryqConfig
Connectiondm.ADConnectionTransactiondm.ADTransactionSQL.Strings-select * from Configs where descr is not null LeftXTopX TIntegerFieldqConfigCFID	FieldNameCFIDOriginCFIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TStringFieldqConfigCODES	FieldNameCODESOriginCODES	FixedChar	Size  TStringFieldqConfigDESCR	FieldNameDESCROriginDESCR	FixedChar	Size2  TIntegerFieldqConfigINTVAL	FieldNameINTVALOriginINTVAL  TFloatFieldqConfigREALVAL	FieldNameREALVALOriginREALVAL  TIntegerFieldqConfigSECLEV	FieldNameSECLEVOriginSECLEV  TStringFieldqConfigSTRVAL	FieldNameSTRVALOriginSTRVAL	FixedChar	Size2  TStringFieldqConfigINTERNAL	FieldNameINTERNALOriginINTERNAL	FixedChar	Size  TStringFieldqConfigVARNAME	FieldNameVARNAMEOriginVARNAME	FixedChar	  
TBlobFieldqConfigNOTES	FieldNameNOTESOriginNOTES  
TDateFieldqConfigDATEVAL	FieldNameDATEVALOriginDATEVAL   TDataSourcedConfigDataSetqConfigLeft� TopX   