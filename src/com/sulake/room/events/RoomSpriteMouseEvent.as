package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1717:String = "";
      
      private var var_1501:String = "";
      
      private var var_2073:String = "";
      
      private var var_2070:Number = 0;
      
      private var var_2066:Number = 0;
      
      private var var_2072:Number = 0;
      
      private var var_2071:Number = 0;
      
      private var var_2065:Boolean = false;
      
      private var var_2067:Boolean = false;
      
      private var var_2069:Boolean = false;
      
      private var var_2068:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1717 = param2;
         this.var_1501 = param3;
         this.var_2073 = param4;
         this.var_2070 = param5;
         this.var_2066 = param6;
         this.var_2072 = param7;
         this.var_2071 = param8;
         this.var_2065 = param9;
         this.var_2067 = param10;
         this.var_2069 = param11;
         this.var_2068 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1717;
      }
      
      public function get canvasId() : String
      {
         return this.var_1501;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2073;
      }
      
      public function get screenX() : Number
      {
         return this.var_2070;
      }
      
      public function get screenY() : Number
      {
         return this.var_2066;
      }
      
      public function get localX() : Number
      {
         return this.var_2072;
      }
      
      public function get localY() : Number
      {
         return this.var_2071;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2065;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2067;
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
