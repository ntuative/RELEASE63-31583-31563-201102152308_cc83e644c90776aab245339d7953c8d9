package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserFigureUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_152:String = "RWUTUE_USER_FIGURE";
       
      
      private var _userId:int;
      
      private var var_43:BitmapData;
      
      private var var_2194:Boolean;
      
      private var var_1678:String = "";
      
      private var var_2136:int;
      
      public function RoomWidgetUserFigureUpdateEvent(param1:int, param2:BitmapData, param3:Boolean, param4:String, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_152,param6,param7);
         this._userId = param1;
         this.var_43 = param2;
         this.var_2194 = param3;
         this.var_1678 = param4;
         this.var_2136 = param5;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function get isOwnUser() : Boolean
      {
         return this.var_2194;
      }
      
      public function get customInfo() : String
      {
         return this.var_1678;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2136;
      }
   }
}
