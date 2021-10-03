package com.sulake.habbo.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_777:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_1817:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_777,false,false);
         this.var_1817 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_1817;
      }
   }
}
