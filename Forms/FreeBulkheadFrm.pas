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

unit FreeBulkheadFrm;

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
     FreeGeometry,
     FreeNumInput,
     FreeShipunit,
     FreeLanguageSupport,
     StdCtrls;

type TFreeBulkheadForm   = class(TForm)
                                 Label1: TLabel;
                                 Edit1: TEdit;
                                 Label2: TLabel;
                                 DistBox: TFreeNumInput;
                                 Elements: TListBox;
                                 Label3: TLabel;
                                 Edit2: TEdit;
                                 Label4: TLabel;
                                 Edit3: TEdit;
                                 Label5: TLabel;
                                 Edit4: TEdit;
                                 Label6: TLabel;
                                 Edit5: TEdit;
                                 CheckBox1: TCheckBox;
                                 procedure DistBoxAfterSetValue(Sender: TObject);
                                 procedure ElementsClick(Sender: TObject);
                                 procedure CheckBox1Click(Sender: TObject);
                                 procedure Edit2Exit(Sender: TObject);
                                 procedure Edit2KeyPress(Sender: TObject; var Key: Char);
                                 procedure Edit3Exit(Sender: TObject);
                                 procedure Edit3KeyPress(Sender: TObject; var Key: Char);
                                 procedure Edit4Exit(Sender: TObject);
                                 procedure Edit4KeyPress(Sender: TObject; var Key: Char);
                                 procedure Edit5Exit(Sender: TObject);
                                 procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ElementsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
                              private   { Private declarations }
                                 FActiveBulkhead:TFreeBulkhead;
                                 procedure FSetActiveBulkhead(val:TFreeBulkhead);
                                 function FGetActiveElement:TFreeBulkheadElement;
                              public    { Public declarations }
                                 procedure UpdateElementInfo;
                                 property ActiveBulkhead : TFreeBulkhead read FActiveBulkhead write FSetActiveBulkhead;
                                 property ActiveElement  : TFreeBulkheadElement read FGetActiveElement;
                           end;

var FreeBulkheadForm: TFreeBulkheadForm;

implementation

{$R *.dfm}

procedure TFreeBulkheadForm.FSetActiveBulkhead(val:TFreeBulkhead);
var Index : Integer;
    I     : INteger;
begin
   FActiveBulkhead:=Val;
   Index:=Elements.ItemIndex;
   Elements.Items.BeginUpdate;
   Elements.Items.Clear;
   try
      if FActiveBulkhead<>nil then
      begin
         Edit1.Text:=FActiveBulkhead.Name;
         DistBox.Value:=ActiveBulkhead.Position;
         Checkbox1.Checked:=ActiveBulkhead.AutoUpdate;
         for I:=1 to ActiveBulkhead.Count do Elements.Items.AddObject('Element '+IntToStr(I),ActiveBulkhead.Items[I-1]);
      end else
      begin
         Edit1.Text:='';
         DistBox.Value:=0;
         Checkbox1.Checked:=False;
      end;
   finally
      if (index=-1) and (elements.Count>0) then inc(Index);
      Elements.Items.EndUpdate;
      Elements.ItemIndex:=Index;
      UpdateElementInfo;
   end;
end;{TFreeBulkheadForm.FSetActiveBulkhead}

function TFreeBulkheadForm.FGetActiveElement:TFreeBulkheadElement;
begin
   if ActiveBulkhead<>nil then
   begin
      if Elements.ItemIndex<>-1 then
      begin
         Result:=Elements.Items.Objects[Elements.ItemIndex] as TFreeBulkheadElement;
      end else Result:=nil;
   end else Result:=nil;
end;{TFreeBulkheadForm.FGetActiveElement}

procedure TFreeBulkheadForm.UpdateElementInfo;
var Element:TFreeBulkheadElement;
begin
   Element:=ActiveElement;
   Label3.Enabled:=Element<>nil;
   Label4.Enabled:=Element<>nil;
   Label5.Enabled:=Element<>nil;
   Label6.Enabled:=Element<>nil;
   Edit2.Enabled:=Element<>nil;
   Edit3.Enabled:=Element<>nil;
   Edit4.Enabled:=Element<>nil;
   Edit5.Enabled:=Element<>nil;
   if Element=nil then
   begin
      Edit2.Text:='';
      Edit3.Text:='';
      Edit4.Text:='';
      Edit5.Text:='';
   end else
   begin
      Edit2.Text:=Element.InnerBoundary;
      Edit3.Text:=Element.OuterBoundary;
      Edit4.Text:=Element.LowerBoundary;
      Edit5.Text:=Element.UpperBoundary;
   end;
end;{TFreeBulkheadForm.UpdateElementInfo}

procedure TFreeBulkheadForm.DistBoxAfterSetValue(Sender: TObject);
begin
   if ActiveBulkhead<>nil then
   begin
      ActiveBulkhead.Position:=DistBox.Value;
      ActiveBulkhead.Owner.Redraw;
   end;
end;{TFreeBulkheadForm.DistBoxAfterSetValue}

procedure TFreeBulkheadForm.ElementsClick(Sender: TObject);
begin
   UpdateElementInfo;
   if ActiveBulkhead<>nil then ActiveBulkhead.Owner.Redraw;
