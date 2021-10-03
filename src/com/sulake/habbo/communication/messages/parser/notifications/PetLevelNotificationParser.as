package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1673:int;
      
      private var var_2064:String;
      
      private var var_1338:int;
      
      private var var_1192:int;
      
      private var var_1544:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1673 = param1.readInteger();
         this.var_2064 = param1.readString();
         this.var_1338 = param1.readInteger();
         this.var_1192 = param1.readInteger();
         this.var_1544 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1673;
      }
      
      public function get petName() : String
      {
         return this.var_2064;
      }
      
      public function get level() : int
      {
         return this.var_1338;
      }
      
      public function get petType() : int
      {
         return this.var_1192;
      }
      
      public function get breed() : int
      {
         return this.var_1544;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
