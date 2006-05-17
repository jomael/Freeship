{#############################################################################################}
{    This code is distributed as part of the FREE!ship project. FREE!ship is an               }
{    open source surface-modelling program based on subdivision surfaces and intended for     }
{    designing ships.                                                                         }
{                                                                                             }
{    Copyright © 2005, by Martijn van Engeland                                                }
{    e-mail                  : Info@FREEship.org                                              }
{    FREE!ship project page  : https://sourceforge.net/projects/freeship                      }
{    FREE!ship homepage      : www.FREEship.org                                               }
{                                                                                             }
{    This program is free software; you can redistribute it and/or modify it under            }
{    the terms of the GNU General Public License as published by the                          }
{    Free Software Foundation; either version 2 of the License, or (at your option)           }
{    any later version.                                                                       }
{                                                                                             }
{    This program is distributed in the hope that it will be useful, but WITHOUT ANY          }
{    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A          }
{    PARTICULAR PURPOSE. See the GNU General Public License for more details.                 }
{                                                                                             }
{    You should have received a copy of the GNU General Public License along with             }
{    this program; if not, write to the Free Software Foundation, Inc.,                       }
{    59 Temple Place, Suite 330, Boston, MA 02111-1307 USA                                    }
{                                                                                             }
{#############################################################################################}
unit FreeSeakeepingDlg;

interface

uses Windows,
     Messages,
     SysUtils,
     Variants,
     Classes,
     Graphics,
     Controls,
     Forms,
     Dialogs,
     Buttons,
     ExtCtrls,
     ComCtrls,
     FreeShipUnit,
     StdCtrls,
     FreeGeometry,
     ActnList,
     Fasterlist,
     FreeNumInput;

const OutputFile :array[0..4] of string = ('pdstrip.out','pressuretransfer','relativemotions','responsefunctions','sectionresults');

type TExecuteWaitEvent = procedure(const ProcessInfo: TProcessInformation;var ATerminate: Boolean) of object;
     TFreeSeakeepingDialog  = class(TForm)
                                    Panel1: TPanel;
                                    OKbutton: TSpeedButton;
                                    CancelButton: TSpeedButton;
                                    Panel2: TPanel;
                                    Panel3: TPanel;
                                    ActionList1: TActionList;
                                    SaveFile: TAction;
                                    PageControl1: TPageControl;
                                    TabSheet1: TTabSheet;
                                    Panel4: TPanel;
                                    Label3: TLabel;
                                    Label5: TLabel;
                                    _Label18: TLabel;
                                    _Label20: TLabel;
                                    Edit3: TFreeNumInput;
                                    Edit5: TFreeNumInput;
                                    TabSheet3: TTabSheet;
                                    Panel7: TPanel;
                                    Label6: TLabel;
                                    Label7: TLabel;
                                    _Label8: TLabel;
                                    _Label9: TLabel;
                                    Label10: TLabel;
                                    _Label11: TLabel;
                                    Label12: TLabel;
                                    _Label13: TLabel;
                                    Edit6: TFreeNumInput;
                                    Edit7: TFreeNumInput;
                                    Edit8: TFreeNumInput;
                                    Edit9: TFreeNumInput;
                                    TabSheet4: TTabSheet;
                                    Panel8: TPanel;
                                    Panel6: TPanel;
                                    ScrollBar1: TScrollBar;
                                    ScrollBar2: TScrollBar;
                                    Viewport: TFreeViewport;
                                    BtnExecute: TButton;
                                    BtnCancel: TButton;
                                    CheckBox1: TCheckBox;
                                    CheckBox2: TCheckBox;
                                    Label1: TLabel;
                                    Edit1: TFreeNumInput;
                                    GroupBox2: TGroupBox;
                                    AngleBox: TListBox;
                                    FreeNumInput5: TFreeNumInput;
                                    Button3: TButton;
                                    Button4: TButton;
    TabSheet2: TTabSheet;
    Memo: TMemo;
                                    procedure OKbuttonClick(Sender: TObject);
                                    procedure CancelButtonClick(Sender: TObject);
                                    procedure ViewportRequestExtents(Sender: TObject; var Min,Max: T3DCoordinate);
                                    procedure ViewportRedraw(Sender: TObject);
                                    procedure Edit3AfterSetValue(Sender: TObject);
                                    procedure Edit7AfterSetValue(Sender: TObject);
                                    procedure Edit5AfterSetValue(Sender: TObject);
                                    procedure Edit6AfterSetValue(Sender: TObject);
                                    procedure Edit9AfterSetValue(Sender: TObject);
                                    procedure FormResize(Sender: TObject);
                                    procedure BtnExecuteClick(Sender: TObject);
                                    procedure BtnCancelClick(Sender: TObject);
                                    procedure Button3Click(Sender: TObject);
                                    procedure Button4Click(Sender: TObject);
                                    procedure AngleBoxClick(Sender: TObject);
                                 private { Private declarations }
                                    FFreeship      : TFreeShip;
                                    FTerminate     : boolean;
                                    FOffsets       : TFasterList;
                                    procedure DoOnExecuteWait(const ProcessInfo: TProcessInformation;var ATerminate: Boolean);
                                    procedure FBuildOffsets;
                                    procedure FCleanUpOffsets;
                                    procedure FRemoveOutputFiles;
                                    procedure FCreateInputFile(strings:TStringList);
                                    procedure FCreateOffsetsFile(strings:TStringList);
                                    function FGetDraft:single;
                                    procedure FSetDraft(val:single);
                                    function FGetVolume:single;
                                    procedure FSetVolume(val:single);
                                    function FGetG:single;
                                    procedure FSetG(val:single);
                                    function FGetWaterDensity:single;
                                    procedure FSetWaterDensity(val:single);
                                    function FGetWaterViscosity:single;
                                    procedure FSetWaterViscosity(val:single);
                                    function FGetWaterDepth:single;
                                    procedure FSetWaterDepth(val:single);
                                 public { Public declarations }
                                    function Execute(Freeship:TFreeShip):Boolean;
                                    procedure CheckEncounterAngles(var Data:TFloatArray;var NData:Integer);
                                    procedure GetEncounterAngles(var Data:TFloatArray;var NData:Integer);
                                    procedure SetEncounterAngles(Data:TFloatArray;NData:Integer);
                                    property Draft                : single read FGetDraft write FSetDraft;
                                    property G                    : single read FGetG write FSetG;
                                    property Volume               : single read FGetVolume write FSetVolume;
                                    property WaterDensity         : single read FGetWaterDensity write FSetWaterDensity;
                                    property WaterDepth           : single read FGetWaterDepth write FSetWaterDepth;
                                    property WaterViscosity       : single read FGetWaterViscosity write FSetWaterViscosity;
                                 end;
var FreeSeakeepingDialog: TFreeSeakeepingDialog;

implementation

{$R *.dfm}

procedure TFreeSeakeepingDialog.DoOnExecuteWait(const ProcessInfo: TProcessInformation;
                                   var ATerminate: Boolean);
begin
  ATerminate := FTerminate;
  BtnExecute.Enabled:=FTerminate;
  Btncancel.Enabled:=not FTerminate;
  OKButton.Enabled:=FTerminate;
  CancelButton.Enabled:=FTerminate;
end;{TFreeSeakeepingDialog.DoOnExecuteWait}

procedure TFreeSeakeepingDialog.FCleanUpOffsets;
var I       : Integer;
    Spline  : TFreeSpline;
begin
   for I:=1 to FOffsets.Count do
   begin
      Spline:=FOffsets[I-1];
      Spline.Destroy;
   end;
   FOffsets.Clear;
end;{TFreeSeakeepingDialog.FCleanUpOffsets}

procedure TFreeSeakeepingDialog.FRemoveOutputFiles;
var I:Integer;

   procedure RemoveFile(Filename:AnsiString);
   var Path : AnsiString;
       F    : file;
   begin
      Path:=ExtractFilePath(FFreeship.Preferences.PDStripDirectory);
      Filename:=Path+Filename;
      if FileExists(Filename) then
      begin
         Assignfile(F,Filename);
         Erase(F);
      end;
   end;

begin
   for I:=0 to high(Outputfile) do
   begin
      RemoveFile(OutputFile[I]);
   end;
end;{TFreeSeakeepingDialog.FRemoveOutputFiles}

procedure TFreeSeakeepingDialog.FCreateInputFile(strings:TStringList);
var Str  : string;
    Min  : TFloatType;
    Data : TFloatArray;
    NData: Integer;
    I    : Integer;
begin
   Strings.Clear;
   Str:=IntToStr(Edit1.AsInteger)+#32+'t'+#32;
   if checkbox1.Checked then Str:=Str+'t' else str:=str+'f';
   Str:=Str+#32;
   if checkbox2.Checked then Str:=Str+'t' else str:=str+'f';
   Strings.Add(str);
   // project description
   Str:=FFreeship.ProjectSettings.ProjectName;
   if system.length(str)>80 then str:=copy(Str,1,80);
   strings.Add(str);
   // environmental variables
   Min:=FFreeship.FindLowestHydrostaticsPoint;
   Str:=FloatToStrF(G,ffFixed,7,3)+#32+
        FloatToStrF(WaterDensity,ffFixed,7,3)+#32+
        FloatToStrF(Min+Draft,ffFixed,7,4)+#32+
        FloatToStrF(-WaterDepth,ffFixed,7,2)+#32;
   if Edit1.AsInteger=0 then Str:=Str+FloatToStrF(999,ffFixed,7,1)
                        else Str:=Str+FloatToStrF(0.5*draft,ffFixed,7,3);
   strings.Add(str);
   // wave headings
   Self.GetEncounterAngles(Data,NData);
   Str:=IntToStr(NData);
   for I:=1 to NData do Str:=Str+#32+FloatToStrF(Data[I-1],ffFixed,7,0);
   Strings.add(Str);
   // offsets filename
   strings.add('geometry.inp');
   Strings.Add('');

   Strings.Add('f');
   Strings.Add('28.8    0.0 0.0 0.5    0.64 25.0 30.0   0.0 0.0 0.0');
   Strings.Add('');
   Strings.Add('0 0 0 0 0');
   Strings.Add('0 0 0 0 0');
   Strings.Add('0 0 0 0 0');
   Strings.Add('0 0 0 0   flow separation');
   Strings.Add('');
   Strings.Add('0.05 3.0       wave steepness; max wave height');
   Strings.Add('0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6');
   Strings.Add('0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6');
   Strings.Add('0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6');
   Strings.Add('0.8 0.6  0.8 0.6  0.8 0.6  0.8 0.6            Cy Cz');
   Strings.Add('');
   Strings.Add('0       fin');
   Strings.Add('');
   Strings.Add('2       sails');
   Strings.Add('15.0 53.13');
   Strings.Add('5.0 -1.0 3.0  -3.0 -1.0 0.5   0.0 -1.0 4.0   4.0 0.0');
   Strings.Add('0.0  0.0 8.0  -3.0  0.0 0.0   0.0  0.0 5.0   2.0 0.0');
   Strings.Add('');
   Strings.Add('0  forces depending on motions');
   Strings.Add('');
   Strings.Add('0.0 0.0 0.0 0.0 0.0 suspended weight');
   Strings.Add('');
   Strings.Add('0  motion points');
   Strings.Add('');
   Strings.Add('5');
   Strings.Add('9.0 13.5 18.0 24.0 36.0               wave length');
   Strings.Add('');
   Strings.Add('1');
   Strings.Add('0.0 t            1 speed');
   Strings.Add('');
   Strings.Add('0/');

end;{TFreeSeakeepingDialog.FCreateInputFile}

procedure TFreeSeakeepingDialog.FCreateOffsetsFile(strings:TStringList);
var Str        : string;
    I,J,K,N    : Integer;
    Dist       : TFloatType;
    WlHeight   : TFloatType;
    Spline     : TFreeSpline;
    Assembled  : TFasterList;
    Tmp        : TFasterList;
    ToDo       : TFasterList;
    Gaps       : array of integer;
    P          : T3DCoordinate;
begin
   Strings.Clear;
   Assembled:=TFasterList.Create;
   ToDo:=TFasterList.Create;
   ToDo.Assign(FOffsets);
   WlHeight:=FFreeship.FindLowestHydrostaticsPoint+draft;

   // sort stations from aft to front
   for I:=1 to ToDo.Count do
   begin
      Spline:=ToDo[I-1];
      Dist:=0.5*(Spline.Min.X+Spline.Max.X);
      for J:=I+1 to ToDo.Count do
      begin
         Spline:=ToDo[J-1];
         if 0.5*(Spline.Min.X+Spline.Max.X)<Dist then
         begin
            ToDo.Exchange(I-1,J-1);
            Dist:=0.5*(Spline.Min.X+Spline.Max.X);
         end;
      end;
   end;

   while ToDo.Count>0 do
   begin
      Tmp:=TFasterList.Create;
      Assembled.Add(Tmp);
      Spline:=ToDo[0];
      ToDo.Delete(0);
      Tmp.Add(Spline);
      Dist:=0.5*(Spline.Min.X+Spline.Max.X);
      J:=1;
      while J<=ToDo.Count do
      begin
         Spline:=ToDo[J-1];
         if abs(0.5*(Spline.Min.X+Spline.Max.X)-Dist)<1e-4 then
         begin
            Tmp.Add(Spline);
            ToDo.Delete(J-1);
         end else inc(J);
      end;

      // Sort from bootm to top if multiple splines are present
      for J:=1 to Tmp.Count do
      begin
         Spline:=Tmp[J-1];
         Dist:=0.5*(Spline.Min.Z+Spline.Max.Z);
         for K:=J+1 to Tmp.Count do
         begin
            Spline:=Tmp[K-1];
            if 0.5*(Spline.Min.Z+Spline.Max.Z)<Dist then
            begin
               Tmp.Exchange(J-1,K-1);
               Dist:=0.5*(Spline.Min.Z+Spline.Max.Z);
            end;
         end;
      end;
   end;

   // write data to file
   Str:=IntToStr(Assembled.Count)+#32+'t'+#32+FloatToStrF(WlHeight,ffFixed,7,4);
   Strings.Add(Str);
   for I:=1 to Assembled.Count do
   begin
     Tmp:=Assembled[I-1];
     N:=0;
     Dist:=0;

     setlength(gaps,Tmp.Count-1);
     for J:=1 to Tmp.Count do
     begin
        Spline:=tmp[J-1];

        if spline.Point[0].Z>Spline.Point[Spline.NumberOfPoints-1].Z then
        begin
           spline.InvertDirection;
        end;


        if J=1 then Dist:=0.5*(Spline.Min.X+Spline.Max.X);
        if J>=2 then Gaps[J-2]:=N;
        inc(N,Spline.NumberOfPoints);
     end;
     str:=Makelength(Dist,4,10)+#32+
          MakeLength(IntToStr(N),5)+#32+
          MakeLength(IntToStr(Tmp.Count-1),5);
     for J:=2 to Tmp.count do Str:=Str+#32+IntToStr(Gaps[J-2]);
     Strings.Add(Str);

     // write y-coordinates
     Str:='';
     N:=0;
     for J:=1 to Tmp.Count do
     begin
        Spline:=tmp[J-1];
        for K:=1 to spline.NumberOfPoints do
        begin
           P:=Spline.Point[K-1];
           Str:=Str+#32+MakeLength(P.Y,4,8);
           inc(N);
           if (N mod 10=0) or ((K=spline.NumberOfPoints) and (J=Tmp.count)) then
           begin
              strings.add(Str);
              Str:='';
           end;
        end;
     end;
     // write z-coordinates
     Str:='';
     N:=0;
     for J:=1 to Tmp.Count do
     begin
        Spline:=tmp[J-1];
        for K:=1 to spline.NumberOfPoints do
        begin
           P:=Spline.Point[K-1];

           if (K=spline.NumberOfPoints) and (J=Tmp.count) and (P.Z<WlHeight) then
           begin
              P.Z:=WlHeight;
           end;

           Str:=Str+#32+MakeLength(P.Z,4,8);
           inc(N);
           if (N mod 10=0) or ((K=spline.NumberOfPoints) and (J=Tmp.count)) then
           begin
              strings.add(Str);
              Str:='';
           end;
        end;
     end;

     Tmp.Destroy;
   end;

   ToDo.Destroy;
   Assembled.Destroy;
end;{TFreeSeakeepingDialog.FCreateOffsetsFile}

procedure TFreeSeakeepingDialog.FBuildOffsets;
var I,J,K,L   : Integer;
    Min,Max,P   : T3DCoordinate;
    First       : Boolean;
    WlHeight    : TFloatType;
    Layer       : TFreesubdivisionLayer;
    Ctrlface    : TFreeSubdivisionControlface;
    Face        : TFreeSubdivisionface;
    Station     : TFreeIntersection;
    Spline      : TFreeSpline;
    Copy        : TFreeSpline;
    Plane       : T3DPlane;
    Int         : TFreeIntersectionData;
    Hydrostat   : TFreeHydrostaticCalc;
    Params      : TFloatArray;
    NParams     : Integer;
    ValidHull   : Boolean;

begin
   if FFreeship=nil then exit;
   FCleanUpOffsets;

   // Determine lowest point of the hull
   WlHeight:=FFreeship.FindLowestHydrostaticsPoint+Draft;

   // Determine min/max underwatercoordinates
   First:=True;
   for I:=1 to FFreeship.Surface.NumberOfLayers do
   begin
      Layer:=FFreeship.Surface.Layer[I-1];
      if Layer.UseInHydrostatics then for J:=1 to Layer.Count do
      begin
         Ctrlface:=Layer.Items[J-1];
         for k:=1 to CtrlFace.ChildCount do
         begin
            face:=Ctrlface.Child[K-1];
            for L:=1 to face.NumberOfpoints do
            begin
               P:=Face.Point[L-1].Coordinate;
               if P.Z<=WlHeight then
               begin
                  if First then
                  begin
                     Min:=P;
                     Max:=P;
                     First:=False;
                  end else MinMax(P,Min,Max);
               end;
            end;
         end;
      end;
   end;

   Plane:=SetPlane(0.0,0.0,1.0,-WlHeight);
   ValidHull:=true;
   for I:=1 to FFreeship.NumberofStations do
   begin
      Station:=FFreeship.Station[I-1];
      if not Station.Build then Station.Rebuild;
      for J:=1 to Station.Count do
      begin
         Spline:=Station.Items[J-1];
         if Spline.Max.Z<=WlHeight then
         begin
            Copy:=TFreeSpline.Create;
            Copy.Assign(Spline);
            FOffsets.Add(Copy);
         end else if Spline.Min.Z<=wlHeight then
         begin
            if Spline.IntersectPlane(Plane,Int) then
            begin
               if (Int.NumberOfIntersections>1) and (ValidHull) then
               begin
                  MessageDlg('Invalid hull!',mtError,[mbOk],0);
                  ValidHull:=False;
               end;
               setlength(Params,Int.NumberOfIntersections+2);
               for K:=1 to Int.NumberOfIntersections do Params[K-1]:=int.Parameters[K-1];
               NParams:=Int.NumberOfIntersections+2;
               Params[NParams-2]:=0.0;
               Params[NParams-1]:=1.0;
               SortFloatArray(Params,NParams);
               for K:=2 to NParams do
               begin
                  if Spline.Value(0.5*(Params[K-2]+Params[K-1])).Z<=wlHeight then
                  begin
                     Copy:=TFreeSpline.Create;
                     FOffsets.Add(Copy);
                     Copy.Add(Spline.Value(Params[K-2]));
                     for L:=1 to Spline.NumberOfPoints do if (Spline.Parameter[L-1]>Params[K-2]) and (Spline.Parameter[L-1]<Params[K-1]) then
                     begin
                        Copy.Add(Spline.Point[L-1]);
                        Copy.Knuckle[Copy.NumberOfPoints-1]:=Spline.Knuckle[L-1];
                     end;

                     Copy.Add(Spline.Value(Params[K-1]));
                     
                  end;
               end;

            end;
         end;
      end;
   end;
   if not ValidHull then self.FCleanUpOffsets;


   Viewport.ZoomExtents;
   Hydrostat:=TFreeHydrostaticCalc.Create(FFreeship);
   Hydrostat.Draft:=Draft;
   Hydrostat.Calculate;
   Volume:=Hydrostat.Data.Volume;
   Hydrostat.Destroy;
end;{TFreeSeakeepingDialog.FBuildOffsets}

function TFreeSeakeepingDialog.FGetDraft:single;
begin
   Result:=Edit3.value;
end;{TFreeSeakeepingDialog.FGetDraft}

procedure TFreeSeakeepingDialog.FSetDraft(val:single);
begin
   if Val<0 then Val:=0;
   if Edit3.Value<>val then Edit3.Value:=val;
   FBuildOffsets;
end;{TFreeSeakeepingDialog.FSetDraft}

function TFreeSeakeepingDialog.FGetG:single;
begin
   Result:=Edit6.Value;
end;{TFreeSeakeepingDialog.FGetG}

procedure TFreeSeakeepingDialog.FSetG(val:single);
begin
   Edit6.Value:=val;
end;{TFreeSeakeepingDialog.FSetG}

function TFreeSeakeepingDialog.FGetWaterViscosity:single;
begin
   Result:=Edit8.Value;
end;{TFreeSeakeepingDialog.FGetWaterViscosity}

procedure TFreeSeakeepingDialog.FSetWaterViscosity(val:single);
begin
   Edit8.Value:=Val;
end;{TFreeSeakeepingDialog.FSetWaterViscosity}

function TFreeSeakeepingDialog.FGetWaterDensity:single;
begin
   Result:=Edit7.Value;
end;{TFreeSeakeepingDialog.FGetWaterDensity}

procedure TFreeSeakeepingDialog.FSetWaterDensity(val:single);
begin
   Edit7.Value:=Val;
   WaterViscosity:=FindWaterViscosity(WaterDensity,fuMetric);
end;{TFreeSeakeepingDialog.FSetWaterDensity}

function TFreeSeakeepingDialog.FGetVolume:single;
begin
   Result:=Edit5.Value;
end;{TFreeSeakeepingDialog.FGetVolume}

procedure TFreeSeakeepingDialog.FSetVolume(val:single);
begin
   Edit5.Value:=val;
end;{TFreeSeakeepingDialog.FSetVolume}

function TFreeSeakeepingDialog.FGetWaterDepth:single;
begin
   Result:=Edit9.Value;
end;{TFreeSeakeepingDialog.FGetWaterDepth}

procedure TFreeSeakeepingDialog.FSetWaterDepth(val:single);
begin
   Edit9.Value:=val;
end;{TFreeSeakeepingDialog.FSetWaterDepth}

function TFreeSeakeepingDialog.Execute(Freeship:TFreeShip):Boolean;
begin
   PageControl1.ActivePage:=Tabsheet1;
   FOffsets:=TFasterList.Create;
   btnCancel.Enabled:=False;
   ScrollBar1.Position:=Round(Viewport.Angle);
   ScrollBar2.Position:=Round(Viewport.Elevation);
   _Label18.Caption:=LengthStr(Freeship.ProjectSettings.ProjectUnits);
   _Label20.Caption:=VolStr(Freeship.ProjectSettings.ProjectUnits);
   FFreeship:=Freeship;

   Viewport.Color:=FFreeship.Preferences.ViewportColor;
   FBuildOffsets;
   ShowModal;
   Result:=ModalResult=mrOK;
   FCleanUpOffsets;
   FOffsets.Destroy;
end;{TFreeSeakeepingDialog.Execute}

procedure TFreeSeakeepingDialog.OKbuttonClick(Sender: TObject);
begin
   ModalResult:=mrOK;
end;{TFreeSeakeepingDialog.OKbuttonClick}

procedure TFreeSeakeepingDialog.CancelButtonClick(Sender: TObject);
begin
   ModalResult:=mrCancel;
end;{TFreeSeakeepingDialog.CancelButtonClick}

procedure TFreeSeakeepingDialog.ViewportRequestExtents(Sender: TObject;var Min, Max: T3DCoordinate);
var I       : Integer;
    First   : Boolean;
    Spline  : TFreeSpline;
begin
   if FFreeship=nil then exit;
   Min:=SetPoint(-1,-1,-1);
   Max:=SetPoint(1,1,1);
   First:=True;
   for I:=1 to FOffsets.Count do
   begin
      Spline:=FOffsets[I-1];
      if First then
      begin
         Min:=Spline.Min;
         Max:=Spline.Max;
         First:=False;
      end else Spline.Extents(Min,Max);
   end;
   if not first then Min.Y:=-Max.Y;
end;{TFreeSeakeepingDialog.ViewportRequestExtents}

procedure TFreeSeakeepingDialog.ViewportRedraw(Sender: TObject);
var I       : Integer;
    Spline  : TFreeSpline;

   procedure DrawSpline(Spline:TFreeSpline;mirror:boolean);
   var P       : T3DCoordinate;
       I,J     : integer;
       NParams : Integer;
       Params  : TFloatArray;
       Pts     : array of TPoint;
       Pt      : TPoint;
   begin
      NParams:=0;
      Setlength(Params,Spline.NumberOfPoints);
      // count number of knucklepoints
      if not Spline.Build then Spline.Rebuild;
      for I:=2 to Spline.NumberOfPoints-1 do
      begin
         if Spline.Knuckle[I-1] then
         begin
            Params[NParams]:=Spline.Parameter[I-1];
            inc(NParams);
         end;
      end;
      Setlength(Params,NParams+Spline.Fragments);
      for I:=1 to Spline.Fragments do
      begin
         Params[NParams]:=(I-1)/(Spline.Fragments-1);
         inc(NParams);
      end;
      SortFloatArray(Params,NParams);
      Setlength(Pts,NParams);
      for J:=1 to NParams do
      begin
         P:=Spline.Value(Params[J-1]);
         if mirror then P.Y:=-P.Y;
         Pts[J-1]:=Viewport.Project(P);
      end;
      Viewport.PenWidth:=1;
      Viewport.PenColor:=spline.Color;
      Viewport.DrawingCanvas.Polyline(Pts);

      Viewport.PenWidth:=1;
      Viewport.PenColor:=clred;
      for J:=1 to Spline.NumberOfPoints do
      begin
         P:=Spline.Point[J-1];
         if mirror then P.Y:=-P.Y;
         Pt:=Viewport.Project(P);
         Viewport.DrawingCanvas.Ellipse(Pt.X-1,pt.Y-1,Pt.X+2,Pt.Y+2);
      end;
   end;{DrawSpline}

begin
   if FFreeship=nil then exit;
   for I:=1 to FOffsets.Count do
   begin
      Spline:=FOffsets[I-1];
      Spline.Color:=FFreeship.Preferences.StationColor;
      Spline.Fragments:=200;
      DrawSpline(Spline,False);
      DrawSpline(Spline,True);
   end;
end;{TFreeSeakeepingDialog.ViewportRedraw}

procedure TFreeSeakeepingDialog.Edit3AfterSetValue(Sender: TObject);
begin
   Draft:=Edit3.Value;
end;{TFreeSeakeepingDialog.Edit3AfterSetValue}

procedure TFreeSeakeepingDialog.Edit7AfterSetValue(Sender: TObject);
begin
   WaterDensity:=Edit7.value;
end;{TFreeSeakeepingDialog.Edit7AfterSetValue}

procedure TFreeSeakeepingDialog.Edit5AfterSetValue(Sender: TObject);
begin
   Volume:=Edit5.Value;
end;{TFreeSeakeepingDialog.Edit5AfterSetValue}

procedure TFreeSeakeepingDialog.Edit6AfterSetValue(Sender: TObject);
begin
   G:=Edit6.Value;
end;{TFreeSeakeepingDialog.Edit6AfterSetValue}

procedure TFreeSeakeepingDialog.Edit9AfterSetValue(Sender: TObject);
begin
   WaterDepth:=Edit9.Value;
end;{TFreeSeakeepingDialog.Edit9AfterSetValue}

procedure TFreeSeakeepingDialog.FormResize(Sender: TObject);
begin
   OKButton.Left:=Panel1.Clientwidth-CancelButton.Width-OkButton.Width-5;
   CancelButton.Left:=Panel1.Clientwidth-CancelButton.Width-5;
end;{TFreeSeakeepingDialog.FormResize}

procedure ExecuteFile(const AFilename: AnsiString;
                 AParameter, ACurrentDir: AnsiString; AWait: Boolean;
                 AOnWaitProc: TExecuteWaitEvent=nil);
var si         : TStartupInfo;
    pi         : TProcessInformation;
    bTerminate : Boolean;
    Cursor     : TCursor;
begin
   bTerminate := False;
   if Length(ACurrentDir) = 0 then ACurrentDir:=ExtractFilePath(AFilename);
   if AnsiLastChar(ACurrentDir) = '\' then Delete(ACurrentDir, Length(ACurrentDir), 1);
   FillChar(si, SizeOf(si), 0);
   with si do begin
      cb := SizeOf(si);
      dwFlags := STARTF_USESHOWWINDOW;
      wShowWindow := SW_HIDE;//SW_NORMAL;
   end;
   FillChar(pi, SizeOf(pi), 0);
   AParameter := Format('"%s" %s', [AFilename, TrimRight(AParameter)]);
   Cursor:=Screen.Cursor;
   Screen.Cursor:=crHourglass;
   if CreateProcess(Nil, PAnsiChar(AParameter), Nil, Nil, False,
                    CREATE_DEFAULT_ERROR_MODE or CREATE_NEW_CONSOLE or
                    NORMAL_PRIORITY_CLASS, Nil, PChar(ACurrentDir), si, pi) then
   try

      if AWait then
      begin
         while WaitForSingleObject(pi.hProcess, 50) <> Wait_Object_0 do
         begin
            if Assigned(AOnWaitProc) then
            begin
               AOnWaitProc(pi, bTerminate);
               if bTerminate then TerminateProcess(pi.hProcess, Cardinal(-1));
            end;
            Application.ProcessMessages;
         end;
      end;
   finally
      CloseHandle(pi.hProcess);
      CloseHandle(pi.hThread);
      Screen.Cursor:=Cursor;
   end;
end;{ExecuteFile}

procedure TFreeSeakeepingDialog.BtnExecuteClick(Sender: TObject);
var ApplicationPath  : AnsiString;
    InputFile        : AnsiString;
    OutputFile       : AnsiString;
    OffsetsFile      : AnsiString;
    InputData        : TStringList;
    OffsetsData      : TStringList;
begin
   // test if PDstrip is available
   ApplicationPath:=FFreeship.Preferences.PDStripDirectory+'pdstrip.exe';
   Inputfile:=FFreeship.Preferences.PDStripDirectory+'pdstrip.inp';
   Outputfile:=FFreeship.Preferences.PDStripDirectory+'pdstrip.out';
   OffsetsFile:=FFreeship.Preferences.PDStripDirectory+'geometry.inp';
   OffsetsData:=TStringList.Create;
   InputData:=TStringList.Create;
   FCreateInputFile(InputData);
   FCreateOffsetsFile(OffsetsData);
   InputData.SaveToFile(InputFile);
   OffsetsData.SaveToFile(OffsetsFile);
   InputData.Destroy;
   OffsetsData.Destroy;
   FRemoveOutputFiles;

   FTerminate := False;
   Memo.Clear;
   ExecuteFile(ApplicationPath,Inputfile, '', True, DoOnExecuteWait);
   if FileExists(Outputfile) then Memo.Lines.LoadFromFile(Outputfile);
   BtnExecute.Enabled:=True;
   Btncancel.Enabled:=False;
   OKButton.Enabled:=True;
   CancelButton.Enabled:=True;

end;{TFreeSeakeepingDialog.BtnExecuteClick}

procedure TFreeSeakeepingDialog.BtnCancelClick(Sender: TObject);
begin
   if Messagedlg('Are you sure you want to abort the calculation?',mtWarning,[mbYes,mbNo],0)=mrYes then
   begin
      FTerminate := True;
      Application.ProcessMessages;
   end;
end;{TFreeSeakeepingDialog.BtnCancelClick}

procedure TFreeSeakeepingDialog.CheckEncounterAngles(var Data:TFloatArray;var NData:Integer);
begin
   SortFloatArray(Data,NData);
   if NData=0 then
   begin
      Setlength(Data,NData+1);
      Data[NData]:=0.0;
      inc(NData);
   end;
end;{TFreeSeakeepingDialog.CheckEncounterAngles}

procedure TFreeSeakeepingDialog.GetEncounterAngles(var Data:TFloatArray;var NData:Integer);
var I:Integer;
begin
   Setlength(Data,AngleBox.Items.Count);
   NData:=AngleBox.Items.Count;
   for I:=1 to NData do Data[I-1]:=StrToFloat(AngleBox.Items[I-1]);
   CheckEncounterAngles(Data,NData);
end;{TFreeSeakeepingDialog.GetEncounterAngles}

procedure TFreeSeakeepingDialog.SetEncounterAngles(Data:TFloatArray;NData:Integer);
var I : Integer;
begin
   CheckEncounterAngles(Data,NData);
   AngleBox.Items.BeginUpdate;
   AngleBox.Clear;
   try
      for I:=1 to NData do AngleBox.Items.Add(FloatToStrF(Data[I-1],ffFixed,7,0));
   finally
      AngleBox.Items.EndUpdate;
   end;
end;{TFreeSeakeepingDialog.SetEncounterAngles}

procedure TFreeSeakeepingDialog.Button3Click(Sender: TObject);
var Data    : TFloatArray;
    NData   : Integer;
begin
   GetEncounterAngles(Data,NData);
   setlength(Data,NData+1);
   Data[NData]:=FreeNumInput5.Value;
   inc(NData);
   SetEncounterAngles(Data,NData);
   Button4.Enabled:=AngleBox.ItemIndex<>-1;
   FreeNumInput5.SetFocus;
end;{TFreeSeakeepingDialog.Button3Click}

procedure TFreeSeakeepingDialog.Button4Click(Sender: TObject);
var Index:Integer;
begin
   Index:=AngleBox.ItemIndex;
   if (Index<>-1) and (AngleBox.Count>0) then
   begin
      AngleBox.Items.Delete(Index);
      if Index>AngleBox.Count-1 then Index:=AngleBox.Count-1;
      AngleBox.ItemIndex:=Index;
      Button4.Enabled:=AngleBox.ItemIndex<>-1;
   end;
end;{TFreeSeakeepingDialog.Button4Click}

procedure TFreeSeakeepingDialog.AngleBoxClick(Sender: TObject);
begin
   Button4.Enabled:=AngleBox.ItemIndex<>-1;
end;{TFreeSeakeepingDialog.AngleBoxClick}

end.