end;{TFreeBulkheadForm.ElementsClick}

procedure TFreeBulkheadForm.CheckBox1Click(Sender: TObject);
begin
   if ActiveBulkhead<>nil then
   begin
      ActiveBulkhead.AutoUpdate:=Checkbox1.Checked;
      if ActiveBulkhead.AutoUpdate then ActiveBulkhead.Owner.Redraw;
   end;
end;{TFreeBulkheadForm.CheckBox1Click}

procedure TFreeBulkheadForm.Edit2Exit(Sender: TObject);
var Str  : string;
    OK   : Boolean;
    Value: TFloatType;
    Flag : Integer;
begin
   if ActiveElement<>nil then
   begin
      Str:=Edit2.Text;
      if Uppercase(Trim(Str))='SHELL' then
      begin
         OK:=True;
         Str:='Shell';
      end else
      begin
         Val(Str,Value,Flag);
         OK:=Flag=0;
         if OK then Str:=FloatToStrF(Value,ffFixed,7,3);
      end;
      if OK then
      begin
         ActiveElement.InnerBoundary:=Str;
         ActiveBulkhead.Owner.Redraw;
         UpdateElementInfo;
      end else
      begin
         MessageDlg(Userstring(222)+'!',mtError,[mbOk],0);
         Edit2.SelectAll;
         Edit2.SetFocus;
      end;
   end;
end;{TFreeBulkheadForm.Edit2Exit}

procedure TFreeBulkheadForm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then Edit2Exit(self);
end;{TFreeBulkheadForm.Edit2KeyPress}

procedure TFreeBulkheadForm.Edit3Exit(Sender: TObject);
var Str  : string;
    OK   : Boolean;
    Value: TFloatType;
    Flag : Integer;
begin
   if ActiveElement<>nil then
   begin
      Str:=Edit3.Text;
      if Uppercase(Trim(Str))='SHELL' then
      begin
         OK:=True;
         Str:='Shell';
      end else
      begin
         Val(Str,Value,Flag);
         OK:=Flag=0;
         if OK then Str:=FloatToStrF(Value,ffFixed,7,3);
      end;
      if OK then
      begin
         ActiveElement.OuterBoundary:=Str;
         ActiveBulkhead.Owner.Redraw;
         UpdateElementInfo;
      end else
      begin
         MessageDlg(Userstring(222)+'!',mtError,[mbOk],0);
         Edit3.SelectAll;
         Edit3.SetFocus;
      end;
   end;
end;{TFreeBulkheadForm.Edit3Exit}

procedure TFreeBulkheadForm.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then Edit3Exit(self);
end;{TFreeBulkheadForm.Edit3KeyPress}

procedure TFreeBulkheadForm.Edit4Exit(Sender: TObject);
var Str  : string;
    OK   : Boolean;
    Value: TFloatType;
    Flag : Integer;
begin
   if ActiveElement<>nil then
   begin
      Str:=Edit4.Text;
      if Uppercase(Trim(Str))='SHELL' then
      begin
         OK:=True;
         Str:='Shell';
      end else
      begin
         Val(Str,Value,Flag);
         OK:=Flag=0;
         if OK then Str:=FloatToStrF(Value,ffFixed,7,3);
      end;
      if OK then
      begin
         ActiveElement.LowerBoundary:=Str;
         ActiveBulkhead.Owner.Redraw;
         UpdateElementInfo;
      end else
      begin
         MessageDlg(Userstring(222)+'!',mtError,[mbOk],0);
         Edit4.SelectAll;
         Edit4.SetFocus;
      end;
   end;
end;{TFreeBulkheadForm.Edit4Exit}

procedure TFreeBulkheadForm.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then Edit4Exit(self);
end;{TFreeBulkheadForm.Edit4KeyPress}

procedure TFreeBulkheadForm.Edit5Exit(Sender: TObject);
var Str  : string;
    OK   : Boolean;
    Value: TFloatType;
    Flag : Integer;
begin
   if ActiveElement<>nil then
   begin
      Str:=Edit5.Text;
      if Uppercase(Trim(Str))='SHELL' then
      begin
         OK:=True;
         Str:='Shell';
      end else
      begin
         Val(Str,Value,Flag);
         OK:=Flag=0;
         if OK then Str:=FloatToStrF(Value,ffFixed,7,3);
      end;
      if OK then
      begin
         ActiveElement.UpperBoundary:=Str;
         ActiveBulkhead.Owner.Redraw;
         UpdateElementInfo;
      end else
      begin
         MessageDlg(Userstring(222)+'!',mtError,[mbOk],0);
         Edit5.SelectAll;
         Edit5.SetFocus;
      end;
   end;
end;{TFreeBulkheadForm.Edit5Exit}

procedure TFreeBulkheadForm.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then Edit5Exit(self);
end;{TFreeBulkheadForm.Edit5KeyPress}

procedure TFreeBulkheadForm.ElementsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=46) and (ActiveBulkhead<>nil) and (ActiveElement<>nil) then
   begin
      ActiveBulkhead.Owner.Edit.CreateUndoObject('delete element',true);
      ActiveElement.Delete;
      ActiveBulkhead:=ActiveBulkhead;
   end;
end;{TFreeBulkheadForm.ElementsKeyUp}

end.
