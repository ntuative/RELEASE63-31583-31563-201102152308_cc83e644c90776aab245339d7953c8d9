package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_646:int = 1;
      
      public static const const_716:int = 2;
      
      public static const const_698:int = 3;
      
      public static const const_992:int = 4;
      
      public static const const_622:int = 5;
      
      public static const const_1140:int = 6;
       
      
      private var _type:int;
      
      private var var_1068:int;
      
      private var var_2191:String;
      
      private var var_2641:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1068 = param2;
         this.var_2191 = param3;
         this.var_2641 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2191;
      }
      
      public function get time() : String
      {
         return this.var_2641;
      }
      
      public function get senderId() : int
      {
         return this.var_1068;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
