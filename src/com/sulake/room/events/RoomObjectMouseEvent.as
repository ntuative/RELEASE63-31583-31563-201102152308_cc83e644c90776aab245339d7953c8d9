package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_227:String = "ROE_MOUSE_CLICK";
      
      public static const const_1789:String = "ROE_MOUSE_ENTER";
      
      public static const const_490:String = "ROE_MOUSE_MOVE";
      
      public static const const_1886:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1899:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_465:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1717:String = "";
      
      private var var_2067:Boolean;
      
      private var var_2065:Boolean;
      
      private var var_2069:Boolean;
      
      private var var_2068:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1717 = param2;
         this.var_2067 = param5;
         this.var_2065 = param6;
         this.var_2069 = param7;
         this.var_2068 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1717;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2067;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2065;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2069;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2068;
      }
   }
}
