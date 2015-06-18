object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'MAD Tracer'
  ClientHeight = 290
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    414
    290)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlToolBar: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 24
    Align = alTop
    AutoSize = True
    TabOrder = 0
    object tlbMain: TToolBar
      Left = 1
      Top = 1
      Width = 412
      Height = 22
      AutoSize = True
      Caption = 'tlbMain'
      Images = ilMain
      TabOrder = 0
      object btnOpen: TToolButton
        Left = 0
        Top = 0
        Action = aOpenFile
      end
      object btnAttach: TToolButton
        Left = 23
        Top = 0
        Action = aAttach
      end
      object spr1: TToolButton
        Left = 46
        Top = 0
        Width = 8
        Caption = 'spr1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object btnDetach: TToolButton
        Left = 54
        Top = 0
        Action = aDetach
      end
      object spr2: TToolButton
        Left = 77
        Top = 0
        Width = 8
        Caption = 'spr2'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object btnResume: TToolButton
        Left = 85
        Top = 0
        Action = aResume
      end
      object btnSuspend: TToolButton
        Left = 108
        Top = 0
        Action = aSuspend
      end
      object btnTerminate: TToolButton
        Left = 131
        Top = 0
        Action = aStop
      end
      object spr3: TToolButton
        Left = 154
        Top = 0
        Width = 8
        Caption = 'spr3'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object btnClear: TToolButton
        Left = 162
        Top = 0
        Action = aClear
      end
      object btnSave: TToolButton
        Left = 185
        Top = 0
        Action = aSaveReport
      end
      object spr4: TToolButton
        Left = 208
        Top = 0
        Width = 8
        Caption = 'spr4'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object btnAbout: TToolButton
        Left = 216
        Top = 0
        Action = aAbout
      end
    end
  end
  object pgcMain: TPageControl
    Left = 8
    Top = 30
    Width = 398
    Height = 235
    ActivePage = tsEventLog
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object tsEventLog: TTabSheet
      Caption = 'Event Log'
      object lstEvents: TListBox
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Style = lbOwnerDrawVariable
        Align = alClient
        DoubleBuffered = True
        ItemHeight = 13
        ParentDoubleBuffered = False
        TabOrder = 0
        OnDrawItem = lstEventsDrawItem
      end
    end
    object tsThreads: TTabSheet
      Caption = 'Threads'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lvThreads: TListView
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Align = alClient
        Columns = <
          item
            Caption = 'TID'
            Width = 40
          end
          item
            Caption = 'Kernel time'
            Width = 80
          end
          item
            Caption = 'User time'
            Width = 80
          end
          item
            Caption = 'Create time'
            Width = 80
          end
          item
            Caption = 'Start address'
            Width = 80
          end
          item
            Caption = 'Priority'
          end
          item
            Caption = 'Base priority'
            Width = 80
          end
          item
            Caption = 'Context switches'
            Width = 110
          end
          item
            Caption = 'Thread state'
            Width = 80
          end
          item
            Caption = 'Wait reason'
            Width = 80
          end>
        DoubleBuffered = True
        ReadOnly = True
        RowSelect = True
        ParentDoubleBuffered = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object tsModules: TTabSheet
      Caption = 'Modules'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lvModules: TListView
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Align = alClient
        Columns = <
          item
            Caption = 'Name'
            Width = 80
          end
          item
            Caption = 'Base'
            Width = 70
          end
          item
            Caption = 'Size'
            Width = 70
          end
          item
            Caption = 'Flags'
            Width = 80
          end
          item
            Caption = 'Index'
            Width = 40
          end
          item
            Caption = 'Load count'
          end
          item
            Caption = 'Image name'
            Width = 90
          end>
        DoubleBuffered = True
        ReadOnly = True
        RowSelect = True
        ParentDoubleBuffered = False
        TabOrder = 0
        ViewStyle = vsReport
      end
    end
    object tsExceptionInfo: TTabSheet
      Caption = 'Exception info'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoExceptInfo: TMemo
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Align = alClient
        DoubleBuffered = True
        ParentDoubleBuffered = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsStack: TTabSheet
      Caption = 'Stack trace'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoStackTrace: TMemo
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Align = alClient
        DoubleBuffered = True
        ParentDoubleBuffered = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsContext: TTabSheet
      Caption = 'Thread context'
      ImageIndex = 4
      object lstContext: TListBox
        Left = 0
        Top = 0
        Width = 390
        Height = 207
        Style = lbOwnerDrawVariable
        Align = alClient
        DoubleBuffered = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        OnDrawItem = lstContextDrawItem
      end
    end
  end
  object statMain: TStatusBar
    Left = 0
    Top = 271
    Width = 414
    Height = 19
    Panels = <
      item
        Width = 1000
      end>
  end
  object ilMain: TImageList
    Left = 20
    Top = 88
    Bitmap = {
      494C01010900D800D40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000303030003030300030303000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000303030003030300000A0AB0000A0AB0000A0AB00303030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003030
      30003030300000A0AB0000A0AB0000F2FF0000F2FF0000F2FF0000A0AB003030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000303030003030300000A0
      AB0000A0AB0000F2FF0000F2FF00633600006336000000A0AB0000F2FF0000A0
      AB00303030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006336000000A0AB0000A0AB0000F2
      FF0000F2FF00633600007F5B0000D9A77D00D9A77D006336000000A0AB0000F2
      FF0000A0AB003030300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006336000000F2FF0000F2FF006336
      00007F5B0000BC720000BC720000BC720000BC720000D9A77D006336000000A0
      AB0000F2FF0000A0AB0030303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000633600006336000063360000BC72
      0000BC720000BC72000000F2FF00BC720000BC720000BC720000D9A77D006336
      000000A0AB0000F2FF0000A0AB00303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000633600007F5B0000A3760000BC72
      0000BC720000BC72000068F5FF00BC720000BC720000BC720000BC720000D9A7
      7D006336000000A0AB0030303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063360000FF9F2A00D9A7
      7D00BC720000BC720000BC720000BC72000000F2FF0000F2FF00BC720000BC72
      0000D9A77D006336000030303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000063360000FF9F
      2A00D9A77D00BC720000BC720000BC720000BC72000068F5FF0000F2FF0000F2
      FF00BC720000D9A77D0030303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006336
      0000FFFF7F00D9A77D00BC72000068F5FF00BC720000BC72000000F2FF0000F2
      FF00BC720000BC720000D9A77D00303030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000063360000FFFF7F00D9A77D00BC72000068F5FF0000F2FF0000F2FF00BC72
      0000D9A77D00FF9F2A007F5B0000633600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000063360000FFFF7F00D9A77D00BC720000BC720000D9A77D00FF9F
      2A007F5B00006336000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063360000FFFF7F00FFFF7F00FFFF7F007F5B00006336
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000633600006336000063360000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C0002525250025252500252525002525250025252500252525002525
      250025252500C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004B4B4B004B4B4B0000000000000000000000
      000000000000000000000000000000000000BEBEBE0097979700979797009797
      9700979797009797970097979700979797009797970097979700979797009797
      9700979797009797970097979700979797000000000000000000000000000000
      000025252500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002525250000000000000000000000000000000000A7A7A7007373
      73007373730059595900595959004B4B4B004B4B4B003D3D3D00303030003030
      300030303000A7A7A70000000000000000000000000000000000000000000000
      00000000000000000000007F000000DF000000BF2A004B4B4B00000000000000
      000000000000000000000000000000000000BEBEBE0072727200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000979797000000000000000000000000000000
      000025252500FFFFFF00525252005252520000669900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0025252500000000000000000000000000A7A7A70063360000CDCD
      CD00E6E6E600C1C1C100C1C1C100CDCDCD00F0F0F000EDEDED00E6E6E600A7A7
      A7003333330030303000A7A7A700000000000000000000000000000000000000
      00000000000000000000007F000000DF000000DF000000BF2A004B4B4B000000
      000000000000000000000000000000000000BEBEBE0072727200979797002727
      2700272727002727270027272700272727002727270027272700272727002727
      2700272727009797970000000000979797000000000000000000000000000000
      000025252500FFFFFF0052525200C0C0C00033CCFF002D2D2D00FFFFFF00FFFF
      FF00FFFFFF00252525000000000000000000633600006336000063360000DADA
      DA00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600DADA
      DA00CB8C44006336000030303000303030000000000000000000000000001A1A
      1A001A1A1A000000B9001A1A1A0000DF000000DF000000DF000000BF2A004B4B
      4B0000000000000000000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002727270000000000979797000000000000000000000000000000
      000025252500FFFFFF000066990000F2FF0033CCFF00006699002D2D2D00FFFF
      FF00FFFFFF0025252500000000000000000063360000CB8C440063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C4400CB8C
      4400CB8C4400633600007F5B0000303030001A1A1A00000000000000B9001A1A
      1A001A1A1A002525FF000000FF001A1A1A0000FF09001A1A1A0000DF000000BF
      2A004B4B4B00000000000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF008B8BF2000B0BC1000B0BC1000B0BC1000B0BC1008B8BF200FFFF
      FF00FFFFFF002727270000000000979797000000000000000000000000000000
      000025252500FFFFFF00FFFFFF002D2D2D0000F2FF0033CCFF00006699002D2D
      2D00FFFFFF0025252500000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C4400CB8C
      4400CB8C440063360000CB8C440030303000000000001A1A1A000000FF002525
      FF002525FF002525FF002525FF000000FF000000B90000FF090000DF000000DF
      000000BF2A004B4B4B000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF000B0BC1000000FF000000FF000000FF000000FF000B0BC100FFFF
      FF00FFFFFF002727270000000000979797000267FF0000000000000000000000
      000025252500FFFFFF00FFFFFF00FFFFFF002D2D2D0000F2FF0033CCFF000066
      99002D2D2D00C0C0C000000000000000000063360000D9A77D0063360000D9A7
      7D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00D9A77D00CB8C4400CB8C
      4400CB8C440063360000CB8C44003D3D3D00000000001A1A1A000000FF000000
      FF002525FF000000FF002525FF001A1A1A001A1A1A0000DF000000FF090000DF
      000000DF000000BF2A004B4B4B0000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF000B0BC1000000FF000000FF000000FF000000FF000B0BC100FFFF
      FF00FFFFFF00272727000000000097979700000000000468FF00000000000000
      000025252500FFFFFF00FFFFFF00FFFFFF00FFFFFF002D2D2D0000F2FF0033CC
      FF00006699002D2D2D00000000000000000063360000D9A77D0063360000AA3F
      2A00633600006336000063360000633600006336000063360000633600006336
      0000CB8C440063360000CB8C44004B4B4B00000000001A1A1A000000FF002525
      FF001A1A1A001A1A1A002525FF001A1A1A001A1A1A0000FF2A0000DF000000FF
      090000DF000000DF0000007F000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF000B0BC1000000FF000000FF000000FF000000FF000B0BC100FFFF
      FF00FFFFFF0027272700000000009797970000000000000000000436CD000000
      00002525250052525200525252005252520052525200C0C0C0002D2D2D0000F2
      FF0033CCFF002D2D2D0000007A000000000063360000D9A77D00633600009A9A
      9A00AAFFFF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8FF0099F8
      FF006336000063360000CB8C44004B4B4B00000000001A1A1A000000FF002525
      FF001A1A1A001A1A1A002525FF000000FF000000B90000FF090000FF2A0000DF
      000055FFAA00007F00000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF000B0BC1000000FF000000FF000000FF000000FF000B0BC100FFFF
      FF00FFFFFF002727270000000000979797000000000000000000000000000267
      FF000235CC00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0002D2D
      2D002D2D2D001E1EE20000007A000000000063360000D9A77D0063360000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF0063360000CB8C44004B4B4B001A1A1A00000000001A1A1A000000
      FF000000FF002525FF000000FF001A1A1A0000FF09001A1A1A0000FF090000FF
      2A00007F0000000000000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF008B8BF2000B0BC1000B0BC1000B0BC1000B0BC1008B8BF200FFFF
      FF00FFFFFF002727270000000000979797000234CC000235CC000235CC000033
      CC0033CAFD000234CC002525250025252500252525002525250025252500C0C0
      C00000007A0000007A00000000000000000063360000D9A77D007F5B0000AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF007F5B0000CB8C44004B4B4B000000000000000000000000001A1A
      1A001A1A1A001A1A1A001A1A1A00AAFF2A0000FF090000FF0900AAFF2A00007F
      000000000000000000000000000000000000BEBEBE007272720027272700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF002727270000000000979797000000000000000000000000000267
      FF000235CC000267FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000063360000D9A77D007F5B0000AAFF
      FF00CDCDCD00A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF007F5B0000CB8C44004B4B4B000000000000000000000000000000
      00001A1A1A001A1A1A00007F0000AAFFAA0000FF0900AAFF2A00007F00000000
      000000000000000000000000000000000000BEBEBE0072727200979797002727
      2700272727002727270027272700272727002727270027272700272727002727
      27002727270097979700000000009797970000000000000000000468FF000000
      00000235CC00000000000468FF00000000000000000000000000000000000000
      00000000000000000000000000000000000063360000D9A77D0098989800AAFF
      FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF0099F8FF0098989800CB8C4400595959000000000000000000000000001A1A
      1A0000000000000000001A1A1A00AAFFAA00AAFFAA00007F0000000000000000
      000000000000000000000000000000000000BEBEBE0072727200727272007272
      7200727272007272720072727200727272007272720072727200727272007272
      720072727200727272007272720097979700000000000436CD00000000000000
      00000235CC0000000000000000000436CD000000000000000000000000000000
      00000000000000000000000000000000000063360000D9A77D00A6A6A600F0F0
      F000CDCDCD00CB8C4400CB8C4400A7A7A700A7A7A700A7A7A700A7A7A700C1C1
      C10099F8FF00A6A6A600D9A77D00666666000000000000000000000000000000
      00000000000000000000007F0000AAFFAA00007F000000000000000000000000
      000000000000000000000000000000000000BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE000267FF0000000000000000000000
      00000235CC000000000000000000000000000267FF0000000000000000000000
      000000000000000000000000000000000000A7A7A700633600007F5B0000F0F0
      F000F0F0F000AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFF
      FF00AAFFFF007F5B000063360000A7A7A7000000000000000000000000000000
      0000000000000000000000000000007F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000235CC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7A7006336
      0000633600006336000063360000633600006336000063360000633600006336
      0000633600009A9A9A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
      4A00007B00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2F
      2F002F2F2F002F2F2F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A77D00A376
      0000A3760000A3760000D9A77D000000000000000000D9A77D00A3760000A376
      0000A3760000D9A77D0000000000000000000000000000000000006699000066
      9900006699000066990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000000000
      0000007B0000007B000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F000000
      000000000000000000002F2F2F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A3760000D9A7
      7D00CB8C4400CB8C4400A37600000000000000000000A3760000FF9F7F00CB8C
      4400CB8C4400A37600000000000000000000000000000066990066CCFF0066CC
      FF0066CCFF0066CCFF0000669900006699000066990000669900000000000000
      0000000000000000000000000000000000004A4A4A0000000000000000000000
      0000007B000000FF0800007B0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F000000
      00000000000000000000000000002F2F2F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AA7F5500FF9F
      7F00D9A77D00CB8C4400A37600000000000000000000AA7F5500FF9F7F00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF000066990066CC
      FF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF00006699000066
      9900006699000066990000000000000000004A4A4A0000000000000000000000
      0000007B000000DE000000FF080000DE00000000000000000000000000000000
      0000000000000000000000000000000000000000000097772500977725009777
      2500977725009777250097772500977725009777250097772500977725009777
      2500977725009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF00009933003399
      CC0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF0000669900000000004A4A4A00C6C6C600000000000000
      0000007B000000FF0800000000000000000000DE000000000000000000000000
      0000000000000000000000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF00009933003399
      CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF000066990000000000C6C6C6004A4A4A00C6C6C6000000
      000000FF08000000000000DE000000FF08000000000000DE0000000000000000
      0000000000000000000000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF000099330066CC
      66003399CC0099FFFF0066CCFF0066CCFF0066CCFF0066CCFF0066CCFF0066CC
      FF0066CCFF0066CCFF00006699000000000000000000C6C6C6004A4A4A00C6C6
      C60000FF08000000000000FF080000DE000000FF08000000000000DE00000000
      0000000000000000000000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002F2F2F002F2F2F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF000099330066CC
      66003399CC0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF0099FFFF000066
      330066CCFF0066CCFF0066CCFF00006699000000000000000000C6C6C6004A4A
      4A00007B000000FF08000000000000FF080000DE000000FF08000000000000DE
      0000000000000000000000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF002F2F2F00FFFFFF00FFFFFF002F2F2F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF000099330000FF
      330066CC66003399CC003399CC0099FFFF0099FFFF0099FFFF0099FFFF000066
      33000066330099FFFF0099FFFF0000669900000000000000000000000000C6C6
      C600007B000000DE000000FF08000000000000FF080000DE000000FF08000000
      0000C6C6C6000000000000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF002F2F2F00FFFFFF00FFFFFF00FFFFFF002F2F2F00FFFFFF00FFFF
      FF00FFFFFF009777250000000000000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF0099FFFF000099
      330000FF330066CC660066CC6600006633000066330000663300006633000066
      330000CC3300006633003399CC00006699000000000000000000000000000000
      0000007B000000FF080000DE000000FF080000DE000000FF0800007B0000C6C6
      C6004A4A4A00C6C6C60000000000000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF002F2F2F00FFFFFF00FFFFFF00FFFFFF002F2F2F00FFFF
      FF00FFFFFF00977725002F2F2F00000000000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF0099FFFF000099
      330000FF330000FF330000FF330066CC660066CC660066CC660000CC330000CC
      330000CC330000CC330000663300000000000000000000000000000000000000
      0000007B000000DE000000FF080000DE000000FF0800007B0000000000000000
      0000C6C6C6004A4A4A00C6C6C600000000000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF002F2F2F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0097772500000000002F2F2F000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC0099FFFF0099FFFF0099FF
      FF00009933000099330000FF330000FF330000FF330066CC660066CC660066CC
      660000CC330000CC330000CC3300009933000000000000000000000000000000
      0000007B000000FF080000DE000000FF0800007B0000C6C6C600000000000000
      000000000000C6C6C6004A4A4A00C6C6C6000000000097772500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F2F2F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0097772500000000002F2F2F000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC00FFFFFF0099FFFF0099FF
      FF0099FFFF00FFFFFF00009933000099330000993300009933000099330066CC
      660066CC660000CC330000663300000000000000000000000000000000000000
      0000007B000000DE000000FF0800007B0000C6C6C6004A4A4A00C6C6C6000000
      00000000000000000000C6C6C6004A4A4A000000000097772500977725009777
      250097772500977725009777250097772500977725002F2F2F00977725009777
      25009777250097772500000000002F2F2F000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A376000000000000000000003399CC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF003399CC00000000000000000000000000000000000099
      330066CC66000066330000000000000000000000000000000000000000000000
      0000007B000000FF0800007B00000000000000000000C6C6C6004A4A4A00C6C6
      C6000000000000000000000000004A4A4A000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002F2F2F000000
      00000000000000000000000000002F2F2F000000000000000000AA7F5500FFFF
      CC00D9A77D00CB8C4400A37600000000000000000000AA7F5500FFFFCC00D9A7
      7D00CB8C4400A37600000000000000000000000000003399CC003399CC003399
      CC003399CC003399CC0000000000000000000000000000000000000000000099
      3300006633000000000000000000000000000000000000000000000000000000
      0000007B0000007B000000000000000000000000000000000000C6C6C6004A4A
      4A00C6C6C60000000000000000004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F2F
      2F002F2F2F002F2F2F002F2F2F00000000000000000000000000AA7F5500FFFF
      CC00FFFFCC00D9A77D00A37600000000000000000000AA7F5500FFFFCC00FFFF
      CC00FF9F7F00A376000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C6004A4A4A004A4A4A004A4A4A00949494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A77D00AA7F
      5500AA7F5500AA7F5500D9A77D000000000000000000D9A77D00AA7F5500AA7F
      5500AA7F5500D9A77D000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE3F000000000000
      F81F000000000000E00F00000000000080070000000000000003000000000000
      0001000000000000000000000000000000010000000000008001000000000000
      C001000000000000E000000000000000F000000000000000F803000000000000
      FC0F000000000000FE3F000000000000FFFFFFFFF003FFFFFE7F0000F003C003
      FC3F3FFEF0038001FC1F0002F0030000E00F0002F003000040070002F0030000
      800300027003000080010002B003000080010002D001000080030002E0010000
      4007000200030000E00F0002E3FF0000F01F0002D5FF0000EC3F0000B6FF0000
      FC7F0000777F0000FEFFFFFFF7FFC003FFFF87FFE3FFC183C3FF73FFDDFFC183
      803F71FFDEFFC183000370FF8003C1830001307F8003C1830001103F8003C183
      0001801F8003C1830000C00F8003C1830000E0078003C1830000F0038001C183
      0001F0318002C1830000F0388002C1830001F01C8002C18301E3F18EFFDEC183
      83E7F3C6FFE1C183FFFFFFE0FFFFC18300000000000000000000000000000000
      000000000000}
  end
  object actlstMain: TActionList
    Images = ilMain
    OnUpdate = actlstMainUpdate
    Left = 56
    Top = 88
    object aOpenFile: TAction
      Caption = 'aOpenFile'
      Hint = 'Open file'
      ImageIndex = 0
      ShortCut = 16463
      OnExecute = aOpenFileExecute
    end
    object aAttach: TAction
      Caption = 'aAttach'
      Hint = 'Attach to process'
      ImageIndex = 1
      OnExecute = aAttachExecute
    end
    object aDetach: TAction
      Caption = 'aDetach'
      Hint = 'Detach from program'
      ImageIndex = 2
      OnExecute = aDetachExecute
    end
    object aSuspend: TAction
      Caption = 'aSuspend'
      ImageIndex = 3
      Visible = False
    end
    object aResume: TAction
      Caption = 'aResume'
      Hint = 'Start/Resume trace'
      ImageIndex = 4
      ShortCut = 120
      OnExecute = aResumeExecute
    end
    object aStop: TAction
      Caption = 'aStop'
      Hint = 'Stop trace'
      ImageIndex = 5
      ShortCut = 16497
      OnExecute = aStopExecute
    end
    object aClear: TAction
      Caption = 'aClear'
      Hint = 'Clear controls'
      ImageIndex = 6
      OnExecute = aClearExecute
    end
    object aSaveReport: TAction
      Caption = 'aSaveReport'
      Hint = 'Save bug report'
      ImageIndex = 7
      OnExecute = aSaveReportExecute
    end
    object aAbout: TAction
      Caption = 'aAbout'
      Hint = 'About'
      ImageIndex = 8
      ShortCut = 112
      OnExecute = aAboutExecute
    end
  end
  object dlgOpenFile: TOpenDialog
    Filter = 'Portable executable (*.exe)|*.exe'
    Left = 88
    Top = 88
  end
  object dlgSaveLog: TSaveDialog
    Filter = 'Log files (*.log)|*.log'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 120
    Top = 88
  end
end
