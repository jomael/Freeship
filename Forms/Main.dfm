object MainForm: TMainForm
  Left = 272
  Top = 104
  Width = 752
  Height = 446
  Color = 6908265
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  WindowMenu = Window1
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TPanel
    Left = 0
    Top = 384
    Width = 744
    Height = 16
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 200
      Height = 14
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Undo memory : 0 kb.'
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 201
      Top = 1
      Width = 200
      Height = 14
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'distance : '
      TabOrder = 1
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 401
      Top = 1
      Width = 300
      Height = 14
      Align = alLeft
      BevelOuter = bvLowered
      TabOrder = 2
      OnClick = Panel3Click
    end
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 744
    Height = 51
    AutoSize = True
    Caption = 'ToolBar'
    Color = clBtnFace
    EdgeInner = esLowered
    EdgeOuter = esNone
    Flat = True
    Images = MenuImages
    Indent = 2
    ParentColor = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Transparent = False
    object ToolButton20: TToolButton
      Left = 2
      Top = 0
      Action = NewModel
    end
    object ToolButton1: TToolButton
      Left = 25
      Top = 0
      Action = LoadFile
    end
    object ToolButton38: TToolButton
      Left = 48
      Top = 0
      Action = FileSave
    end
    object ToolButton3: TToolButton
      Left = 71
      Top = 0
      Action = ExitProgram
    end
    object ToolButton4: TToolButton
      Left = 94
      Top = 0
      Width = 6
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object PrecisionBox: TComboBox
      Left = 100
      Top = 0
      Width = 75
      Height = 21
      Hint = 'Change the precision of the model.'
      AutoComplete = False
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Low'
      OnChange = PrecisionBoxChange
      Items.Strings = (
        'Low'
        'Medium'
        'High'
        'Highest')
    end
    object ToolButton7: TToolButton
      Left = 175
      Top = 0
      Width = 6
      Caption = 'ToolButton7'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 181
      Top = 0
      Action = ShowControlNet
    end
    object ToolButton2: TToolButton
      Left = 204
      Top = 0
      Action = ShowControlCurves
    end
    object ToolButton9: TToolButton
      Left = 227
      Top = 0
      Action = ShowInteriorEdges
    end
    object ToolButton10: TToolButton
      Left = 250
      Top = 0
      Action = BothSides
    end
    object ToolButton31: TToolButton
      Left = 273
      Top = 0
      Action = ShowGrid
    end
    object ToolButton21: TToolButton
      Left = 296
      Top = 0
      Action = ShowStations
      AllowAllUp = True
    end
    object ToolButton22: TToolButton
      Left = 319
      Top = 0
      Action = ShowButtocks
    end
    object ToolButton23: TToolButton
      Left = 342
      Top = 0
      Action = ShowWaterlines
    end
    object ToolButton35: TToolButton
      Left = 365
      Top = 0
      Action = ShowDiagonals
    end
    object ToolButton46: TToolButton
      Left = 388
      Top = 0
      Action = ShowHydrostatics
    end
    object ToolButton48: TToolButton
      Left = 411
      Top = 0
      Action = ShowFlowlines
    end
    object ToolButton30: TToolButton
      Left = 434
      Top = 0
      Action = ShowNormals
    end
    object ToolButton37: TToolButton
      Left = 457
      Top = 0
      Action = Showcurvature
    end
    object ToolButton36: TToolButton
      Left = 480
      Top = 0
      Action = ShowMarkers
    end
    object ToolButton49: TToolButton
      Left = 503
      Top = 0
      Action = ShowBulkheads
    end
    object ToolButton12: TToolButton
      Left = 2
      Top = 0
      Width = 6
      Caption = 'ToolButton12'
      ImageIndex = 5
      Wrap = True
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 2
      Top = 28
      Action = NewLayer
    end
    object ToolButton34: TToolButton
      Left = 25
      Top = 28
      Action = DeleteEmptyLayers
    end
    object ToolButton33: TToolButton
      Left = 48
      Top = 28
      Action = LayerDialog
    end
    object ToolButton6: TToolButton
      Left = 71
      Top = 28
      Action = LayerAutoGroup
    end
    object LayerBox: TComboBox
      Left = 94
      Top = 28
      Width = 145
      Height = 21
      Hint = 
        'Assign selected faces to a new layer or change the currently act' +
        'ive layer.'
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = LayerBoxChange
    end
    object Panel1: TPanel
      Left = 239
      Top = 28
      Width = 23
      Height = 22
      Hint = 'Change the color of the active layer.'
      BevelOuter = bvLowered
      TabOrder = 2
      OnClick = Panel1Click
    end
    object ToolButton11: TToolButton
      Left = 262
      Top = 28
      Width = 6
      Caption = 'ToolButton11'
      ImageIndex = 7
      Style = tbsSeparator
    end
    object ToolButton15: TToolButton
      Left = 268
      Top = 28
      Action = Delete
    end
    object ToolButton14: TToolButton
      Left = 291
      Top = 28
      Width = 6
      Caption = 'ToolButton14'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton45: TToolButton
      Left = 297
      Top = 28
      Action = PointAlign
    end
    object ToolButton18: TToolButton
      Left = 320
      Top = 28
      Action = PointCollapse
    end
    object ToolButton41: TToolButton
      Left = 343
      Top = 28
      Action = InsertPlane
    end
    object ToolButton47: TToolButton
      Left = 366
      Top = 28
      Action = LayerIntersection
    end
    object ToolButton42: TToolButton
      Left = 389
      Top = 28
      Action = PointsLock
    end
    object ToolButton43: TToolButton
      Left = 412
      Top = 28
      Action = PointsUnlock
    end
    object ToolButton44: TToolButton
      Left = 435
      Top = 28
      Action = PointsUnlockAll
    end
    object ToolButton19: TToolButton
      Left = 458
      Top = 28
      Width = 6
      Caption = 'ToolButton19'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object ToolButton27: TToolButton
      Left = 464
      Top = 28
      Action = EdgeExtrude
    end
    object ToolButton29: TToolButton
      Left = 487
      Top = 28
      Action = EdgeSplit
    end
    object ToolButton13: TToolButton
      Left = 510
      Top = 28
      Action = EdgeCollapse
    end
    object ToolButton16: TToolButton
      Left = 533
      Top = 28
      Action = NewEdge
    end
    object ToolButton17: TToolButton
      Left = 556
      Top = 28
      Action = EdgeCrease
    end
    object ToolButton25: TToolButton
      Left = 579
      Top = 28
      Width = 6
      Caption = 'ToolButton25'
      ImageIndex = 19
      Style = tbsSeparator
    end
    object ToolButton40: TToolButton
      Left = 585
      Top = 28
      Action = NewCurve
    end
    object ToolButton39: TToolButton
      Left = 608
      Top = 28
      Width = 6
      Caption = 'ToolButton39'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object ToolButton24: TToolButton
      Left = 614
      Top = 28
      Action = NewFace
    end
    object ToolButton32: TToolButton
      Left = 637
      Top = 28
      Action = InvertFace
    end
    object ToolButton28: TToolButton
      Left = 660
      Top = 28
      Width = 6
      Caption = 'ToolButton28'
      ImageIndex = 15
      Style = tbsSeparator
    end
    object ToolButton26: TToolButton
      Left = 666
      Top = 28
      Action = IntersectionDialog
    end
  end
  object FreeShip: TFreeShip
    FileChanged = True
    Filename = 'New model.fbm'
    FileVersion = fv140
    OnChangeCursorIncrement = FreeShipChangeCursorIncrement
    OnFileChanged = FreeShipFileChanged
    OnUpdateGeometryInfo = FreeShipUpdateGeometryInfo
    OnUpdateRecentFileList = FreeShipUpdateRecentFileList
    OnUpdateUndoData = FreeShipUpdateUndoData
    Precision = fpLow
    Left = 20
    Top = 110
  end
  object ActionList1: TActionList
    Images = MenuImages
    Left = 18
    Top = 78
    object ExportFEF: TAction
      Category = 'Export'
      Caption = 'FEF file...'
      Hint = 'Export to a FEF (Freeship Exchange Format) hull.'
      OnExecute = ExportFEFExecute
    end
    object ImportFEF: TAction
      Category = 'Import'
      Caption = 'FEF file...'
      Hint = 'Import a FEF (Freeship Exchange Format) hull.'
      OnExecute = ImportFEFExecute
    end
    object LoadFile: TAction
      Category = 'File'
      Caption = 'Open...'
      Hint = 'Open a new file.'
      ImageIndex = 0
      OnExecute = LoadFileExecute
    end
    object ExitProgram: TAction
      Category = 'File'
      Caption = 'Exit'
      Hint = 'Quit FreeShip'
      ImageIndex = 1
      OnExecute = ExitProgramExecute
    end
    object ImportCarene: TAction
      Category = 'Import'
      Caption = 'Carene XYZ file...'
      ImageIndex = 35
      OnExecute = ImportCareneExecute
    end
    object ExportDXF2DPolylines: TAction
      Category = 'Export'
      Caption = 'DXF 2D Polylines...'
      Hint = 'Export all lines as 2D polylines.'
      ImageIndex = 27
      OnExecute = ExportDXF2DPolylinesExecute
    end
    object ExportCoordinates: TAction
      Category = 'Export'
      Caption = 'Coordinates...'
      OnExecute = ExportCoordinatesExecute
    end
    object ShowControlNet: TAction
      Category = 'Visibility'
      Caption = 'Control net'
      Hint = 'Show control net.'
      ImageIndex = 2
      OnExecute = ShowControlNetExecute
    end
    object ShowInteriorEdges: TAction
      Category = 'Visibility'
      Caption = 'Interior edges'
      Hint = 'Show interior edges.'
      ImageIndex = 3
      OnExecute = ShowInteriorEdgesExecute
    end
    object NewWindow: TAction
      Category = 'Window'
      Caption = 'New window'
      ImageIndex = 33
      OnExecute = NewWindowExecute
    end
    object TileWindow: TAction
      Category = 'Window'
      Caption = 'Tile'
      ImageIndex = 32
      OnExecute = TileWindowExecute
    end
    object CascadeWindow: TAction
      Category = 'Window'
      Caption = 'Cascade'
      ImageIndex = 34
      OnExecute = CascadeWindowExecute
    end
    object BothSides: TAction
      Category = 'Visibility'
      Caption = 'Show both sides'
      Hint = 'Show both sides of the model'
      ImageIndex = 4
      OnExecute = BothSidesExecute
    end
    object FileSaveas: TAction
      Category = 'File'
      Caption = 'Save as...'
      Hint = 'Prompt for filename and save file.'
      ImageIndex = 39
      OnExecute = FileSaveasExecute
    end
    object DecreaseCurvatureScale: TAction
      Category = 'Visibility'
      Caption = 'Decr. curvature scale'
      Hint = 'Decrease the scale of the curvature plots'
      ShortCut = 120
      OnExecute = DecreaseCurvatureScaleExecute
    end
    object LayerAutoGroup: TAction
      Category = 'Layer'
      Caption = 'Auto group'
      Hint = 'Automatic grouping of connected controlfaces into a new layer.'
      ImageIndex = 6
      OnExecute = LayerAutoGroupExecute
    end
    object NewLayer: TAction
      Category = 'Layer'
      Caption = 'New'
      Hint = 'Add a new empty layer to the model.'
      ImageIndex = 7
      OnExecute = NewLayerExecute
    end
    object Delete: TAction
      Category = 'Edit'
      Caption = 'Delete'
      Hint = 'Delete all selected items.'
      ImageIndex = 8
      ShortCut = 16472
      OnExecute = DeleteExecute
    end
    object EdgeCollapse: TAction
      Category = 'Edge'
      Caption = 'Collapse'
      Hint = 
        'Remove an edge by merging the two connected faces into one new f' +
        'ace.'
      ImageIndex = 9
      OnExecute = EdgeCollapseExecute
    end
    object NewEdge: TAction
      Category = 'Edge'
      Caption = 'Insert'
      Hint = 'Split a face by inserting a new edge between to selected points.'
      ImageIndex = 10
      OnExecute = NewEdgeExecute
    end
    object EdgeCrease: TAction
      Category = 'Edge'
      Caption = 'Crease'
      Hint = 
        'Switch selected edges between normal or crease edges (knuckle li' +
        'nes).'
      ImageIndex = 11
      OnExecute = EdgeCreaseExecute
    end
    object DeselectAll: TAction
      Category = 'Edit'
      Caption = 'Deselect all'
      OnExecute = DeselectAllExecute
    end
    object PointCollapse: TAction
      Category = 'Point'
      Caption = 'Collapse'
      Hint = 'Merge two selected edges by removing their common controlpoint.'
      ImageIndex = 12
      OnExecute = PointCollapseExecute
    end
    object ActiveLayerColor: TAction
      Category = 'Layer'
      Caption = 'Active layer color'
      Hint = 'Change the color of the currently active layer.'
      ImageIndex = 25
      OnExecute = ActiveLayerColorExecute
    end
    object DeleteEmptyLayers: TAction
      Category = 'Layer'
      Caption = 'Delete empty'
      Hint = 'Delete empty layers from the model.'
      ImageIndex = 29
      OnExecute = DeleteEmptyLayersExecute
    end
    object LayerDialog: TAction
      Category = 'Layer'
      Caption = 'Dialog'
      Hint = 'Show the window with layer properties.'
      ImageIndex = 24
      ShortCut = 16460
      OnExecute = LayerDialogExecute
    end
    object NewModel: TAction
      Category = 'File'
      Caption = 'New...'
      Hint = 'Start a new model.'
      ImageIndex = 13
      ShortCut = 16462
      SecondaryShortCuts.Strings = (
        'ctrl+p')
      OnExecute = NewModelExecute
    end
    object ShowStations: TAction
      Category = 'Visibility'
      Caption = 'Stations'
      Hint = 'Toggle stations visibility on or off.'
      ImageIndex = 15
      OnExecute = ShowStationsExecute
    end
    object ShowButtocks: TAction
      Category = 'Visibility'
      Caption = 'Buttocks'
      Hint = 'Toggle buttocks visibility on or off.'
      ImageIndex = 16
      OnExecute = ShowButtocksExecute
    end
    object ShowWaterlines: TAction
      Category = 'Visibility'
      Caption = 'Waterlines'
      Hint = 'Toggle waterlines visibility on or off.'
      ImageIndex = 17
      OnExecute = ShowWaterlinesExecute
    end
    object NewFace: TAction
      Category = 'Face'
      Caption = 'New'
      Hint = 'Create a new controlface from selected controlpoints.'
      ImageIndex = 18
      OnExecute = NewFaceExecute
    end
    object IntersectionDialog: TAction
      Category = 'Edit'
      Caption = 'Intersections...'
      Hint = 
        'Show the window to add stations, buttocks, waterlines and diagon' +
        'als.'
      ImageIndex = 14
      OnExecute = IntersectionDialogExecute
    end
    object EdgeExtrude: TAction
      Category = 'Edge'
      Caption = 'Extrude...'
      Hint = 'Create new controlfaces by extruding selected boundary edges.'
      ImageIndex = 19
      OnExecute = EdgeExtrudeExecute
    end
    object EdgeSplit: TAction
      Category = 'Edge'
      Caption = 'Split'
      Hint = 'Create new controlpoints by splitting an controledge into two.'
      ImageIndex = 20
      OnExecute = EdgeSplitExecute
    end
    object EditProjectSettings: TAction
      Category = 'Project'
      Caption = 'Project settings'
      OnExecute = EditProjectSettingsExecute
    end
    object CheckModel: TAction
      Category = 'Tools'
      Caption = 'Check model'
      Hint = 'Check the model for errors and inconsitencies.'
      OnExecute = CheckModelExecute
    end
    object ShowNormals: TAction
      Category = 'Visibility'
      Caption = 'Normals'
      Hint = 'Show normals of selected controlfaces.'
      ImageIndex = 21
      OnExecute = ShowNormalsExecute
    end
    object DesignHydrostatics: TAction
      Category = 'Calculate'
      Caption = 'Design hydrostatics'
      Hint = 'Calculate hydrostatics for the design condition.'
      OnExecute = DesignHydrostaticsExecute
    end
    object ImportVRML: TAction
      Category = 'Import'
      Caption = 'VRML...'
      Hint = 'Import a VRML 1.0 file.'
      OnExecute = ImportVRMLExecute
    end
    object RemoveNegative: TAction
      Category = 'Tools'
      Caption = 'Remove negative'
      Hint = 'Removes all faces on the starbaordside of the hull.'
      OnExecute = RemoveNegativeExecute
    end
    object RotateModel: TAction
      Category = 'Transform'
      Caption = 'Rotate...'
      Hint = 'Rotate selected items.'
      OnExecute = RotateModelExecute
    end
    object ScaleModel: TAction
      Category = 'Transform'
      Caption = 'Scale...'
      Hint = 'Scale selected items.'
      OnExecute = ScaleModelExecute
    end
    object ShowGrid: TAction
      Category = 'Visibility'
      Caption = 'Grid'
      Hint = 'Show grid of intersections in plan, profile and bodyplan view.'
      ImageIndex = 22
      OnExecute = ShowGridExecute
    end
    object Undo: TAction
      Category = 'Edit'
      Caption = 'Undo'
      Hint = 'Undo the last modification.'
      ShortCut = 16474
      OnExecute = UndoExecute
    end
    object HydrostaticsDialog: TAction
      Category = 'Calculate'
      Caption = 'Hydrostatics...'
      Hint = 'Calculate hydrostatics for a range of inputdata.'
      OnExecute = HydrostaticsDialogExecute
    end
    object ExportObj: TAction
      Category = 'Export'
      Caption = 'Wavefront file (Obj)...'
      OnExecute = ExportObjExecute
    end
    object InvertFace: TAction
      Category = 'Face'
      Caption = 'Invert'
      Hint = 'Flip the normal direction of the selected controlfaces.'
      ImageIndex = 23
      OnExecute = InvertFaceExecute
    end
    object Preferences: TAction
      Category = 'Project'
      Caption = 'Preferences'
      OnExecute = PreferencesExecute
    end
    object ImportBodyplan: TAction
      Category = 'Import'
      Caption = 'Bodyplan...'
      Hint = 'Import a bodyplan and fit a surface.'
      OnExecute = ImportBodyplanExecute
    end
    object ExportDXF3DPolylines: TAction
      Category = 'Export'
      Caption = 'DXF 3D Polylines...'
      Hint = 'Export all lines as 3D polylines.'
      ImageIndex = 27
      OnExecute = ExportDXF3DPolylinesExecute
    end
    object ExportDXFFaces: TAction
      Category = 'Export'
      Caption = 'DXF 3D mesh...'
      Hint = 'Export all faces to a 3D DXF file.'
      ImageIndex = 27
      OnExecute = ExportDXFFacesExecute
    end
    object ImportHullFile: TAction
      Category = 'Import'
      Caption = 'Carlson .hul file...'
      ImageIndex = 28
      OnExecute = ImportHullFileExecute
    end
    object ExportOffsets: TAction
      Category = 'Export'
      Caption = 'Offsets...'
      OnExecute = ExportOffsetsExecute
    end
    object MoveModel: TAction
      Category = 'Transform'
      Caption = 'Move...'
      Hint = 'Move the entire model.'
      OnExecute = MoveModelExecute
    end
    object AddPoint: TAction
      Category = 'Point'
      Caption = 'Add'
      Hint = 'Add a new controlpoint to the model.'
      OnExecute = AddPointExecute
    end
    object DevelopLayers: TAction
      Category = 'Tools'
      Caption = 'Develop plates'
      OnExecute = DevelopLayersExecute
    end
    object ExportArchimedes: TAction
      Category = 'Export'
      Caption = 'Archimedes...'
      Hint = 'Export stations to Arcimedes'
      ImageIndex = 26
      OnExecute = ExportArchimedesExecute
    end
    object ShowLinesplan: TAction
      Category = 'Project'
      Caption = 'Linesplan'
      ImageIndex = 31
      OnExecute = ShowLinesplanExecute
    end
    object ShowDiagonals: TAction
      Category = 'Visibility'
      Caption = 'Diagonals'
      Hint = 'Toggle diagonals visibility on or off.'
      ImageIndex = 30
      OnExecute = ShowDiagonalsExecute
    end
    object ShowMarkers: TAction
      Category = 'Visibility'
      Caption = 'Markers'
      Hint = 'Show markers.'
      ImageIndex = 36
      OnExecute = ShowMarkersExecute
    end
    object DeleteMarkers: TAction
      Category = 'Tools'
      Caption = 'Delete all markers'
      Hint = 'Delete all markers from the model.'
      ImageIndex = 37
      OnExecute = DeleteMarkersExecute
    end
    object ImportSurface: TAction
      Category = 'Import'
      Caption = 'Surface...'
      OnExecute = ImportSurfaceExecute
    end
    object Showcurvature: TAction
      Category = 'Visibility'
      Caption = 'Curvature'
      Hint = 'Show curvature plot of intersectionlines.'
      ImageIndex = 38
      OnExecute = ShowcurvatureExecute
    end
    object IncreaseCurvatureScale: TAction
      Category = 'Visibility'
      Caption = 'Incr. curvature scale'
      Hint = 'Increase the scale of the curvature plots'
      ShortCut = 121
      OnExecute = IncreaseCurvatureScaleExecute
    end
    object FileSave: TAction
      Category = 'File'
      Caption = 'Save'
      Hint = 'Save file without prompting for the filename.'
      ImageIndex = 5
      ShortCut = 16467
      OnExecute = FileSaveExecute
    end
    object ImportChines: TAction
      Category = 'Import'
      Caption = 'Chines...'
      OnExecute = ImportChinesExecute
    end
    object ShowControlCurves: TAction
      Category = 'Visibility'
      Caption = 'Control curves'
      Hint = 'Show control curves.'
      ImageIndex = 40
      OnExecute = ShowControlCurvesExecute
    end
    object NewCurve: TAction
      Category = 'Curve'
      Caption = 'New'
      Hint = 'Add a new curve to selected edges.'
      ImageIndex = 41
      OnExecute = NewCurveExecute
    end
    object InsertPlane: TAction
      Category = 'Point'
      Caption = 'Plane intersection...'
      Hint = 'Insert multiple new points on a 3D oriented plane.'
      ImageIndex = 42
      OnExecute = InsertPlaneExecute
    end
    object PointsLock: TAction
      Category = 'Point'
      Caption = 'Lock points'
      Hint = 'Lock all selected controlpoints.'
      ImageIndex = 44
      OnExecute = PointsLockExecute
    end
    object PointsUnlock: TAction
      Category = 'Point'
      Caption = 'Unlock points'
      Hint = 'Unlock all selected controlpoints.'
      ImageIndex = 43
      OnExecute = PointsUnlockExecute
    end
    object PointsUnlockAll: TAction
      Category = 'Point'
      Caption = 'Unlock all points'
      Hint = 'Unlock all locked controlpoints.'
      ImageIndex = 45
      OnExecute = PointsUnlockAllExecute
    end
    object ImportMarkers: TAction
      Category = 'Tools'
      Caption = 'Import'
      ImageIndex = 46
      OnExecute = ImportMarkersExecute
    end
    object ExportMichlet: TAction
      Category = 'Export'
      Caption = 'Michlet...'
      ImageIndex = 47
      OnExecute = ExportMichletExecute
    end
    object ResistanceKaper: TAction
      Category = 'Calculate'
      Caption = 'KAPER'
      OnExecute = ResistanceKaperExecute
    end
    object ResistanceDelft: TAction
      Category = 'Calculate'
      Caption = 'Delft yacht series'
      OnExecute = ResistanceDelftExecute
    end
    object PointAlign: TAction
      Category = 'Point'
      Caption = 'Align'
      Hint = 
        'Project selected points on a straight line through the first and' +
        ' last selected point.'
      ImageIndex = 48
      OnExecute = PointAlignExecute
    end
    object ImportMichletWaves: TAction
      Category = 'Import'
      Caption = 'Michlet waves...'
      ImageIndex = 47
      OnExecute = ImportMichletWavesExecute
    end
    object ShowHydrostatics: TAction
      Category = 'Visibility'
      Caption = 'Hydrostatic features'
      Hint = 'Show certain hydrostatic key properties in the model.'
      ImageIndex = 49
      OnExecute = ShowHydrostaticsExecute
    end
    object MirrorFace: TAction
      Category = 'Transform'
      Caption = 'Mirror...'
      OnExecute = MirrorFaceExecute
    end
    object TransformLackenby: TAction
      Category = 'Transform'
      Caption = 'Lackenby...'
      OnExecute = TransformLackenbyExecute
    end
    object ExportIGES: TAction
      Category = 'Export'
      Caption = 'IGES'
      OnExecute = ExportIGESExecute
    end
    object ExportPart: TAction
      Category = 'Export'
      Caption = 'Part...'
      OnExecute = ExportPartExecute
    end
    object ImportPart: TAction
      Category = 'Import'
      Caption = 'Part...'
      OnExecute = ImportPartExecute
    end
    object LayerIntersection: TAction
      Category = 'Point'
      Caption = 'Intersect layers...'
      Hint = 'Find the intersection of two layers.'
      ImageIndex = 51
      OnExecute = LayerIntersectionExecute
    end
    object KeelRudderWizard: TAction
      Category = 'Tools'
      Caption = 'Keel and rudder wizard'
      Hint = 'Create a default rudder or keel.'
      ImageIndex = 52
      OnExecute = KeelRudderWizardExecute
    end
    object Redo: TAction
      Category = 'Edit'
      Caption = 'Redo'
      Hint = 'Undo the previous modification.'
      ShortCut = 16466
      OnExecute = RedoExecute
    end
    object ClearUndo: TAction
      Category = 'Edit'
      Caption = 'Clear'
      OnExecute = ClearUndoExecute
    end
    object ShowUndoHistory: TAction
      Category = 'Edit'
      Caption = 'Browse...'
      OnExecute = ShowUndoHistoryExecute
    end
    object ImportPolyCad: TAction
      Category = 'Import'
      Caption = 'PolyCad'
      ImageIndex = 53
      OnExecute = ImportPolyCadExecute
    end
    object RemoveUnusedPoints: TAction
      Category = 'Tools'
      Caption = 'Remove unused points'
      OnExecute = RemoveUnusedPointsExecute
    end
    object ExportGHS: TAction
      Category = 'Export'
      Caption = 'GHS...'
      ImageIndex = 54
      OnExecute = ExportGHSExecute
    end
    object ShowFlowlines: TAction
      Category = 'Visibility'
      Caption = 'Flowlines'
      Hint = 'Show flowlines around the hull.'
      ImageIndex = 55
      OnExecute = ShowFlowlinesExecute
    end
    object AddCylinder: TAction
      Category = 'Geometry'
      Caption = 'Add cylinder...'
      OnExecute = AddCylinderExecute
    end
    object SelectAll: TAction
      Category = 'Selection'
      Caption = 'Select all'
      ShortCut = 16449
      OnExecute = SelectAllExecute
    end
    object ExportSTL: TAction
      Category = 'Export'
      Caption = 'STL...'
      OnExecute = ExportSTLExecute
    end
    object CrossCurves: TAction
      Category = 'Calculate'
      Caption = 'Cross curves'
      OnExecute = CrossCurvesExecute
    end
    object AddBulkhead: TAction
      Category = 'Bulkheads'
      Caption = 'Add bulkhead'
      OnExecute = AddBulkheadExecute
    end
    object CopyBulkhead: TAction
      Category = 'Bulkheads'
      Caption = 'Copy'
      OnExecute = CopyBulkheadExecute
    end
    object Addelement: TAction
      Category = 'Bulkheads'
      Caption = 'Add element'
      OnExecute = AddelementExecute
    end
    object ShowBulkheads: TAction
      Category = 'Visibility'
      Caption = 'Showbulkheads'
      ImageIndex = 56
      OnExecute = ShowBulkheadsExecute
    end
    object SeaKeeping: TAction
      Category = 'Calculate'
      Caption = 'Seakeeping'
      OnExecute = SeaKeepingExecute
    end
  end
  object MenuImages: TImageList
    Left = 49
    Top = 78
    Bitmap = {
      494C010139003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AE105A00AE105A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AE105A00AE105A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F072100540B2D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004D0728005411300033051B0047072500741A44006A0A37000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007D0B
      4100902F5D00270515002404130031051A0050082A0044062300420823006A0A
      37006A0A37000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000862251003305
      1B002D0518002F05190039051D0054082C00B0105B00A50F56009A0E50008F0D
      4A00820C4400B7115F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008A114A0052082B004006
      210039051D003C061F0044062300680A3600EE388E00ED318900ED278400EC20
      8000EB177B00E0147400DC207800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A0A37004F0729003E06
      200037051D0035051C0039051D0054082C00F04A9800EF439400EE3C9000EE38
      8E00ED2F8800ED258300E5157700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A0A370052082B004006
      210035051C002D0518002C04170044062300F15BA200F1539D00F04E9A00EF45
      9500EE3C9000EE328A00EC1C7E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006E0A390056082D004206
      220033051B002C041700240413003C061F00F26AAA00F260A500F1579F00F04C
      9900EF439400EE348C00EB197C00000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D3D3D2006D6D4F002F2F1200CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000807B00007D790000797900007D790000797900007D7D00000000
      0000000000000000000000000000000000002929290063636300636363006363
      63006363630063636300636363000000FF006363630063636300636363006363
      6300636363006363630063636300292929000000000000000000000000000000
      00000000000000000000000000009D9D9E0081858A0058636E002E4052005762
      6D00A09C9C000000000000000000000000000000000000000000000000000000
      00000000000000000000D6D6D6007C7C19004343000043430000909080000000
      00000000000000000000000000000000000085853C0080800D00000000008178
      000063430000950000007D000000370000007D00000037000000691A00008068
      00007D7D000000000000000000000000000063636300C6BDC600C6BDC600C6BD
      C600C6BDC600C6BDC6007F7DD0000000FF007F7DD000C6BDC600C6BDC600C6BD
      C600C6BDC600C6BDC600C6BDC600636363000000000000000000000000009E9E
      9E0083878B0058647000314355000B1F340006112300060E1C00071224004250
      5E00A19B9B000000000000000000000000000000000000000000000000000000
      00000000000000000000A1A16400808000006161000086860000656540000000
      000000000000000000000000000000000000F3F3F300BBBBBB0095956E00A652
      37007D0000007D0000007B0000006F0000007D0000006F0000003B0000002E00
      00004B3900007C7C0000000000000000000063636300C6BDC600C6BDC600C6BD
      C600C6BDC600C6BDC6000000FF000000FF003131EF00C6BDC600C6BDC600C6BD
      C600C6BDC600C6BDC600C6BDC6006363630000000000000000007F8387001D33
      49000218300007112300080C18000E0B1500FFC513000C0A1400080913001C1D
      2600777577000000000000000000000000000000000000000000000000000000
      000000000000D2D2CE0079790000767600006B6B00006B6B00005D5D12000000
      000000000000000000000000000000000000EEEEE600CECECE00CECECE00C9C9
      C900AEAEAE00AEAEAE00999999004949490097313100440000007D0000004000
      00002E000000463900007D7D00000000000063636300C6BDC600C6BDC600C6BD
      C600C6BDC6003131EF007F7DD0000000FF0063636300636363008C8C8C00C6BD
      C600C6BDC600C6BDC600C6BDC60063636300000000009A9A9B000F2840000620
      3E000A19320006152B0007122400FFC51300070E1C00080D1A00060D1A00000D
      1A00000C1800333C440094959600000000000000000000000000000000000000
      000000000000B1B170008D8D00006B6B00007070000074740000585800000000
      0000000000000000000000000000000000009B9A1A00DAAE8A00D3D3D300CECE
      CE00CECECE00CECECE00CECECE00CECECE00C5C5C500A23C3C0085001F006900
      0000450000002E000000726800000000000063636300C6BDC600C6BDC600C6BD
      C6008C8C8C00C6BDC600636363000000FF00000000000CD20C00000000002929
      2900C6BDC600C6BDC600C6BDC6006363630000000000757B8200032445000622
      4500FFC51300061D3A00061A330007162D00081429000014290000142900FFC5
      1300FFC5130000122500212E3B00989999000000000000000000000000000000
      0000000000009B9B0D009292000095950000707000006E6E000069690000D3D3
      D30000000000000000000000000000000000916A0000D2000000FFAFAF00C7C7
      C700DCB6B600E8D5D500DCDCDC00DCDCDC00D0D0D00099999900D39F9F006A33
      33006F2A2A0072303000251C00007D7D000063636300C6BDC600C6BDC600C6BD
      C6002929290000000000000000000000FF000CD20C000CD20C000CD20C000000
      000029292900C6BDC600C6BDC6006363630000000000596673000C2C5200FFC5
      130005274C000623470007214300FFC51300FFC51300001D3B00001E3C00001E
      3C0003213C000D2A3D0019373E00405456000000000000000000000000000000
      0000CACAC4009F9F00008A8A00009F9F0000959500008989000075750000B8B8
      B80000000000000000000000000000000000CF2C0000D2000000FF6F6F00D0D0
      D000B6626200BB1F1F00C33F3F00BF3F3F00F7A1A100DAB9B900F2D2D200B1B1
      B100D3D3D300C3C3C3007E3939007E79000063636300C6BDC600C6BDC6006363
      63000000000000000000000000000000FF00000000000CD20C00000000000000
      00000000000029292900C6BDC600636363000000000045586A00244367001D3B
      6000112F5500083054000D38570014405A001A475E0022516200285865003062
      690035666B002F5C5F0026494C002E4B4D000000000000000000000000000000
      0000BABA8600898900008D8D000081810000848400006969000084840000AAAA
      A20000000000000000000000000000000000852C0000D2000000D2000000ECEC
      EC00A9929200A7000000AC080800A7000000920000007D0000009A2F2F00CFCF
      CF00CACACA00C5C5C500B1B1B10000000000BD420000BD420000BD420000BD42
      0000BD420000BD420000BD4200000000FF00BD4200000CD20C00BD420000BD42
      0000BD420000BD420000BD420000BD42000000000000516F79005B8A96005186
      8F004F878C004A84880046808500437E8200407A7F003D777B003C7378003A71
      7500386D710032606300274C4F00536768000000000000000000000000000000
      0000B3B34D008C8C00008A8A000068680000939300006C6C000075750000A3A3
      900000000000000000000000000000000000CF2C0000D2000000D2000000FFAA
      AA00C2C2C2009C4E4E00D8C8C8008F1B1B009200000079343400660D0D00E7CF
      CF00CECECE009C5C5C00E7DEDE008B8B3E00636363008C8C8C00000000000000
      00000000000000000000000000000000FF00000000000CD20C00000000000000
      0000000000000000000063636300636363000000000061888B0078A8AC00669B
      9F005A91950051898E004B84890046818500427D81003F797E003D777B003C74
      7800386C7100305D6100516A6C009C9D9D000000000000000000000000000000
      0000A9A91B00AAAA0000B2B200006E6E0000A3A300008D8D00008E8E0000A5A5
      7E0000000000000000000000000000000000CF2C0000FF000000D2000000CF24
      2400E1E1E100BF9F9F00E6E6E600BAAAAA00A1000000FF9A9A00ABABAB00C8C8
      C800CECECE0082414100945D5D00B1B164006363630063636300000000000000
      00000000000000000000000039000000FF00000039000CD20C00000000000000
      0000000000008C8C8C00C6BDC600636363009A9C9C006993960083B1B4006FA1
      A6005E949900538B90004B84890046808500427D8200417B80003E787D003B72
      7700386A6E006C8082009E9E9E00000000000000000000000000000000000000
      0000929200009B9B0000979700006E6E00008C8C000082820000848400009B9B
      750000000000000000000000000000000000B5450000D2000000FF000000D200
      0000F7D0D000D4D4D400E6E6E600C3C3C300BD343400BB1F1F00E8D5D500CECE
      CE00CACACA00A6A6A6007C1A02008D8800006363630063636300000000000000
      00000000000000000000000039000000FF00000039000CD20C00000000002929
      2900BDBDBD00C6BDC600C6BDC600636363008A9192007EA6A90089B4B80073A4
      A80061969B00548C90004B84890046808500437E8300417C80003F797D004D7B
      7F008A949500000000000000000000000000000000000000000000000000D7D7
      D70097970000AFAF00009E9E00009B9B0000A7A700008A8A0000A2A200008E8E
      640000000000000000000000000000000000817B0000FF000000D2000000FF00
      0000FF9C9C00C9C9C900C5C5C500CACACA00B8575700C7000000CD5C5C00CDCD
      CD00B0787800D8D8D800919163000000000063636300BDBDBD00000000000000
      000000000000000000000000000000000000000000000CD20C008C8C8C00C6BD
      C600C6BDC600C6BDC600C6BDC600636363007987880092B8BB008BB7BA0076A7
      AB0064999D00558D92004B858A0046808500498387005A8D92007C9596009C9E
      9E0000000000000000000000000000000000000000000000000000000000C7C7
      C7009D9D0000BCBC000092920000A7A70000A7A7000082820000AAAA00008E8E
      640000000000000000000000000000000000000000006C450000FF000000D200
      0000FF202000E4E4E400BABABA00CECECE00BD666600D2000000A7000000FF44
      44008F000000A4593F00ACAC4B000000000063636300C6BDC6005A5A5A000000
      000000000000000000000000000000000000292929000CD20C000CD20C000CD2
      0C00C6BDC600C6BDC600C6BDC600636363006D818300A0C4C7008DB8BB0078A9
      AD00669A9F00578F93005E93970074A1A5008BA3A4009C9E9F00000000000000
      000000000000000000000000000000000000000000000000000000000000C2C2
      B800B6B60000BCBC000092920000A7A70000A7A7000082820000AAAA00008686
      5C0000000000000000000000000000000000000000007E7D0000BE3C0000FF00
      0000D2000000FFAAAA00CECECE00CECECE00BD666600D2000000C8000000CD00
      0000AB0000008B6E0000000000000000000063636300C6BDC600BDBDBD002929
      2900000000000000000000000000292929000CD20C000CD20C000CD20C00C6BD
      C600C6BDC600C6BDC600C6BDC600636363006C8688009DC3C6008AB6B90082AF
      B20090B8BB009BBABC009DADAE009E9FA0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3B3
      A600ABAB0000BCBC000092920000A7A70000A7A7000082820000A3A300008080
      4D000000000000000000000000000000000000000000000000007E7D00006C45
      0000FF000000D0212100E3E3E300CECECE00BD666600D2000000D2000000951C
      00008D6E000000000000000000000000000063636300C6BDC600C6BDC6008C8C
      8C0000000000000000008C8C8C00C6BDC60063DE63000CD20C0063DE6300C6BD
      C600C6BDC600C6BDC600C6BDC6006363630074909200C6DCDE00CFDEDF00C0C9
      CA00A6ABAC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      AD00AEAE0100AEAE01008E8E01009E9E01009E9E0100828201009A9A01008C8C
      6500000000000000000000000000000000000000000000000000000000000000
      0000817B0000B5480000D5A76A00F3F3F300B0834900852C0000916A00007E7D
      0000000000000000000000000000000000002929290063636300636363006363
      6300292929005A5A5A006363630063636300636363000CD20C00636363006363
      63006363630063636300636363002929290085969700B4B5B500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C0000000C0000000C000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006E6E
      6E00181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000C00000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000023212D0045434A004343
      43005D5D5D0000000000000000000000000000000000000000006B6B6B004C4A
      5500161519000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF000000FF0000000000FFFFFF00FFFFFF002525
      2500000000000B0B0B0000000000000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF000000FF0000000000FFFFFF00FFFFFF002525
      2500000000000B0B0B000000000000000000000000004A465E007C759E006F69
      8E004F4B6000242424003131310000000000000000007777770042404A009B95
      B80027262E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000064646400000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF002626
      260000000000000000000B0B0B00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF002626
      260000000000000000000B0B0B0000000000000000004A465E009C93C7009C93
      C7009890C200948CBD00847CA80023222C0011101400373639008984A300A29C
      C00027262E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C0000000
      0000000000006464640064646400000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF002626
      2600000000000000000000000000000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF002626
      260000000000000000000000000000000000000000004A465E009C93C7009C93
      C7009C93C7009C93C7009C93C700827BA600433E5B00CFCED40036314E00514C
      660016151A005858580000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C0000000C0000000
      C000646464006464640064646400646464000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000007D7D7D007F7F7F00797979002626
      2600262626002626260025252500000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000007D7D7D007F7F7F00797979002626
      260026262600262626002525250000000000000000004A465E009C93C7009C93
      C7009C93C7009C93C7008D85B400403B57006E659E00E0DDED007F74B600665D
      930015131D0056526A002A2A2A00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C0000000
      0000000000006464640064646400000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000BFBFBF000000
      0000BFBFBF000000000000000000FFC10300000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000004A465E009C93C7009C93
      C7009C93C7008D85B40036324A00776DAB007F74B600E0DDED007F74B6007F74
      B6001F1D2C00978FC100433F5500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000064646400000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000B0B0B000000000000000000FFFF
      FF00FFFFFF00FFFFFF00CCCCCC00000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF0000000000FFC10300FFC10300FFC103000101010000000000FFFF
      FF00FFFFFF00FFFFFF00CCCCCC0000000000000000004A465E009C93C7009C93
      C7009C93C700343142007268A4007F74B6007F74B600E0DDED007F74B6007F74
      B6001F1D2C009C93C7004A465E00000000000000000000000000646464000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000BFBFBF0000000000BFBFBF0000000000000000000B0B0B0000000000FFFF
      FF00FFFFFF00CCCCCC0000000000000000000000000000000000BFBFBF000000
      0000BFBFBF000000000000000000FFC10300FFC10300FFC1030001010100FFFF
      FF00FFFFFF00CCCCCC000000000000000000000000004A465E009C93C7009C93
      C7009C93C700343142007268A4007F74B6007F74B600E0DDED007F74B6007F74
      B6001F1D2C009C93C7004A465E00000000000000000000000000646464006464
      640000000000000000000000C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF0001010100FFC10300FFC10300FFC103000101
      01000000000000000000000000000000000000000000161619006E688C008D85
      B400938BBC00343142007268A4007F74B6007F74B600E0DDED007F74B600786D
      AC00282537009C93C7004A465E00000000006464640064646400646464006464
      6400646464000000C0000000C0000000C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      00000000000000000000000000000000000001010100FFC10300FFC10300FFC1
      0300010101000101010001010100010101000000000000000000434343002A2A
      2A004442510022202C00524B76007F74B6007F74B600E0DDED007067A100423D
      59008880AD009C93C7004A465E00000000000000000000000000646464006464
      640000000000000000000000C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      00000000000000000000FFFF000000000000FFFF000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      00000000000000000000FFFF000000000000FFFF000001010100FFC10300FFC1
      0300FFC10300FFC10300FFC10300FFC103000000000000000000000000000000
      000068686800181818005451660036314E0036314E00CFCED400423D59007F78
      A2009C93C7009C93C7004A465E00000000000000000000000000646464000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF000000
      000000000000000000000000000000000000000000000000000001010100FFC1
      0300FFC103000101010001010100FFC103000000000000000000000000000000
      0000000000002A2A2A009B95B8008F89AA008A84A3003D3C4100100F1200645E
      7F00948CBD00968EC0004A465E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0001010100FFC1
      0300010101000000000000000000010101000000000000000000000000000000
      0000000000002A2A2A00A099BE009D97BB0046444F0072727200000000004B4B
      4B00242424003938420035324300000000000000000000000000000000000000
      0000000000000000000000000000000000000000C00000000000000000000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF000000
      0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF0001010100FFC1
      0300010101000000000000000000000000000000000000000000000000000000
      0000000000002A2A2A00928DAE004D4B57006868680000000000000000000000
      0000000000006E6E6E0043434300000000000000000000000000000000000000
      00000000000000000000000000000000C0000000C0000000C000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000000000000000000000000000000000000000000001010100FFC1
      0300FFC103000101010000000000000000000000000000000000000000000000
      0000000000002A2A2A002E2C34006D6D6D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040FF400040FF400040FF400040FF
      400040FF400040FF400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070000000000000001000000000000000000000002000000000000000400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040FF40000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000040FF400040FF40000000000000000000000000000000
      0000000000000000000000000000000000000000000002000000000000000000
      000000000000000000000000000000000000000000002018060068572D000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040FF400040FF4000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0B010095804900FFF09500F9E892000000
      0000000D00000707070000000000000000000000000000000000000000008080
      FF000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000
      C000000000000000000000000000000000000000000000000000000000000000
      000040FF40000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040FF40000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006000000897E4E00FFE79000FFEB9000F8D98D00F9D895003634
      2200161C16000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040FF
      4000000000000000000000000000000000000000000003000000000000000101
      00007A673A00F7DC8700FFEE9E00FFE2A300F5DA9C00F8D58E00FCD787007D7C
      6400494946000B0B010000000000000000000000000000000000000000008080
      FF000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000
      C0000000000000000000000000000000000040FF400000800000008000000080
      000040FF40000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000008000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040FF
      40000000000000000000000000000000000000000000000000006F653C00EFDC
      9500F6D78F00E6C58600EECA8D00FADEA200FFEEAB00FCE09D00FFD789009D90
      66004949430019190B0000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040FF40000000000000000000000000000000000000000000D0BB8800F2D9
      A800EAD5A300EBC68B00F1CC8200F7D39500FFECA900FFEDA600FFD99100AF93
      5A004F4F3A000C0C020000000000000000000000000000000000000000008080
      FF000000C0000000C0000000C0000000C0000000C0000000C0000000C0000000
      C0000000000000000000000000000000000040FF400000800000008000000080
      0000008000000080000000800000008000000080000000000000008000000000
      0000000000000000000000000000008000000000000000191900002929000029
      290000292900002929000029290039505000B1B1B10000000000000000000000
      00000000000040FF400000000000000000000801000004000000A4835000F1DC
      AB00FAE7AF00ECCA9200F1CB8000F8D18E00FFE8A600FFF1A900FFDB9600B792
      51004D4928000C0C010000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000000
      00000000000000000000000000000080000000313100005A5A00007E7E000084
      8400008484000084840000848400006E6E003D52520000000000000000000000
      0000000000000000000040FF4000000000000000000000000000A8895D00F5DD
      AD00F7E4AD00ECCA9000F1CB8100F7D18F00FFEAA700FFF1A900FFDA9500B28B
      4B004D3B1B001010040000000000000000000000000000000000000000000000
      00000000C000000000000000000000000000000000000000C000000000000000
      00000000000000000000000000000000000040FF400000800000008000000080
      0000008000000080000000800000008000000080000000000000008000000000
      0000C0C0C00000000000C0C0C00000800000364F4F0069F5F500035959000075
      750000848400008484000084840000848400007878003D525200B1B1B1000000
      0000000000000000000040FF4000000000000000000000000000EADA9700F7DD
      A500E2CA9A00E8C58500F1CC8400F7D69900FFEEAB00FFE8A400FFD88F009A7B
      470033220B001212050000000000000000000000000000000000000000000000
      00000000C000000000000000000000000000000000000000C000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      8000000000000000000000000000008000002C4F4F007BFFFF0069E3E300005F
      5F00003939000039390000393900003939000039390000242400393939000000
      000000000000000000000000000040FF40000000000000000000110B00009A90
      5C00FFE08800F0D18900EDCE9300FAE0A400FFECA800FADB9800FFD78700786D
      4900100600000F0F030000000000000000000000000000000000000000000000
      00000000C00000000000C0C0C00000000000C0C0C0000000C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000000000000000000000000000000000000C0C0
      C000008000000080000000800000C0C0C000184F4F008BFFFF006DFFFF0067ED
      ED0087DFDF006FDFDF0041C3C30049494900A8A8A800A8A8A800A8A8A8000000
      000000000000000000000000000040FF40000600000001000000000000000000
      000017100400A8925600FFF59D00FFEEA100F5D79700F5D18C00FFD88B004B49
      3600000000000404000000000000000000000000000000000000000000000000
      0000C0C0C000808080000000000000000000000000000000C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000000000000000000000000000000000000080
      000000000000000000000000000000000000274F4F007FFFFF005FDFDF00477F
      7F00277F7F003F7F7F00576F6F00545454000000000000000000000000000000
      000000000000000000000000000040FF40000000050000000800000000000000
      0000000000000000000025231100B39E6100FFEF8F00FFEB9200FAE099000C0E
      0000000400000606060000000000000000000000000000000000000000000000
      000000000000C0C0C0000000C0000000C0000000C000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000080000000000000C0C0C00000000000C0C0C0000080
      00008080800000000000000000000000000072818100354747003B5C5C009C9C
      9C009C9C9C009C9C9C009C9C9C00ABABAB005B5B5B00242424008F8F8F000000
      000000000000000000000000000040FF40000000000000000000000000000000
      00000000000000000000000000000000000030240E00C1B16C00E2D180000000
      0000000609000000060000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000808080000000000000000000000000000080
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      00000000000096969600B0B0B000000000007F7F7F0034343400848484000000
      000000000000000000000000000040FF40000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000100B00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000008000000080000000800000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      000000000000A8A8A8004B4B4B003C3C3C007E7E7E00AEAEAE00B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000020E2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000020E200000000000000000000C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000020E20000C0C00000C0C000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000008080
      800000000000C0C0C00000000000808080000000000080808000808080000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000C0C00000C0C0000020E20000C0C00000C0C0000000
      000000000000000000000000000000000000000000000000000040FF40000080
      0000008000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000C0C0C00000000000808080000000000000000000C0C0C000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000C0C00000C0C00000C0C00000C0C0000020E20000C0C00000C0
      C000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000808080000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF00D6AD080000C0C00000C0C00000C0C00000C0C0000020E20000C0
      C00000000000000000000000000000000000000000000000000040FF40000080
      0000008000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0080808000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00D6AD0800D6AD080000C0C00000C0C00000C0C00000C0C0000000
      00000020E2000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000C0
      C0000000FF0000C0C000D6AD0800D6AD080000C0C00000C0C0000000000000C0
      C00000C0C0000020E2000000000000000000000000000000000040FF40000080
      0000008000000080000000800000008000000080000000800000008000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000C0C00000C0
      C0000020E20000C0C00000C0C000D6AD0800D6AD08000000000000C0C00000C0
      C00000C0C00000C0C0000000FF00000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000C0C00000C0C00000C0
      C00000C0C0000020E2000020E20000C0C000D6AD0800D6AD0800D6AD080000C0
      C00000C0C00000C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000000000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000C0
      C00000C0C00000C0C00000C0C0000020E2000000000000C0C000D6AD0800D6AD
      080000C0C00000C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000000000000000
      0000000000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000C0C00000C0C000000000000020E20000C0C00000C0C000D6AD
      0800D6AD080000C0C0000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000000000C0C0C0000000
      0000C0C0C0000080000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000C0C00000C0C0000020E2000020E20000C0
      C000D6AD0800D6AD08000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00080808000000000000000
      00000000000000800000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000C0C00000C0C0000020
      E2000000000000C0C0000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000008000000080
      000000800000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000C0
      C0000020E2000020E2000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040FF400040FF400040FF400040FF
      400040FF400040FF400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040FF400040FF
      400040FF400040FF400040FF400040FF40000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000040FF400040FF40000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040FF400040FF4000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000FF404000FF40
      40000000000084848400FF404000FF404000FFFFFF00C6C6C600C6C6C6000000
      0000FF404000FF40400000000000000000000000000000000000000000000000
      00000000000000000000000000000000000040FF400040FF4000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040FF400040FF40000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000FF404000FF40
      40000000000084848400FF404000FF404000FFFFFF00C6C6C600C6C6C6000000
      0000FF404000FF40400000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040FF40000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040FF400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00FF00FF00000000000000000000000000FF404000FF40
      400000000000C6C6C6008484840084848400C6C6C600C6C6C600C6C6C6000000
      0000FF404000FF40400000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040FF
      4000000000000000000000000000000000000000000000000000000000000000
      000040FF40000000000000000000000000000C0C0C00830C8300830C83000C0C
      0C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000FF404000FF40
      4000848400000000000000000000000000000000000000000000000000008484
      0000FF404000FF40400000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000040FF
      4000000000000000000000000000000000000000000000000000000000000000
      000040FF4000000000000000000000000000F02DF0007F007F007F007F00830C
      83000C0C0C000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF000000000000000000FF00FF00000000000000000000000000FF404000FF40
      4000FF404000FF404000FF404000FF404000FF404000FF404000FF404000FF40
      4000FF404000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040FF400000000000000000000000000000000000000000000000000040FF
      400000000000000000000000000000000000A97DA900FFFFFF007F007F007F00
      7F00830C83000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF0000000000FF00FF00000000000000000000000000FF4040008484
      0000000000000000000000000000000000000000000000000000000000000000
      000084840000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000040FF40000000000000000000000000000000000040FF40000000
      00000000000000000000000000000000000000000000A97DA900FFFFFF007F00
      7F00000000009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000000000000000000000000000FF4040000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040FF4000000000000000000040FF4000000000000000
      0000000000000000000000000000000000000000000000000000913791000000
      0000FFFFFF00BFBFBF00949494000C0C0C000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      000000000000FF00FF0000000000000000000000000000000000FF4040000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040FF4000000000000000000040FF4000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00FFFFFF00FFFFFF0000000000007F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF000000
      0000FF00FF000000000000000000000000000000000000000000FF4040000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040FF400040FF400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BFBFBF0000000000007F7F00007F7F000000000000000000000000000000
      00000000000000000000FF00FF0000000000000000000000000000000000FF00
      FF00000000000000000000000000000000000000000000000000FF4040000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040FF400040FF400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001686860000FFFF00007F7F00FF00FF000000000000000000FF00
      FF00000000000000000000000000FF00FF0000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040FF400040FF400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000161616001686860000FFFF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FF4040000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF40400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040FF400040FF400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000016161600168686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000040FF400040FF400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C000000000000000000000000000000
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
      000000000000F9F9FC00C2C2E00000008100000081004A4AA500F7F7FB00FDFD
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000F5F5
      FA00A3A3D100494CA600478BC500478BE100478BE100478BC5001D61B000696C
      B500E0E0EF00FDFDFE000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E6E6F2004444
      A000508FBD00A3FFFF007FFFFF007FFFFF007FFFFF007FFFFF007FF7F70074C0
      D4001A2390009698D100FDFDFE0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FDFDFE006A6DBD0070BC
      D000001A1A0056CBCB007FFFFF007FFFFF007FFFFF007FFFFF00479A9A002C38
      38007FF2F2001A62C900E0E0EF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0D0001E65C9007FFF
      FF003FABAB00435454007FF3F3007FFFFF007FFFFF007FF3F300162727003FAB
      AB007FFFFF007FD7EB003133A300FAFAFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000F9F9FC002E30A3007FDAED007FFF
      FF007FF2F20029383800439B9B007FFFFF007FFFFF00439B9B00293838007FF2
      F2007FFFFF007FFFFF001D61E100A4A4D3000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DCDCEE002129A7007FFFFF007FFF
      FF007FFFFF002990900000101000254D4D00254D4D0000101000299090007FFF
      FF0094FFFF0084FFFF0047A3ED006163B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000007B7BBF00478BE1007FFFFF007FFF
      FF004EC4C400002222001D3030001E2C2C005DB9B9005DB9B900345656004EC4
      C4009AFFFF0085FFFF007FFFFF0003079200000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7BBF00478BE1007FFFFF007FFF
      FF002C5C5C00388C8C007FF1F100214343003FAEAE0094FFFF008CEAEA003455
      55004EC5C5007FFFFF007FFFFF000307A300000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      000000000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000000000000000000000000000A0A0D0002165C5007FFFFF007FFF
      FF0052828200304848007FFFFF0047B9B900002121005097970089F0F0002C7C
      7C00306464007FFFFF007FDBED00292AA200000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FB00070FA7007FFFFF007FFF
      FF006CE5E50000242400309696007FFFFF0047BABA00293B3B0016262600294F
      4F0059D3D3007FFFFF00478BE1007B7BBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FDFDFE006264BF004AA3EB007FFF
      FF007FFFFF0056BDBD001A2222007FE5E5007FFFFF007FF3F3006CD8D8007FF9
      F9007FFFFF007FFFFF001A22A700E4E4F1000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000008484840084000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      0000840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6F2004447A3007FD7
      EB007FFFFF007FF9F900567474002D4C4C007FFFFF007FFFFF007FFFFF007FFF
      FF007FFFFF001A6FE9009698D700FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000084848400FFFFFF00840000008400
      000084000000840000008400000084000000840000008400000084000000FFFF
      FF0084000000FFFFFF000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0D5001A1D
      A6007FD7EB007FFFFF0065DFDF00002323002D9292007FFFFF007FFFFF007FFF
      FF001A6FE9002D2FA300F6F6FA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      8400848484008484840084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFE00E0E0
      EF003133A3001E62E1007FDBED0059D5D500599999007FFFFF0047A0EB001A22
      A7009698D700F6F6FA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FAFAFC00A4A4D3006566B300030792000307A300292DA3007B7CC000E4E4
      F100FEFEFE00000000000000000000000000D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F0F400FAF9FB0000000000000000000000
      000000000000000000000000000000000000D3D3D300D3D3D300E4E4E400FFFF
      FF00F0F0F000E4E4E400D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D3000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C00830C8300830C83000C0C
      0C00000000000000000000000000000000000000000029292900C00000000000
      0000000000000000000000000000292929000000000000000000000000000000
      0000C00000002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000A197AB00BEBAC50000000000000000000000
      000000000000000000000000000000000000D3D3D300F3F3F300FCFCFC00FFD3
      D300FFE7E700FFFB8400FFFF9300EDEDB200EDED7E00D4D4CC00D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D3000000000000000000000000000000
      000000000000000000000000000000000000F02DF0007F007F007F007F00830C
      83000C0C0C00000000000000000000000000292929000000000000000000C000
      000029292900292929002929290029292900000000000000000000000000C000
      0000000000000000000029292900000000000000000000000000000000000000
      00000000000000000000000000006854830089789F0000000000000000000000
      000000000000000000000000000000000000D3D3D300FFFFDD00FF4B3F008E00
      8E00906BFF00301AFF00CC609600E4606700FFD79300FFFF3600FFFF4200F9F9
      5D00E8E88E00E8E88E00DBDBB700D3D3D3000000000000000000000000000000
      000030320D00000000000000000000000000A97DA900FFFFFF007F007F007F00
      7F00830C8300000000000000000000000000C000000000000000292929002929
      2900C00000000000000000000000292929002929290029292900C00000000000
      00000000000000000000C0000000000000000000000000000000000000000000
      00000000000000000000E2DDE6001C0143002D085500F7F2FB00000000000000
      000000000000000000000000000000000000D3D3D300FFFF6700FF504400E49B
      9B00C72B6D00BC1972005B1DE7000500F5009B199700DD575C00FFDA3200E9E9
      8A00E8E88E00E8E88E00F5F56700FFFF4B00000000000000000000000000978B
      96005258680030320D00000000000000000000000000A97DA900FFFFFF007F00
      7F00000000009F9F9F00000000000000000029292900C0000000000000000000
      000000000000C0000000000000002929290000000000C0000000292929000000
      000000000000C000000029292900000000000000000000000000000000000000
      000000000000E1DBE4002F174A0016003B0024005700472C6800F1EDF7000000
      000000000000000000000000000000000000ECEC8400F4E39700FF5C5C00D3D3
      D300D3D3D300D6C7C700E9757C00AA0067009722AB001D00DD0078009500F5B8
      5700F8F85F00D6D6C700D3D3D300D3D3D3000000000000000000978B9600F7C2
      B800978B96005258680030320D00000000000000000000000000913791000000
      0000FFFFFF00BFBFBF00949494000C0C0C002929290029292900C00000000000
      00000000000000000000C000000029292900C000000000000000292929000000
      0000C0000000000000002929290000000000000000000000000000000000DBD6
      DE00665C6E000C0123000A002300120037002A00630022005000200243007C6E
      8F00E9E6EB00000000000000000000000000F9F95B00F9725D00E3A2A200D8C2
      C200D4CECE00D3D3D300D3D3D300D3D3D300E1A3A300CF376D005F00A2006C00
      A100E3A79200DDDDB100D3D3D300D3D3D30000000000FFFFFF00F7C2B800978B
      9600F7C2B800978B96005258680030320D00000000000000000000000000BFBF
      BF00FFFFFF00FFFFFF0000000000007F7F00292929000000000000000000C000
      0000000000000000000000000000C0000000000000000000000000000000C000
      00000000000000000000C00000000000000000000000F4F7F700515861000B0B
      1F0009091A000A0A1D000F0E24001E1A4000514D91004B47890046427E003F3C
      7200383A6500798490000000000000000000FFFF4B00F46D6D00FF535300FC5F
      5F00F1434300FF4B4B00FC545400D3D3D300D3D3D300D3D3D300EF7D7D001700
      E300BB076100D3D3D300D3D3D300D3D3D30000000000F7C2B800FFFFFF00F7C2
      B800978B9600F7C2B800978B96005258680030320D0000000000000000000000
      0000BFBFBF0000000000007F7F00007F7F002929290000000000292929002929
      2900C00000002929290029292900292929002929290000000000C00000002929
      290000000000C00000002929290000000000000000004A625F00213734001528
      27001123220012262400192B2A002B4D4B008ED8D70088D3CF0082CBC60080C3
      C0007ABCB70074AFAE0080A7A60000000000D3D3D300E49B9B00FF9A9A00FFFF
      FF00FFFFFF00C6C6C600AEA2A200FF4D4D00E7939300D3D3D300D3D3D300D047
      76004200B800ED7E7E00D3D3D300D3D3D30000000000978B9600F7C2B800FFFF
      FF00F7C2B800978B9600F7C2B800978B96005258680030320D00000000000000
      0000000000001686860000FFFF00007F7F002929290029292900000000000000
      000000000000C0000000000000002929290000000000C0000000000000000000
      0000C0000000000000002929290000000000BDCDCC002F4C49001E3434001527
      27000F2121000E1F1E0011222200213B3A0099E8E40093E3E00090DCDB008DD8
      D60088D2D20082CAC60075B7B300DCEAEA00D3D3D300D3D3D300FF4C4C00FFFF
      FF00D2D2D200FFFFFF00FFFFFF00DDDDDD00E0808000E5444400D7C4C400D4CE
      CE00C6135F00AF006800D3D3D300D3D3D3000000000052586800978B9600F7C2
      B800FFFFFF00F7C2B800978B9600F7C2B800978B96005258680030320D000000
      000000000000161616001686860000FFFF002929290000000000000000000000
      00000000000000000000C000000029292900C00000002929290000000000C000
      0000292929000000000029292900000000009BAEAB002E4D4B00213736001627
      27000E1F1F000A1919000A171700162C2C00A5F4F1009DF0EC009AEBE80096E3
      E30090DCDB008AD3D0007DC0BC00C0D8D800D3D3D300D3D3D300FF676700F4DD
      DD00E9E9E900FFFFFF00DDDDDD00CBCBCB00F1F1F100FBE8E800FF828200D8C2
      C200D34672003700D200DDB1B100D3D3D3000000000030320D0052586800978B
      9600F7C2B800FFFFFF00F7C2B800978B9600F7C2B800978B9600000000000000
      0000000000000000000016161600168686002929290000000000000000000000
      0000000000000000000000000000C00000000000000000000000C00000000000
      0000000000002929290029292900000000009BB0AE002F515000233A3800172A
      28000E1E1E000A1616000512120012262600ADFFFC00A5FBF7009EF4F10097EC
      E90092E3E0008CD6D30079C0BE00BBD5D500D3D3D300D3D3D300D8C2C200EC4F
      4F00E9E9E900F5F5F500CBCBCB00FFFFFF00FFFFFF00D6D6D600B59E9E00F457
      5700D6C8C800C7196000886DD800D3D3D300000000000000000030320D005258
      6800978B9600F7C2B800FFFFFF00F7C2B800978B960000000000000000000000
      00000000000000000000000000000C0C0C002929290029292900292929002929
      29002929290029292900292929002929290000000000C0000000292929000000
      000000000000292929002929290000000000C1CECD00425D5A00243E3B00192B
      2A000E1E1E000B1315000712120015272800B1FFFF00AAFFFF00A2F8F5009BF0
      ED0097E4E3008CD6D30081BCBB00DFECEC00D3D3D300D3D3D300D3D3D300E484
      8400FFABAB00FFE9E900DDDDDD00FFFFFF00CFCFCF00F9F9F900FCFCFC00FFAE
      AE00EC979700DD8D9900DB799D00F0F0F0000000000000000000000000003032
      0D0052586800978B9600F7C2B800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000029292900C000000000000000000000002929
      290000000000000000002929290000000000000000000000000091A4A200213E
      3C000E23220007131300091515001B303000B5FFFF00ABFFFF00A5FBF8009AEB
      E90086D0CF00B8D7D7000000000000000000D3D3D300D3D3D300D3D3D300D3D3
      D300E7959500FF676700FFA5A500FFF7F700CCCCCC00FCFCFC00FCFCFC00FCFC
      FC00FFABAB00F46B6B00FF8C8C00FCFCFC000000000000000000000000000000
      000030320D0052586800978B9600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C00000002929290029292900292929002929
      2900292929002929290029292900000000000000000000000000BEC9C9002F4F
      4C004D7674009BE5E0005D939000325B5B00B7FFFF00B8FFFF00BFFFFF007ABC
      BA006B9F9F00C9DAD9000000000000000000D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300E98D8D00FF303000D2BBBB00FFEBEB00FFEBEB00FF69
      6900FF2F2F00FF4F4F00D8D8D800FFFFFF000000000000000000000000000000
      00000000000030320D0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292929000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DCDE
      DE00959E9F005C6C6D00557270005C848100618A8900597F7B0067807F00A6AF
      AD00E2E6E800000000000000000000000000D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300E7E7E700F95C5C00F95C5C00F95C5C00F1D2
      D200F1F1F100F7F7F700FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000292929000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000850A0A0099323200993232009932
      3200993232009932320099323200993232009932320099323200993232009932
      3200993232009932320099323200850A0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007E81030061A63B0050BC610050BC
      610050BC610050BC610050BC610050BC610050BC610050BC610050BC610050BC
      610050BC610050BC610061A63B007E81030000000000FFFFFF00000000000000
      0000000084000000000000000000FFFFFF000000000000008400000000000000
      000000000000FFFFFF0000000000000000009933330000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004CC36A00958E4A00B1622E00D073
      3500D1773B00D4743600B7663000552E1400B1632E00CF723400552E1400D077
      3A00552E140060361900476438004CC36A0000000000FFFFFF00848484008484
      8400848484000000840084848400848484008484840000000000000084000000
      000000000000FFFFFF0000000000000000009933330000000000000000000000
      000000000000D6DDDD0088AAAA006AAAAA000000000000000000000000000000
      0000000000000000000000000000993232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005BB17300E98A4800BF6D3900DF82
      4100F6904700E0814100B969380000000000633B1E00693A1D0000000000E99A
      610000000000F9A15E00000000005BB17300FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0084848400000084000000840000008400000084000000
      840000000000FFFFFF00FFFFFF00FFFFFF009933330000000000000000000000
      00007F989800A4CFCF0072E2E2000FE2E20033AFAF0084B2B200000000000000
      000000000000000000000000000099323200000000000000000000FF000000FF
      000000FF000000000000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00
      FF00FF00FF0000000000000000000000000062AE7800F2904B00C26E3A00DD81
      4000F38E4500DB7F4000B768370000000000090502000D08050000000000E894
      5900000000006B3C1F003D24130062AE780000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF008484840000008400000084000000
      0000000084000000000000000000000000009933330000000000EBEFEF0083A0
      A000B5F0F000ADE1E1006AC5C5000EB8B80000EDED0000EAEA0000939300A3D5
      D500D6E4E400000000000000000099323200000000000000000000FF000000FF
      000000FF000000000000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00
      FF00FF00FF0000000000000000000000000060AB7600EB8B4800BC6B3800D079
      3D00E2844000C8743A00A55D32000000000064381C006E482B0000000000AE68
      380000000000BF6B38000000000062AE780000000000FFFFFF00848484000000
      0000FFFFFF000000000000000000FFFFFF000000000084848400848484000000
      8400000084000000840000000000000000009933330000000000B5CFCF00ABE1
      E10088A6A600687676003535350007070700006E6E0000A6A60000E4E40000E2
      E2001EA6A600C1E9E9000000000099323200000000000000000000FF000000FF
      000000FF000000000000FFFF0000FFFF0000FFFF000000000000FF00FF00FF00
      FF00FF00FF0000000000000000000000000053946700C7733800A55D3000A962
      3100B26833009F5B2E007B462500110A0700874F2E006A3E3600050323006840
      3B000D080700422614004025130060AC7600FFFFFF00FFFFFF00848484008484
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00848484000000840000008400000000009933330000000000D2F4F40086A5
      A500585B590077775B00494931000202020000040400001E1E00005E5E0000A6
      A60000F7F70066E9E90000000000993232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000038674E0089524400673B45006A42
      5200765080005539800036239E004C37BB003F31B8001A14AC00140FC8000605
      960031258800683C29008C502A005CA8740084848400FFFFFF00848484000000
      0000000000000000000000000000FFFFFF008484840084848400FFFFFF000000
      000000000000FFFFFF0084848400848484009933330000000000A1A7A7006265
      5D00C0C06F00E8E87A00DDDD5F00CBCB3700BDBD2F006262180012180A000015
      1500004B4B0066CFCF0000000000993232000000000000000000688DA200688D
      A200688DA20000000000DDE6EA00DDE6EA00DDE6EA0000000000000000000000
      00000000000000000000000000000000000030359A005D4EE7005046EE004D43
      F7002922D9002A24E3000300B3000C09AD000201BC0000006D00000083000000
      9D0000005A0034217000834B27005AA573008484840084848400848484008484
      8400000000008484840084848400000000008484840000000000FFFFFF000000
      000000000000FFFFFF0000000000000000009933330000000000AEAE9D00C2C2
      6F00F8F87200EAEA5600DCDC3000DCDC1F00F7F73800FCFC3D00C2C231007373
      1D001C1C07006A6A670000000000993232000000000000000000688DA200688D
      A200688DA20000000000DDE6EA00DDE6EA00DDE6EA0000000000000000000000
      0000000000000000000000000000000000003430B6001411CA00231ED500120E
      E3000605A1000603C9000D0AC20000008E00100DCC001512C5000604AD001E19
      D10000008D00140F9500864C28005BA67300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933330000000000EEEEAD00F0F0
      6B00D4D42800C6C60D00C0C00000C0C00000CFCF0F00DFDF2000F3F33400EFEF
      3A00BABA2F00ABAB770000000000993232000000000000000000688DA200688D
      A200688DA20000000000DDE6EA00DDE6EA00DDE6EA0000000000000000000000
      0000000000000000000000000000000000001915BE002B27E500201AEB003A34
      F400423CEF002B24F0006058FC00423AF2007670FA00756DFB006E64FC007064
      FD001007D7002810AA0097562D005EAA760000000000FFFFFF00000000000000
      0000000000000000000084848400848484000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000009933330000000000F3F39C00D4D4
      2800C0C00100C0C00000C0C00000C0C00000C0C00000C2C20200CDCD0D00DEDE
      1E00F2F23500F8F8890000000000993232000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000403CD2008F88FF00857DFF00A69F
      FF00AEA8FF00A69DFF00B8B0FF00A79CFF00AFA5FF008374FE006A60F7001B15
      D500140CC6007B426800D089550061AD770000000000FFFFFF00000000000000
      0000FFFFFF008484840084848400000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000009933330000000000AAAA6E006C6C
      02006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006B6B00006D6D
      020077770C00B7B77800000000009932320000000000000000000000FF000000
      FF000000FF000000000000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000FF0000000000000000000000000000006E6BDF00D3CCFF00C5BDFF00C2BA
      FF00B1A9FF007F73FE008074FF00352CDC00241AD0001A14DD000F0AAD005238
      81008C565100D0844C00E68C4E0062AE7800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008484840000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933330000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009932320000000000000000000000FF000000
      FF000000FF000000000000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000FF0000000000000000000000000000004F49D8008A80FF004C3FF1004D43
      EF003328E6000604A9001811DB000E0E82003030AA004242A3004341A9007859
      4C009C643900C4794500C6713B0062AE780000000000FFFFFF00000000000000
      0000FFFFFF008484840000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000008F1E1E00CC999900CC999900CC99
      9900CC999900CC999900CC999900CC999900CC999900CC999900CC999900CC99
      9900CC999900CC999900CC9999008F1E1E0000000000000000000000FF000000
      FF000000FF000000000000FFFF0000FFFF0000FFFF0000000000FF000000FF00
      0000FF000000000000000000000000000000150CB900493DE5005D5BD4009591
      EC00B9B7EB00D9D8EE00DBDAEA00BFBCC100BAB7B800B7B3B000B1ADAB00A59E
      95006A3E2300AF693700A05B30005EAA760000000000FFFFFF00000000000000
      0000848484000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D2E400EEEDF400DBD8D400D9D6
      D000CFCBC400ABA49900ABA59A00928B7D00948E8000918A7D008A827400857E
      6F007E6A58008F552C00AC6332004CB86B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008484840084848400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000805151008028280080282800805151000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7A7500928E870089857E00908C
      8600908C8600837E77008B8780007B776F007D78710079756D0075716800706C
      63006B675D00656A500048A86100639B310000000000FFFFFF00000000000000
      0000000000000000000000000000848484000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F8FD4000000FF008585
      D700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008F8FD4000000FF000000FF000000
      FF007B7BD9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7B7CD008383D9000000FF008383
      D900AFAFCF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002626260026262600262626002626
      2600262626002626260026262600262626002626260026262600262626002626
      2600262626002626260082828200000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      000040404000000000004040FF004040FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F363000A1786E00B98A7C00CA97
      7100CA977100CA977100CA977100A97E8700CA977100CA977100CA977100CA97
      7100C1907600B1848200694E3A0082807F004040400040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      40004040400040404000000000004040FF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A8A8002E2E940048368E00795A
      4300795A4300795A4300795A43001812D900795A4300795A4300795A4300795A
      4300604869003024B400795A430018120D004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      000040404000000000004040FF004040FF000000000007360700000000000000
      0000000000000000000000000000000000000000000000000000000000009B9B
      9B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007373D9004545AB007373
      73007373730073737300737373001717E3007373730073737300737373007373
      73005C5C8F002E2EC70073737300737373004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000000000000000F7000000310000E1A3
      6700FFFFD400FFFFD400FFFFD400FFFFD400835627005E33070000D400003116
      0000888888000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008F000000000000000000000000000000
      000000000000000000000000000000000000000000007373D9007373D9000000
      00000000000000000000000000002626F2000000000000000000000000000000
      00009999CC004C4CE50000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000000000000000F7000079CF79002F25
      1B00D2854200FFF59B00AD6A2C0000000000C6763300FFBC6C0000FF0000FFC8
      760011000000AFAFAF000000000000000000BEC00000BEC00000BEC00000BEC0
      0000BEC00000BEC0000000008F0000008F0000008F00BEC00000BEC00000BEC0
      0000BEC00000BEC00000BEC00000BEC00000000000007373D9007373D9000000
      00000000000000000000000000002626F2000000000000000000000000000000
      00009999CC004C4CE50000000000000000004040400040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      400040404000404040004040FF004040FF000000000000F7000083D783000000
      0000131313000000000000000000B2591600B2591600B259160000E60000B259
      1600B2591600000000008F8F8F00000000000000000000000000000000000000
      000000000000000000000000000000008F000000000000000000000000000000
      000000000000000000000000000000000000000000007373D9007373D9000000
      00000000000000000000000000002626F2000000000000000000000000000000
      00009999CC004C4CE50000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      00004040400000000000000000004040FF000000000000F7000083D783000000
      000000000000004700001616160016161600161616001616160000D400001616
      160016161600001D000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007373D9007373D9000000
      00000000000000000000000000002626F2000000000000000000000000000000
      00009999CC004C4CE50000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      000040404000000000004040FF004040FF0000FF000000FF000000FF000013F0
      13000000000000FF000000000000000000007BD97B0000FF000000FF000000FF
      000060DE600083D9830000F50000000000000000000000000000000000000000
      0000000000000000000000000000000042000000000000000000000000000000
      0000000000000000000000000000000000002626F2001717F7001717F7002626
      F200000000008282D4002626F2000707FC002626F2006363DE00000000004545
      E8001E1EF4000F0FF9002626F200A1A1CA004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      00004040400000000000000000000000000085D7850000FF000000FF00000000
      00000000000000FF000000000000000000000000000040E6400000FF00002AEB
      2A000000000083D9830000F50000000000000000000000000000000000000000
      0000000000000000000000004200000042000000420000000000000000000000
      000000000000000000000000000000000000A1A1CA001717F7001717F700A1A1
      CA0000000000000000006363DE000707FC004545E80000000000000000000000
      00001E1EF4000F0FF9008282D400000000004040400040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      40004040400040404000000000004040FF00000000007BD97B00AFCFAF000000
      00000000000000FF00000000000000000000000000000000000060DE60000000
      00000000000083D9830000F50000000000000000000000000000000000000000
      0000000000000000420000000000000042000000000000004200000000000000
      000000000000000000000000000000000000000000009191CF009191CF000000
      00000000000000000000000000006363DE000000000000000000000000000000
      0000A8A8C7007A7AD60000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      00004040400000000000000000004040FF00000000000000000000000000AFCF
      AF0083D7830000FF000083D78300B7CDB7000000000000000000000000000000
      00009BD29B0047E3470000FF000083D783000000000000000000000000000000
      0000000000000000000000000000000042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040400000000000000000000000
      0000404040000000000000000000000000004040400000000000000000000000
      00004040400000000000000000004040FF000000000000000000000000007BD9
      7B0000FF000000FF000000FF00008FD48F000000000000000000000000000000
      000040E6400000FF000000FF000000FF00000000000000000000000000000000
      0000000000000000000000000000000042000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000085D7850000FF00008FD48F00000000000000000000000000000000000000
      00000000000033E8330000FF0000ADCFAD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058585800585858007878
      7800A7A7A700ABABAB00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC0000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000B5B529000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005858580000000000373737002929
      29004E4E4E0037373700474747008888880096969600BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000B5B52900000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000686868006D6D6D007D7D7D008F8F
      8F00686868005A5A5A004A4A4A0066666600202020003C3C3C0092929200BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00000000000000000000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      000000000000B5B529000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000004343430043434300434343004343
      4300434343004343430043434300434343004343430043434300434343000000
      000000000000000000000000000000000000BCBCBC00B7B7B7008B8B8B004040
      400071717100B7B7B7008B8B8B00666666003737370000000000191919005F5F
      5F00BCBCBC00BCBCBC00BCBCBC00BCBCBC0000000000000000000000000000FF
      FF0000000000000000000000000000000000E7E7E70000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000B5B5290000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000004343
      4300434343000000000000000000434343004343430000000000434343004343
      430000000000434343000000000000000000434343006363630094949400B9B9
      B900B2B2B200686868007D7D7D00B0B0B000B2B2B20068686800585858003737
      3700373737008B8B8B00B7B7B700BCBCBC000000000000000000000000000000
      0000000000000000000000000000E7E7E700E7E7E700E7E7E700000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      2900000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000004343430000000000000000000000
      0000434343000000000000000000000000004343430000000000000000004343
      430000000000000000004343430000000000BCBCBC00AEAEAE00616161006161
      61006D6D6D009B9B9B00A7A7A7004E4E4E006D6D6D00AEAEAE008B8B8B003C3C
      3C006A6A6A002020200071717100A4A4A4000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7000000
      0000000000000000000000000000000000000000000000000000B5B529000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000004343430000000000000000000000
      0000434343000000000000000000000000004343430000000000000000004343
      430000000000000000000000000000000000BCBCBC00BCBCBC00BCBCBC00BCBC
      BC0092929200636363000000000074747400515151004C4C4C007F7F7F00A9A9
      A90061616100404040003C3C3C005C5C5C000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E7000000000000000000000000000000000000000000B5B52900000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000FF0000000000000000004343430000000000000000000000
      0000434343000000000000000000000000004343430000000000000000004343
      4300000000000000000000000000000000006868680068686800686868006868
      6800686868006868680061616100000000002727270010101000060606003A3A
      3A0066666600333333003C3C3C002E2E2E000000000000000000000000000000
      000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E70000000000000000000000000000000000B5B5290000000000000000000000
      0000000000000000000084848400848484008484840000000000000000000000
      000000000000000000000000FF00000000004343430000000000000000000000
      0000434343000000000000000000000000004343430000000000000000004343
      430000000000000000004343430000000000BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00B0B0B0009494940063636300434343005C5C5C002020200030303000B2B2
      B2007B7B7B0076767600474747003939390000FFFF0000FFFF00000000000000
      0000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E7000000000000FFFF0000FFFF000000FF0000000000000000000000
      0000000000000000000000000000848484000000000000000000000000000000
      0000000000000000FF0000000000000000004343430000000000000000000000
      0000434343004343430000000000000000004343430000000000000000004343
      430000000000000000000000000000000000BCBCBC00BCBCBC009B9B9B006D6D
      6D004E4E4E007D7D7D00AEAEAE00717171004E4E4E008B8B8B00AEAEAE006D6D
      6D00474747005F5F5F0035353500969696000000000000000000000000000000
      0000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000043434300000000007D7D7D006F6F6F00636363009292
      9200BCBCBC00929292006D6D6D008D8D8D00BCBCBC007F7F7F004C4C4C005151
      51001B1B1B006A6A6A00B2B2B200BCBCBC000000000000000000000000000000
      00000000000000000000E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E70000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000434343000000
      0000000000000000000043434300434343000000000000000000434343004343
      43004343430043434300000000000000000081818100B5B5B500BCBCBC007171
      71006868680092929200B7B7B70096969600434343005A5A5A00474747002727
      270081818100B5B5B500BCBCBC00BCBCBC000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700E7E7E700E7E7E700E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      4300434343004343430000000000434343009D9D9D0061616100434343008D8D
      8D00A7A7A700747474003C3C3C00787878004A4A4A000D0D0D0055555500B2B2
      B200BCBCBC00BCBCBC00BCBCBC00BCBCBC0000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000666666007D7D7D005F5F5F005555
      55002E2E2E002929290037373700292929007D7D7D00A7A7A700BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00000000000000000000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B001B1B1B00222222005555
      55004747470092929200A0A0A000BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A7A7A700A7A7A700AEAEAE00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBCBC00BCBC
      BC00BCBCBC00BCBCBC00BCBCBC00BCBCBC0000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000929292004B4B4B004E4E
      4E00292929001F1F1F005858580017171700000000001A1A1A00313131000000
      000036363600222222005F5F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F3D2F006864
      4C00989370008E89680099947100000000000000000050505000909090006666
      6600555555009D9D9D00454545007E7E7E00151515002F2F2F006C6C6C008888
      8800292929008F8F8F00434343008B8B8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5944007D79
      5B008E8968007D795B005C5944000000000000000000555555009A9A9A004D4D
      4D00A9A9A9007E7E7E002F2F2F000404040000000000404040002A2A2A00A1A1
      A1007D7D7D0052525200959595005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000079755900928D
      6A009C977400928D6A007975590000000000000000005D5D5D007B7B7B006C6C
      6C000000000000000000000000002E2E2E000000000000000000000000000000
      00004545450041414100A1A1A1005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000079755900928D
      6A009C977400928D6A007975590000000000000000005D5D5D00737373002929
      29001717170029292900222222002F2F2F000000000000000000252525002222
      22002F2F2F0012121200A1A1A1005A5A5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F3D2F006864
      4C007D795B0068644C003F3D2F000000000000000000181818000B0B0B008888
      8800000000005D5D5D0052525200676767001B1B1B00040404005A5A5A008A8A
      8A00000000002929290018181800535353000000000000008F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008F000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090907000000
      000000000000000000000C0C0A0000000000A6A6A6001D1D1D007B7B7B009090
      9000000000005D5D5D00585858003636360000000000010101005C5C5C008A8A
      8A00000000004D4D4D009C9C9C0025252500000000000000000000008F000000
      00000000000000000000000000004242FF000000000000000000000000000000
      000000008F00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E00747474007B7B7B009090
      9000000000005D5D5D00A4A4A400171717000000000041414100717171008A8A
      8A00000000004D4D4D00A7A7A7000000000000008F0000008F0000008F000000
      8F00BEC00000BEC000004242FF004242FF004242FF00BEC00000BEC000000000
      8F0000008F0000008F0000008F00BEC00000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A48600A09B
      7A00A09B7A00A09B7A00A8A48600000000002E2E2E0013131300222222009090
      9000000000005D5D5D00000000008383830000000000A7A7A700717171008A8A
      8A00000000003B3B3B002222220000000000000000000000000000008F000000
      00000000000000000000000000004242FF000000000000000000000000000000
      000000008F00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E00838383001B1B1B001818
      1800252525000000000083838300000000001B1B1B00000000002A2A2A000000
      0000252525000E0E0E003B3B3B001B1B1B000000000000008F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000008F000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E00434343008F8F8F00A1A1
      A1002F2F2F006E6E6E0029292900030303000000000000000000737373002A2A
      2A005A5A5A00ABABAB003C3C3C00222222000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00000000000000
      0000000000000000000000000000000000009595950018181800A9A9A9007B7B
      7B00808080008888880040404000A1A1A1001B1B1B00666666003E3E3E009C9C
      9C00535353009F9F9F00888888002E2E2E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000005A5A5A005A5A5A008080
      8000808080008080800080808000808080008080800080808000000000000000
      000000000000000000000000000000000000000000004D4D4D00585858005757
      570099999900434343009C9C9C00646464000000000092929200646464004A4A
      4A00929292002F2F2F00454545008D8D8D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000005A5A5A0080808000000000000000
      0000000000000000000000000000000000000000000080808000000080000000
      80000000800000008000000080000000000000000000000000003B3B3B006E6E
      6E00585858006A6A6A005252520055555500000000002F2F2F00585858003636
      360079797900272727008A8A8A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000080000000
      8000000080000000800000008000000080000000000000000000000000003B3B
      3B00000000002F2F2F0095959500000000001B1B1B00000000004A4A4A001010
      1000000000008A8A8A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000959595002C2C2C001B1B1B001B1B1B00000000001B1B1B00222222005050
      5000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040100005555550044444400555555001111
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C300DEDEDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004010000FF999900FFCCCC00FFE1E10044444400444444005555
      550011111100000000000000000000000000000000009C9C00009C9C00009C9C
      00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C
      00009C9C00009C9C00009C9C00009C9C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000056565B00CFCFCF000000
      00000000000080808000CFCFCF00000000000000000000000000000000000000
      000022222200FFCCCC00FFCCCC00FFCCCC00FFE1E100FF999900444444004444
      440055555500111111000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C00000000000000000000000000005553
      6100423E53003B37500034304C002C2747003B374F0087878700C1C1C1000000
      000000000000E8E9E800E2E9E200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAC7D80056565B000000
      000000000000000000002A264000DEDEDE000000000000000000000000000000
      0000FF999900FFCCCC00FFCCCC00FFCCCC00FFE1E100FF999900FF9999003333
      330055555500555555001111110000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C00000000000064636B0078748900A39D
      C3009E96C7008D84BE007D72B4006B5EAA00584D90003B3461004B485B005555
      550056585600608160006ECF6E0067A967000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFCFF003B3A42000000
      0000000000000000150036268300050213000000000000000000000000000401
      0000FFCCCC00FFCCCC00FFCCCC00FFCCCC00FFE1E100FF999900FF9999003333
      330055555500444444001111110000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C0000000000004E4C5800BEB8DA00B1AA
      D3009E96C7008D84BE007D72B5006B5EAA005E529A005E529A005A509400605C
      91005997730041D546003EF33F002EB82E000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFCFF003B3A42000000
      0000000000000000150047369F00000000000000000000000000000000002222
      2200FFCCCC00FFCCCC00FFCCCC006699660066996600FF999900FF999900FF99
      990004010000000000000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C0000000000004E4C5800BEB8DA00B1AA
      D3009E96C7008D84BE007D72B5006B5EAA005E529A005D5897005D77900055BE
      6E0043F845004AF34E006CD97B001E3D22000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFCFF003B3A42000000
      0000000000000000150047369F0000000000000000000000000000000000FF99
      9900FFCCCC0066996600FF999900222222001111110044444400FF999900FF99
      990022222200000000000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500FFFFFF00A5A5A500A5A5A5004040FF00A5A5A500A5A5A500FFFF
      FF00A5A5A500A5A5A500A5A5A5009C9C0000000000004E4C5800BEB8DA00B1AA
      D3009E96C7008D84BE007D72B5006B5EAA005C6192005296760048D7560041F8
      430053DF5F0079BA9400A1A9C300222129000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFCFF003B3A42000000
      0000000000000000150047369F00000000000000000000000000040100006699
      660044444400111111001111110063636300A5A5A5003333330022222200FF99
      990033333300000000000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500FFFFFF00A5A5A5004040FF00A5A5A500FFFFFF00A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C0000000000004E4C5800BEB8DA00B1AA
      D3009E96C7008D84BE007D73B40065779A004BBD620042EE480043F1480055C4
      6D007D96A7009794C100A9A2CE0023212A000000000000000000000000000000
      00000000000000000000000000003030300000000000FFFCFF003B3A42000000
      0000000000000000150047369F00000000000000000000000000222222003333
      33001111110055555500A5A5A5009C9C9C009C9C9C00A5A5A500333333003333
      330044444400040100000000000000000000000000009C9C0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF009C9C0000000000004E4C5800BEB8DA00B1AA
      D3009D96C600878EB50067A9890049E0550041F5440047D75400589382007173
      A8008980BC009991C400A9A2CE0023212A00C3C3C30000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFCFF003B3A42000000
      000094949800090037004A38A300000000000000000004010000111111005555
      5500A5A5A5006363630011111100636363009C9C9C0073737300A5A5A5003333
      330033333300040100000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500FFFFFF00A5A5A5004040FF00A5A5A500FFFFFF00A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C0000000000004E4C5800BEB8DA00AEAC
      CF0088AFA7005ED36F0044F5480044ED4A004EAE6A005A6B8D006459A4007468
      B0008980BC009991C400A9A2CE0023212A00DEDEDE0056565B00CAC7D800FFFC
      FF00FFFCFF00FFFCFF00FFFCFF00FFFCFF00FFFCFF00CAC7D80007070B000000
      0000000000006352B6005442AD00000000000000000004010000A5A5A5006363
      6300040100000401000011111100636363009C9C9C007373730073737300A5A5
      A50033333300111111000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500FFFFFF00A5A5A500A5A5A5004040FF00A5A5A500A5A5A500FFFF
      FF00A5A5A500A5A5A500A5A5A5009C9C0000000000004D4C5700B2BFCC0085CC
      9A0051EC590044F747004ED95D005A9783005D5B95005E529A006458A4007468
      B0008980BC009991C400A9A2CE0023212A0000000000CFCFCF0056565B003B3A
      42003B3A42003B3A42003B3A42003B3A42003B3A420007070B00303030004B4B
      4B00473D73007465C000261C5B0065636C000000000000000000040100000401
      0000040100000401000011111100636363009C9C9C0073737300737373007373
      7300A5A5A500333333000401000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C0000000000003B61420071E47B004BF7
      4E0047F54A0061C67800718AA0006961A8005E529A005E529A006458A4007468
      B0008980BC009991C400A9A2CE0023212A000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B4B4B00605B
      8300958AD2008577CA0007012500C3C3C3000000000000000000000000000401
      0000040100000401000011111100636363009C9C9C0073737300737373007373
      730073737300737373000401000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C00000000000036D437003FF33F004DDC
      4D00366837002B312C002B2B2D002A292D00312E3D004F4581005E529A007468
      B000897FBC009890C400A9A2CE0023212A000000000000000000000000000000
      00000000000000000000000000000000000099999B000000000074708E00BEB4
      EB00A097D200403A5C009B9B9B00000000000000000000000000000000000000
      0000040100000401000011111100636363009C9C9C0073737300737373006363
      630022222200040100000000000000000000000000009C9C0000A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A5004040FF00A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A5009C9C00000000000077DC770073CD7300D0DE
      D00000000000000000000000000000000000CBCBCB0055555500494462004942
      6F0057507700615C7C006B66820016151A000000000080808000050409003736
      4000373640003736400037364000373640005C596700ECE6FF00DFD9FF00CFC8
      F5004E4A65008E8E8E0000000000000000000000000000000000000000000000
      0000000000000401000011111100636363009C9C9C0063636300222222000401
      000000000000000000000000000000000000000000009C9C00009C9C00009C9C
      00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C00009C9C
      00009C9C00009C9C00009C9C00009C9C00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD008686
      86008686860086868600868686008686860000000000CFCFCF0054545900CECA
      E100F5F0FF00F5F0FF00F5F0FF00F5F0FF00F5F0FF00F3EDFF007D7A8D002C29
      3A009B9B9B000000000000000000000000000000000000000000000000000000
      0000000000000000000004010000333333002222220004010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEDEDE002020
      250000000000000000000000000000000000000000000000000071717300C3C3
      C300000000000000000000000000000000000000000088A088003B8E3B003E8E
      3E00148414000A820A004991490000800000000059001F1FBB003434B8000000
      C0003939B7002626BA005E5EB200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF00000000000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      0000000000000000000000000000BF00000000000000408F400087A087005894
      58004690460095A39500328C3200729B720049494F003232B8006B6BB0008484
      AD002C2CB9008A8AAC004545B6008888AC000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000004242FF004242FF004242FF004242
      FF004242FF004242FF004242FF004242FF004242FF004242FF004242FF004242
      FF004242FF004242FF004242FF000000000000000000BF000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      00000000000000000000BF00000000000000000000004590450092A292003D8E
      3D00A2A6A200739B730037733700404040000A0A0A0061616B003131B0009C9C
      A9007A7AAE005252B4009090AB005959B3000000000000000000008400000084
      000000000000848484000084000000840000FFFFFF00C6C6C600C6C6C6000000
      0000008400000084000000000000000000004242FF0000000000000000000000
      000000000000000000000000000087882A000000000000000000000000000000
      000000000000000000004242FF00000000000000000000000000BF0000000000
      0000000000005672720026727200007272000000000000000000000000000000
      000000000000BF0000000000000000000000000000004E924E006F9A6F00688F
      6800393939000B1C0B0005100500595959002929290035353500000021001A1A
      220065656D004343B6009C9CA9005959B3000000000000000000008400000084
      000000000000848484000084000000840000FFFFFF00C6C6C600C6C6C6000000
      0000008400000084000000000000000000004242FF00000000004B4B4B000000
      000000000000000000000000000087882A000000000000000000000000000000
      00004B4B4B00000000004242FF00000000000000000000000000000000005671
      710088B4B400C0FFFF0056FFFF0000FFFF0000AAAA00005F5F00000000000000
      0000BF000000000000000000000000000000000000004E924E006F926F004A5F
      4A004B4B4B00396B390031693100416D41003939390008088B00414183004A4A
      66005A5A5A00303082009C9CA9005959B3000000000000000000008400000084
      000000000000C6C6C6008484840084848400C6C6C600C6C6C600C6C6C6000000
      0000008400000084000000000000000000004242FF0000000000000000004B4B
      4B00000000004B4B4B000000000087882A00000000004B4B4B00000000004B4B
      4B0000000000000000004242FF0000000000000000000000000058747400B9F6
      F600BFFDFD00B4ECEC0050E8E80000E4E40000FFFF0000F3F30000E3E3000032
      320000000000000000000000000000000000000000002A652A00345034008697
      8600000000004E924E00438F4300599559004E4E4E000B0BBE005959B3008686
      AC000000000042428600494954005959A7000000000000000000008400000084
      0000848400000000000000000000000000000000000000000000000000008484
      0000008400000084000000000000000000004242FF0000000000000000000000
      00004B4B4B004B4B4B000000000087882A00000000004B4B4B004B4B4B000000
      000000000000000000004242FF0000000000000000005D7B7B00C0FFFF00A8D9
      D90093B8B80051515100242424000000000000AAAA0000D0D00000FFFF0000FF
      FF0000C7C700005656000000000000000000A2A2A2004D524D006F9A6F0086A0
      8600000000004E924E0049914900238823001F1F55000808BE005B5BB2008686
      AC00000000004E4EB4009C9C9D00535359000000000000000000008400000084
      0000008400000084000000840000008400000084000000840000008400000084
      0000008400000084000000000000000000004242FF0000000000000000004B4B
      4B004B4B4B004B4B4B000000000087882A00000000004B4B4B004B4B4B004B4B
      4B0000000000000000004242FF000000000000000000C0FFFF00A5D5D500626B
      6B005151510051515100242424000000000000000000003333000072720000F0
      F00000FFFF0000FFFF0000A7A7000000000059595900729272006F9A6F0086A0
      8600000000004E924E009CA59C0000800000000059004343B6006F6FB0008686
      AC00000000004E4EB400A2A2A800292953000000000000000000008400008484
      0000000000000000000000000000000000000000000000000000000000000000
      0000848400000084000000000000000000004242FF0000000000000000000000
      000000000000000000000000000087882A000000000000000000000000000000
      000000000000000000004242FF000000000000000000ADE1E1005F6767005151
      510061615600D9D9760000000000000000000000000000000000000000000033
      3300007B7B0000FFFF0000FFFF000000000059595900494949003A643A0086A0
      8600000000004E924E0000000000789C780024245400A2A2A8006F6FB0008686
      AC00000000004343AA0052525200242424000000000000000000008400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084000000000000000000004242FF0087882A0087882A008788
      2A0087882A0087882A0087882A0087882A0087882A0087882A0087882A008788
      2A0087882A0087882A004242FF0000000000BF0000005151510063635600D2D2
      7400FFFF8000FFFF8000FFFF5D00FFFF4000FFFF4000A7A72A0039390F000000
      00000000000000000000009B9B00BF0000005959590081968100236D23004C4D
      4C004C5A4C00115011008D8D8D00000000004E4E4E00000000004C4C72002020
      6E00545454003D3D5C004040B1004E4E4E000000000000000000008400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084000000000000000000004242FF0000000000000000000000
      000000000000000000000000000087882A000000000000000000000000000000
      000000000000000000004242FF00000000000000000063635600CACA7200FFFF
      8000FCFC7A00E4E44800E4E43400E4E42400FFFF4000FFFF4000FFFF40008181
      21004C4C1300000000000000000000000000595959003B853B00859F850099A4
      9900297D2900738A73004761470034483400242424001A1A5500818189003A3A
      9D005D5DAB00A4A4A8004141B200525252000000000000000000008400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084000000000000000000004242FF0000000000000000004B4B
      4B004B4B4B004B4B4B000000000087882A00000000004B4B4B004B4B4B004B4B
      4B0000000000000000004242FF000000000000000000D2D27400FFFF8000E4E4
      4800D3D32600C0C00000C0C00000C0C00000D6D61600E8E82900FFFF4000FFFF
      4000E3E33900AAAA2B0026260A0000000000989898003E563E00A3A6A3006F9A
      6F00759B75007E9E7E002E8B2E0098A498004E4E4E006464B1004040B6009696
      AA005454B3009999AA008A8A9F00595959000000000000000000008400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084000000000000000000004242FF0000000000000000000000
      00004B4B4B004B4B4B000000000087882A00000000004B4B4B004B4B4B000000
      000000000000000000004242FF000000000000000000FEFE7D00E3E34600C3C3
      0500C0C00000C0C00000C0C00000C0C00000C0C00000C4C40400C8C80800F3F3
      3400FBFB3C00FFFF4000E9E93B0000000000000000006C6C6C00618061004791
      47008FA28F00318B310093A3930056945600141456008D8DAB006363B1004B4B
      B5008D8DAB003535B30067676700939393000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000004242FF0000000000000000004B4B
      4B00000000004B4B4B000000000087882A00000000004B4B4B00000000004B4B
      4B0000000000000000004242FF000000000000000000E1E14300C0C00000C0C0
      0000C0C00000C0C00000C0C00000C0C00000C0C00000C0C00000C0C00000C0C0
      0000CFCF0F00EAEA2B00FBFB3C00000000000000000000000000596759007886
      7800499149005C965C00418F410046904600343452003232B8005858B3003838
      B7007979A9004B4B6D0091919100000000000000000000000000008400000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000084000000000000000000004242FF00000000004B4B4B000000
      000000000000000000000000000087882A000000000000000000000000000000
      00004B4B4B00000000004242FF00000000000000000056560000565600005656
      0000565600005656000056560000565600005656000056560000565600005656
      000056560000565600006B6B1700000000000000000000000000000000005A67
      5A00164D1600238123008DA18D00000000004E4E4E00000000004C4CB0002626
      95001D1D5A009191910000000000000000000000000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400000000004242FF0000000000000000000000
      000000000000000000000000000087882A000000000000000000000000000000
      000000000000000000004242FF000000000000000000BF000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      00000000000000000000BF000000000000000000000000000000000000000000
      000098989800585858004E4E4E004E4E4E00242424004E4E4E00525252006E6E
      6E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242FF004242FF004242FF004242
      FF004242FF004242FF004242FF004242FF004242FF004242FF004242FF004242
      FF004242FF004242FF004242FF0000000000BF00000000000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      0000000000000000000000000000BF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E9CBA005E9CBA005E9C
      BA0076C3E90076C3E90067ABCD005E9CBA005E9CBA0067ABCD0076C3E90076C3
      E9005E9CBA005E9CBA005E9CBA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA0028282800656565001414
      140046758B0046758B001C2E370051515100515151001C2E370046758B004675
      8B001414140065656500282828005E9CBA000000000000000000000000000000
      00000000000000000000000000000000FF00000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      84000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA00666666000000FF003232
      320091828400918284003A3434000000FF000000FF003A343500918284009182
      8400333333000000FF00656565005E9CBA000000000000000000000000000000
      000000000000000000000000FF000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA0014141400333333000A0A
      0A00EBD4D900EBD4D9005E54570028282800282828005E545700EBD4D900EBD4
      D9000A0A0A0033333300141414005E9CBA000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000FFFF00000000000084
      8400008484000084840000848400008484000084840000848400008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000076C3E90046748B00857A7F00DFCB
      D400DFCBD400DFCBD400DFCBD4002C282A00DFCBD400DFCBD400DFCBD400DFCB
      D400DFCBD400857A7F0046758B0076C3E9000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      00000000FF0000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008484000084840000848400008484000084840000848400008484000084
      8400008484000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000076C3E90046748B007E737C00D3C0
      CF00D3C0CF00D3C0CF00D3C0CF002A262900D3C0CF00D3C0CF00D3C0CF00D3C0
      CF00D3C0CF007E737C0046758B0076C3E9000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000084840000848400008484000084840000848400008484000084
      8400008484000084840000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000067ABCD001C2E3700312D3100524B
      5100C7B8C900C7B8C90081778100100F1000524B510081778100C7B8C900C7B8
      C900524B5100312D30001C2E370067ABCD000000000000000000000000000000
      FF00000000008080800000000000000000000000000000000000000000008080
      8000000000000000FF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA00515151000000FF002828
      2800BCAEC400BCAEC4004B454E000000FF000000FF004B454E00BCAEC400BCAE
      C400282828000000FF00515151005E9CBA0000000000000000000000FF000000
      0000000000000000000080808000808080000000000000000000808080000000
      000000000000000000000000FF00000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA00515151000000FF002828
      2800211F2400211F24000D0C0E000000FF000000FF000D0C0E00211F2400211F
      2400282828000000FF00515151005E9CBA00000000000000FF00000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      00000000000000000000000000000000FF0000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000067ABCD001C2E370025232A003E3B
      4700A298B500A298B500666073000C0B0E003E3B470066607300A298B500A298
      B5003E3B470025232A001C2E370067ABCD000000FF0000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000FF00000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000076C3E90046748B005B5668009790
      AE009790AE009790AE009790AE001E1C22009790AE009790AE009790AE009790
      AE009790AE005B56680046758B0076C3E900000000000000FF000000FF000000
      0000000000000000000000000000000000008080800000000000808080008080
      800000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000076C3E90046748B00555064008D86
      A8008D86A8008D86A8008D86A8001C1A21008D86A8008D86A8008D86A8008D86
      A8008D86A8005550640046758B0076C3E9000000000000000000000000000000
      FF000000FF000000000000000000808080000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      840000008400000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA0014141400323232000A0A
      0A00837DA000837DA00034324000282828002828280034324000837DA000837D
      A0000A0A0A0032323200141414005E9CBA000000000000000000000000000000
      0000000000000000FF0080808000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000000084000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA00666666000000FF003232
      32004B475C004B475C001E1C24000000FF000000FF001E1C24004B475C004B47
      5C00333333000000FF00656565005E9CBA000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000005E9BBA0028282800666666001414
      140046748B0046748B001C2E370051515100515151001C2E370046748B004674
      8B001414140066666600282828005E9CBA000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E9BBA005E9BBA005E9B
      BA0076C3E90076C3E90067ABCD005E9BBA005E9BBA0067ABCD0076C3E90076C3
      E9005E9BBA005E9BBA005E9BBA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE7F000000000000
      FE7F000000000000FE7F000000000000F81F000000000000E007000000000000
      C003000000000000800100000000000080010000000000008001000000000000
      8001000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FE1FF81F0000FE07FC1F20070000E007
      FC1F00030000C007F81F000100008001F81F000100008000F80F000000008000
      F00F000000008000F00F000100008000F00F000000008000F00F000000000001
      F00F000000000007E00F00010000000FE00F80010000003FE00F8003000000FF
      E00FC007000007FFE00FF00F00003FFFFE3F800F800FFFE7FF7F8003800387C7
      FF7F800180018187FF7D800080008007FF59800080008003FF00800080008001
      FF59800080008001FF7D800080008001DF7F800180018001CD7F800380038001
      007F800F8000C001CD7F800F8000F001DF7F800F8000F801FF7F800F8006F821
      FF7F800F8007F879FE3F800F8003F8FFFFFFF00703FF0000FFFFF007FCFF0000
      E00FF007073F0000E00FF007F9DF0000E00F0007FEEF0000E00F0006FF6F0000
      E00F0006FFB70000E00F004E005B0000E00F004E006D0000F39F0044000D0000
      F39F004000160000F11FFCE000160000F01FFCE700F60000F83FFC47001A0000
      FFFFFC07F91A0000FFFFFE0FF81F0000FFFFFFFFF77FFFFFFFFF7FFFF23FFFFF
      007F07FFF41FC01F6A9F78FFF00FC01F15AFFF1FF007C01F6357FF8FF007C01F
      FC3BFFCFE003C01FFE3BFFF7C001C019FF35FFF78000C019FFCDFFF70001FF39
      FFDDFFF78001FF39FFE1FFFBE001FF11FFEDFFFBF801FF01FFEDFFFBFE01FF83
      FFC1FFF1FF81FFFFFFEFFFFBFFEDFFFFFFFFFFFFFFFFFFFF03FFFFC0FFE18001
      FCFFFF3FFFED8001073FFCE0FFED8001F9DFFB9FFFE18001FEEFF70FFFDD8001
      FF6FF607FFCD8001FFB7EC03FFB58001FFDBDB01FF7B8001FFEDB780FCBB8001
      FFEDB7C0E3D78001FFF66FE01DEF8001FFF66FF06E9F8001FFF66FF8007F8001
      FFFA5FFCFFFF8001FFFA5FFEFFFFFFFFFFFFFFFFFC00F80FC001FFFFFC00E003
      C0010001FC00C001C0010001FC008001C0010001E0008000C0010001E1000000
      D0010001E0000000C0010001E0070000C001000180070000C001000188070000
      C001000180070000C0010001801F0000D0010001801F8000C0010001A01FC001
      FFFF0001801FC003FFFFFFFFFFFFF0070000FF9FE00FFE7F0000FF0F9EF3FE7F
      0000F60760EDFE7F0000E203461DFC3F0000C1013A99F81F000080801C55E007
      000000406EED80030000002040498001000000103AB50000000000087C250000
      0000001C7ED900000000803E009900000000C07FFE6DC0030000E0FFFE01C003
      0000F1FFFEFFE0070000FBFFFEFFFFFF0000FFFF0000A63B7FFEFFFF0000801B
      78FE800300000008703E80030000961740068003000096834002800300000081
      4002800300000E18400280030000005B4002800300000080400280030000B8DB
      400280030000B1DB40028003000000007FFE80030000B1DB000080030000B0DB
      00008003000000000000FFFF0000B8DBFFFFFFFFFFFFFF8FFFFFFFFF7777FF07
      FFFFFFFF7777FF07FFFF00017774FFDFFFFF00000002FFDFFFFF00007774800F
      FFFF800077778007FEFF9EF37777800300009EF300009001FEFF9EF377769801
      FFFF9EF377740B01FEFF082077771B89FC7F0C7100029BD9FABF9EF37776E0F0
      FEFFFFFF7776E0F0FEFFFFFFFFFFF1F8FFFF80007EFEFEFFFFFF4000BEFDFD7F
      00070000DE3BFBBF00130040EE37F7DFE6490000FC1FEFEF776C0000F80FDFF7
      776E0200F007BEFB776C0100E0077C7D7769000000007EFB736B0000C003BFB7
      00010000F003DFCF1CC10000FC07EFCFC0000000EE0FF7B5FFE00000DEDBFB79
      FFFF0000BEFDFCF1FFFF00007EFEFFFFFFFFFFFFFF808001FFFFFFFFFF808000
      FFFFC007FF808000FFFFC007FF808000FFFFC007FF808000FFFFC007FF808808
      BFFBC007FF800808DEF7C007FF8008080000C007FF800A08DEF7C007FF800140
      BFFBC007FFFF0000FFFFC007E03F0000FFFFC00F803F8000FFFFC01F3F81C001
      FFFFC03F0000E143FFFFFFFFFFFFF00FFE0FFFFFFFFFFF3FF8078000FFFFFF19
      F0038000E019FF18F00180008000FF18E00180008000FF18E00780008000FF18
      E00780008000FF18C00780008000FE18C0038000800000108003800080000010
      8003800080008000C00180008000FFC0E00180008000FF01F00380008F008003
      F80F8000FFC08007FC3FFFFFFFFFC00F8001FFFFFFFF7EFE800080010001BEFD
      800080017EFDD8FB800080015EF5E037800080016AADC00F88088001729D8003
      08088001628D8001080880017EFD80010A08800100010000014080017EFD8001
      00008001628D800100008001729D8001800080016AAD8001C00180015EF58001
      E14380017EFDBEFDF00FFFFF00017EFEFFFFC0078001FF7FFFFFC0070000FEBF
      001FC0070000FDDF000FC0070000FBEF0007C0070000F7F70003C0070000F7F7
      0001C0070000EBEB0000C0070000DCDD001FC0070000BF3E001FC00700007FBD
      001FC00700009F4D8FF1C0070000E6F3FFF9C0070000F9FBFF75C0070000FE77
      FF8FC0070000FF97FFFFC0078001FFEF00000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    Images = MenuImages
    Left = 84
    Top = 78
    object File1: TMenuItem
      Caption = 'File'
      object New3: TMenuItem
        Action = NewModel
      end
      object Mediumtelelens130mm1: TMenuItem
        Action = LoadFile
      end
      object Save2: TMenuItem
        Action = FileSave
      end
      object Save1: TMenuItem
        Action = FileSaveas
      end
      object Import1: TMenuItem
        Caption = 'Import'
        object Part2: TMenuItem
          Action = ImportPart
        end
        object Carlssonhulfile1: TMenuItem
          Action = ImportHullFile
        end
        object ImportOff1: TMenuItem
          Action = ImportFEF
        end
        object Surface1: TMenuItem
          Action = ImportSurface
        end
        object Chines1: TMenuItem
          Action = ImportChines
        end
        object Carenefile1: TMenuItem
          Action = ImportCarene
        end
        object VRML1: TMenuItem
          Action = ImportVRML
        end
        object PolyCad1: TMenuItem
          Action = ImportPolyCad
        end
        object N6: TMenuItem
          Caption = '-'
        end
        object ImportMichletWaves1: TMenuItem
          Action = ImportMichletWaves
        end
      end
      object Export1: TMenuItem
        Caption = 'Export'
        object Part1: TMenuItem
          Action = ExportPart
        end
        object IGES1: TMenuItem
          Action = ExportIGES
        end
        object DXF3Dfaces1: TMenuItem
          Action = ExportDXFFaces
        end
        object DXF2DPolylines1: TMenuItem
          Action = ExportDXF2DPolylines
        end
        object ExportDXFPolylines1: TMenuItem
          Action = ExportDXF3DPolylines
        end
        object WavefrontfileObj1: TMenuItem
          Action = ExportObj
        end
        object STL1: TMenuItem
          Action = ExportSTL
        end
        object ExportFEFfile1: TMenuItem
          Action = ExportFEF
        end
        object Offsets1: TMenuItem
          Action = ExportOffsets
        end
        object Coordinates1: TMenuItem
          Action = ExportCoordinates
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object MichletCFD1: TMenuItem
          Action = ExportMichlet
        end
        object ArchimedesMB1: TMenuItem
          Action = ExportArchimedes
        end
        object GHS1: TMenuItem
          Action = ExportGHS
        end
      end
      object ExitProgram1: TMenuItem
        Action = ExitProgram
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Preferences1: TMenuItem
        Action = Preferences
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Recentfiles: TMenuItem
        Caption = 'Recent files'
      end
    end
    object Project1: TMenuItem
      Caption = 'Project'
      object Projectsettings1: TMenuItem
        Action = EditProjectSettings
      end
      object Linesplan1: TMenuItem
        Action = ShowLinesplan
      end
    end
    object Edit1: TMenuItem
      Caption = 'Edit'
      object Undo1: TMenuItem
        Action = Undo
      end
      object Archimedes1: TMenuItem
        Action = Redo
      end
      object Delete1: TMenuItem
        Action = Delete
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object Undohistory1: TMenuItem
        Caption = 'Undo history'
        object Clear1: TMenuItem
          Action = ClearUndo
        end
        object Show1: TMenuItem
          Action = ShowUndoHistory
        end
      end
    end
    object Point1: TMenuItem
      Caption = 'Point'
      object Add1: TMenuItem
        Action = AddPoint
      end
      object Projectline1: TMenuItem
        Action = PointAlign
      end
      object PointCollapse1: TMenuItem
        Action = PointCollapse
      end
      object InsertPlane1: TMenuItem
        Action = InsertPlane
      end
      object Saveas1: TMenuItem
        Action = LayerIntersection
      end
      object PointsLock1: TMenuItem
        Action = PointsLock
      end
      object Unlockpoints1: TMenuItem
        Action = PointsUnlock
      end
      object Unlockallpoints1: TMenuItem
        Action = PointsUnlockAll
      end
    end
    object Edge1: TMenuItem
      Caption = 'Edge'
      object Extrude1: TMenuItem
        Action = EdgeExtrude
      end
      object Split1: TMenuItem
        Action = EdgeSplit
      end
      object Collapse1: TMenuItem
        Action = EdgeCollapse
      end
      object New2: TMenuItem
        Action = NewEdge
      end
      object Crease1: TMenuItem
        Action = EdgeCrease
      end
    end
    object Curve1: TMenuItem
      Caption = 'Curve'
      object AddCurve1: TMenuItem
        Action = NewCurve
      end
    end
    object Face1: TMenuItem
      Caption = 'Face'
      object New4: TMenuItem
        Action = NewFace
      end
      object Invert1: TMenuItem
        Action = InvertFace
      end
    end
    object Bulkheads1: TMenuItem
      Caption = 'Bulkheads'
      object Addbulkhead1: TMenuItem
        Action = AddBulkhead
      end
      object Copy1: TMenuItem
        Action = CopyBulkhead
      end
      object Addelement1: TMenuItem
        Action = Addelement
      end
    end
    object Layer1: TMenuItem
      Caption = 'Layer'
      object Activelayercolor1: TMenuItem
        Action = ActiveLayerColor
      end
      object Autogroup1: TMenuItem
        Action = LayerAutoGroup
      end
      object New1: TMenuItem
        Action = NewLayer
      end
      object Deleteempty1: TMenuItem
        Action = DeleteEmptyLayers
      end
      object Deleteempty2: TMenuItem
        Action = LayerDialog
      end
    end
    object Visibility1: TMenuItem
      Caption = 'Visibility'
      object ShowControlNet1: TMenuItem
        Action = ShowControlNet
      end
      object Controlcurves1: TMenuItem
        Action = ShowControlCurves
      end
      object ShowInteriorEdges1: TMenuItem
        Action = ShowInteriorEdges
      end
      object Showbothsides1: TMenuItem
        Action = BothSides
      end
      object Analyzesurface2: TMenuItem
        Action = ShowGrid
      end
      object Stations1: TMenuItem
        Action = ShowStations
      end
      object Buttocks1: TMenuItem
        Action = ShowButtocks
      end
      object Waterlines1: TMenuItem
        Action = ShowWaterlines
      end
      object Diagonals1: TMenuItem
        Action = ShowDiagonals
      end
      object Hydrostaticdata1: TMenuItem
        Action = ShowHydrostatics
      end
      object Flowlines1: TMenuItem
        Action = ShowFlowlines
      end
      object Normals1: TMenuItem
        Action = ShowNormals
      end
      object Curvature1: TMenuItem
        Action = Showcurvature
      end
      object Markers1: TMenuItem
        Action = ShowMarkers
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object Decrcurvaturescale1: TMenuItem
        Action = DecreaseCurvatureScale
      end
      object Incrcurvaturescale1: TMenuItem
        Action = IncreaseCurvatureScale
      end
    end
    object Selection1: TMenuItem
      Caption = 'Selection'
      object Selectall1: TMenuItem
        Action = SelectAll
      end
      object Clearselection1: TMenuItem
        Action = DeselectAll
      end
    end
    object ools1: TMenuItem
      Caption = 'Tools'
      object Analyzesurface1: TMenuItem
        Action = CheckModel
      end
      object Removenegative1: TMenuItem
        Action = RemoveNegative
      end
      object Removeunusedpoints1: TMenuItem
        Action = RemoveUnusedPoints
      end
      object Developplates1: TMenuItem
        Action = DevelopLayers
      end
      object Deleteempty3: TMenuItem
        Action = KeelRudderWizard
      end
      object Markers2: TMenuItem
        Caption = 'Markers'
        object Import2: TMenuItem
          Action = ImportMarkers
        end
        object Deletemarkers1: TMenuItem
          Action = DeleteMarkers
        end
      end
      object AddCylinder1: TMenuItem
        Action = AddCylinder
      end
    end
    object ransform1: TMenuItem
      Caption = 'Transform'
      object Scale3D1: TMenuItem
        Action = ScaleModel
      end
      object Deselectall2: TMenuItem
        Action = MoveModel
      end
      object Rotatemodel1: TMenuItem
        Action = RotateModel
      end
      object MirrorFace1: TMenuItem
        Action = MirrorFace
      end
      object Lackenby1: TMenuItem
        Action = TransformLackenby
      end
    end
    object Calculations1: TMenuItem
      Caption = 'Calculations'
      object Intersections1: TMenuItem
        Action = IntersectionDialog
      end
      object Hydrostatics1: TMenuItem
        Action = DesignHydrostatics
      end
      object Hydrostatics2: TMenuItem
        Action = HydrostaticsDialog
      end
      object Crosscurves1: TMenuItem
        Action = CrossCurves
      end
      object Seakeeping1: TMenuItem
        Action = SeaKeeping
      end
      object Resistance1: TMenuItem
        Caption = 'Resistance'
        object Delftyachtseries1: TMenuItem
          Action = ResistanceDelft
        end
        object Kaper1: TMenuItem
          Action = ResistanceKaper
        end
      end
    end
    object Window1: TMenuItem
      Caption = 'Window'
      object NewWindow1: TMenuItem
        Action = NewWindow
      end
      object ile1: TMenuItem
        Action = TileWindow
      end
      object Cascade1: TMenuItem
        Action = CascadeWindow
      end
      object N1: TMenuItem
        Caption = '-'
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
  end
  object ColorDialog: TColorDialog
    Options = [cdFullOpen]
    Left = 114
    Top = 78
  end
end
