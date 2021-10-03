package com.sulake.room.events
{
   import flash.events.Event;
   
   public class RoomObjectEvent extends Event
   {
       
      
      private var var_353:int = 0;
      
      private var var_1795:String = "";
      
      public function RoomObjectEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_353 = param2;
         this.var_1795 = param3;
      }
      
      public function get objectId() : int
      {
         return this.var_353;
      }
      
      public function get objectType() : String
      {
         return this.var_1795;
      }
   }
}