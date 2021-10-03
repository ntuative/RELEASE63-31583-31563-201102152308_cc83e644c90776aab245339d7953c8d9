package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_808:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2021:int;
      
      private var var_2020:int;
      
      private var _color:uint;
      
      private var var_1190:int;
      
      private var var_2290:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_808);
         this.var_2021 = param1;
         this.var_2020 = param2;
         this._color = param3;
         this.var_1190 = param4;
         this.var_2290 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2021;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2020;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1190;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2290;
      }
   }
}
