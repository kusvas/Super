�
 TFRMSPECIALRANGE 0�  TPF0TfrmSpecialRangefrmSpecialRangeLeft�Top� BorderIconsbiSystemMenu BorderStylebsSingleCaptionRangesClientHeight� ClientWidth� Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenter
PrintScalepoNoneScaledOnShowFormShowPixelsPerInch`
TextHeight TLabelLabel1LeftTop
WidthjHeightCaptionStarting Menu Number  TLabelLabel2LeftTop$WidthgHeightCaptionEnding Menu Number  TBevelBevel1LeftTopsWidth� Height  TLabelLabel3LeftTop� WidthaHeightCaptionRearrange Begins at  TLabelLabel4Left	Top|WidthAHeightCaption	RearrangeFont.CharsetDEFAULT_CHARSET
Font.ColorclNavyFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont  TEdit	eStartNumLeft� TopWidth+HeightCtl3DParentCtl3DTabOrder Text0  TEdit
eEndingNumLeft� Top"Width+HeightCtl3DParentCtl3DTabOrderText0  TEdit
eRearrangeLeft� Top� Width+HeightCtl3DParentCtl3DTabOrderText0  TButtonbDeleteTheseMenuLeftTopAWidth� HeightCaptionDelete These Menu ItemsTabOrderOnClickbDeleteTheseMenuClick  TButton
bRearrangeLeftTop� Width� HeightCaption	RearrangeTabOrderOnClickbRearrangeClick  TADQuery	qrySelect
Connectiondm.ADConnectionTransactiondm.ADTransactionLeftTop@  TADQuery	qryUpdate
Connectiondm.ADConnectionTransactiondm.ADTransactionSQL.Strings-update menuitem set num = :n where miid = :id LeftPTop@	ParamDataNameNDataType	ftInteger	ParamTypeptInput NameIDDataType	ftInteger	ParamTypeptInput     