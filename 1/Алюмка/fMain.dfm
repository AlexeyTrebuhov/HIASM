object MF: TMF
  Left = 406
  Top = 361
  Width = 409
  Height = 342
  Caption = 'qe_lv'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LV: TListView
    Left = 0
    Top = 0
    Width = 401
    Height = 315
    Align = alClient
    Columns = <>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object QE: TQExport3Dialog
    ListView = LV
    RTFOptions.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.CaptionStyle.Font.Color = clBlack
    RTFOptions.CaptionStyle.Font.Height = -13
    RTFOptions.CaptionStyle.Font.Name = 'Arial'
    RTFOptions.CaptionStyle.Font.Style = [fsBold]
    RTFOptions.CaptionStyle.Alignment = talCenter
    RTFOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.DataStyle.Font.Color = clBlack
    RTFOptions.DataStyle.Font.Height = -13
    RTFOptions.DataStyle.Font.Name = 'Arial'
    RTFOptions.DataStyle.Font.Style = []
    RTFOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.FooterStyle.Font.Color = clBlack
    RTFOptions.FooterStyle.Font.Height = -13
    RTFOptions.FooterStyle.Font.Name = 'Arial'
    RTFOptions.FooterStyle.Font.Style = []
    RTFOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.HeaderStyle.Font.Color = clBlack
    RTFOptions.HeaderStyle.Font.Height = -13
    RTFOptions.HeaderStyle.Font.Name = 'Arial'
    RTFOptions.HeaderStyle.Font.Style = []
    RTFOptions.StripStyles = <>
    HTMLPageOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLPageOptions.TextFont.Color = clWhite
    HTMLPageOptions.TextFont.Height = -11
    HTMLPageOptions.TextFont.Name = 'Arial'
    HTMLPageOptions.TextFont.Style = []
    CSVOptions.Comma = ';'
    PDFOptions.PageOptions.MarginLeft = 1.170000000000000000
    PDFOptions.PageOptions.MarginRight = 0.570000000000000000
    PDFOptions.PageOptions.MarginTop = 0.780000000000000000
    PDFOptions.PageOptions.MarginBottom = 0.780000000000000000
    PDFOptions.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.HeaderFont.UserFont.Color = clWindowText
    PDFOptions.HeaderFont.UserFont.Height = -13
    PDFOptions.HeaderFont.UserFont.Name = 'Arial'
    PDFOptions.HeaderFont.UserFont.Style = []
    PDFOptions.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.CaptionFont.UserFont.Color = clWindowText
    PDFOptions.CaptionFont.UserFont.Height = -13
    PDFOptions.CaptionFont.UserFont.Name = 'Arial'
    PDFOptions.CaptionFont.UserFont.Style = []
    PDFOptions.DataFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.DataFont.UserFont.Color = clWindowText
    PDFOptions.DataFont.UserFont.Height = -13
    PDFOptions.DataFont.UserFont.Name = 'Arial'
    PDFOptions.DataFont.UserFont.Style = []
    PDFOptions.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.FooterFont.UserFont.Color = clWindowText
    PDFOptions.FooterFont.UserFont.Height = -13
    PDFOptions.FooterFont.UserFont.Name = 'Arial'
    PDFOptions.FooterFont.UserFont.Style = []
    XLSOptions.PageFooter = 'Page &P of &N'
    XLSOptions.SheetTitle = 'Sheet 1'
    XLSOptions.CaptionFormat.Font.Style = [xfsBold]
    XLSOptions.HyperlinkFormat.Font.Color = clrBlue
    XLSOptions.HyperlinkFormat.Font.Underline = fulSingle
    XLSOptions.NoteFormat.Alignment.Horizontal = halLeft
    XLSOptions.NoteFormat.Alignment.Vertical = valTop
    XLSOptions.NoteFormat.Font.Size = 8
    XLSOptions.NoteFormat.Font.Style = [xfsBold]
    XLSOptions.NoteFormat.Font.Name = 'Tahoma'
    XLSOptions.FieldFormats = <>
    XLSOptions.StripStyles = <>
    XLSOptions.Hyperlinks = <>
    XLSOptions.Notes = <>
    XLSOptions.Charts = <>
    XLSOptions.Pictures = <>
    XLSOptions.Images = <>
    XLSOptions.Cells = <>
    XLSOptions.MergedCells = <>
    Left = 16
    Top = 32
  end
end
