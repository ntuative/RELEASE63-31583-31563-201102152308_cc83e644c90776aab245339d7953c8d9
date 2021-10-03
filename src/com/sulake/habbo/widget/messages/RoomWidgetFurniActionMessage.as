package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_709:String = "RWFUAM_ROTATE";
      
      public static const const_281:String = "RWFAM_MOVE";
      
      public static const const_635:String = "RWFAM_PICKUP";
       
      
      private var _furniId:int = 0;
      
      private var var_2574:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         this._furniId = param2;
         this.var_2574 = param3;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniCategory() : int
      {
         return this.var_2574;
      }
   }
}
