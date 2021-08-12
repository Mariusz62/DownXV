object fDownXV: TfDownXV
  Left = 0
  Top = 0
  Caption = 'DownXV'
  ClientHeight = 640
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 100
    Top = 81
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label5: TLabel
    Left = 93
    Top = 276
    Width = 31
    Height = 13
    Caption = 'Label5'
  end
  object Label4: TLabel
    Left = 88
    Top = 326
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object Label1: TLabel
    Left = 96
    Top = 223
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label3: TLabel
    Left = 152
    Top = 81
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label6: TLabel
    Left = 24
    Top = 246
    Width = 31
    Height = 13
    Caption = 'Label6'
  end
  object Label7: TLabel
    Left = 96
    Top = 4
    Width = 31
    Height = 13
    Caption = 'Label7'
    ShowAccelChar = False
  end
  object Memo1: TMemo
    Left = 540
    Top = 16
    Width = 441
    Height = 177
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 92
    Top = 16
    Width = 442
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object edPgOd: TEdit
    Left = 92
    Top = 43
    Width = 57
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object edPgDo: TEdit
    Left = 164
    Top = 43
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '999'
  end
  object Button1: TButton
    Left = 12
    Top = 16
    Width = 75
    Height = 25
    Caption = '1.Strona'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 12
    Top = 76
    Width = 75
    Height = 25
    Caption = '2.Lista'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 12
    Top = 116
    Width = 75
    Height = 25
    Caption = '3.Stronka'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 12
    Top = 156
    Width = 75
    Height = 25
    Caption = '4.ffmpeg'
    TabOrder = 7
    OnClick = Button5Click
  end
  object Edit4: TEdit
    Left = 93
    Top = 120
    Width = 441
    Height = 21
    TabOrder = 8
    Text = 'Edit4'
  end
  object Memo2: TMemo
    Left = 540
    Top = 230
    Width = 441
    Height = 182
    Lines.Strings = (
      'Memo2'
      '')
    ScrollBars = ssBoth
    TabOrder = 9
    OnDblClick = Memo2DblClick
  end
  object Memo3: TMemo
    Left = 540
    Top = 418
    Width = 441
    Height = 167
    Lines.Strings = (
      'Memo3'
      ''
      '')
    ScrollBars = ssBoth
    TabOrder = 10
  end
  object Button6: TButton
    Left = 12
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Automat'
    TabOrder = 11
    OnClick = Button6Click
  end
  object Panel2: TPanel
    Left = 108
    Top = 295
    Width = 61
    Height = 25
    Caption = 'Panel2'
    TabOrder = 12
  end
  object Panel1: TPanel
    Left = 175
    Top = 295
    Width = 61
    Height = 25
    Caption = 'Panel1'
    TabOrder = 13
  end
  object Edit5: TEdit
    Left = 93
    Top = 158
    Width = 441
    Height = 21
    TabOrder = 14
    Text = 'Edit5'
  end
  object edKatOut: TAdvDirectoryEdit
    Left = 93
    Top = 243
    Width = 436
    Height = 21
    BorderColor = 11250603
    EmptyTextStyle = []
    FlatLineColor = 11250603
    FocusColor = clWindow
    FocusFontColor = 3881787
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    ShortCut = 0
    TabOrder = 15
    Text = ''
    Visible = True
    Version = '1.7.0.0'
    ButtonStyle = bsButton
    ButtonWidth = 18
    Flat = False
    Etched = False
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDB7B76F67676767676767676767B7FDFD6FFDBFBFBFBF
      BFBFBFBFBFB7FD6FFDFD6FFDBFBFBFBFBF7F7F7F7777FD6FFDFD6FFDBFBFBFBF
      BFBFBFBF7F7FFD6FFDFD6FFDFDFDBFBFBFBFBFBFBF7FFD6FFDFD6FFDFDFDFDFD
      BFBFBFBFBFBFFD6FFDFD6FFDB76F6FAFFDFDFDFDFDFDFD6FFDFD6FFDBFBFBFB7
      6F6F6F6F6F6F6F6F525277FDBFBFBFBFFD9BF79B52F75AA49B4977FDFDFDFDFD
      FD9BF5A35B6D9BF5A35177B7B7B7B7B7779BF5F7A4089BEDF75AFDFDFDFDFDFD
      FD9B9B5252A452525249FDFDFDFDFDFDFDF75AED9BA39AF75AA4FDFDFDFDFDFD
      FDFD9BA352A452A452FDFDFDFDFDFDFDFDFDFDA39B089B9BFDFD}
    ReadOnly = False
    ButtonColor = clWhite
    ButtonColorHot = 15917525
    ButtonColorDown = 14925219
    ButtonTextColor = 4474440
    ButtonTextColorHot = 2303013
    ButtonTextColorDown = 2303013
    BrowseDialogText = 'Select Directory'
  end
  object edAdr: TEdit
    Left = 20
    Top = 200
    Width = 961
    Height = 21
    TabOrder = 16
    Text = 'edAdr'
  end
  object edMaxDown: TEdit
    Left = 252
    Top = 297
    Width = 37
    Height = 21
    TabOrder = 17
    Text = '10'
  end
  object buStop: TButton
    Left = 240
    Top = 43
    Width = 61
    Height = 25
    Caption = 'Stop'
    TabOrder = 18
    OnClick = buStopClick
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    HandleRedirects = True
    RedirectMaximum = 30
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Compressor = IdCompressorZLib1
    Left = 256
    Top = 64
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 368
    Top = 52
  end
  object IdCompressorZLib1: TIdCompressorZLib
    Left = 476
    Top = 88
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = '%FORM_NAME%\'
    StoredProps.Strings = (
      'Edit1.Text'
      'edPgOd.Text'
      'edPgDo.Text'
      'Edit4.Text'
      'edKatOut.Text'
      'edMaxDown.Text')
    StoredValues = <>
    Left = 356
    Top = 415
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    AutoFlush = True
    AutoReload = True
    FileName = '$AppName.ini'
    SubStorages = <>
    Left = 268
    Top = 355
  end
  object DosCommand1: TDosCommand
    InputToOutput = False
    MaxTimeAfterBeginning = 0
    MaxTimeAfterLastOutput = 0
    Left = 168
    Top = 347
  end
  object IdIOHandlerStream1: TIdIOHandlerStream
    MaxLineAction = maException
    Port = 0
    FreeStreams = False
    Left = 324
    Top = 128
  end
  object IdServerIOHandlerStack1: TIdServerIOHandlerStack
    Left = 328
    Top = 188
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 344
    Top = 276
  end
end
