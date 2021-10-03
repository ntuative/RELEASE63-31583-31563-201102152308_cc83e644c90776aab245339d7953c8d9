package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_712:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_249:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_712,param2,param3);
         this.var_249 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_249;
      }
   }
}
