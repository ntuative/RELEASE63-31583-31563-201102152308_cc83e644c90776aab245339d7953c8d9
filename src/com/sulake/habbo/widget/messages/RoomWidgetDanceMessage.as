package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_784:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1012:int = 0;
      
      public static const const_1421:Array = [2,3,4];
       
      
      private var var_80:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_784);
         this.var_80 = param1;
      }
      
      public function get style() : int
      {
         return this.var_80;
      }
   }
}
