package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UniqueMachineIDParser implements IMessageParser
   {
       
      
      private var var_1316:String;
      
      public function UniqueMachineIDParser()
      {
         super();
         this.var_1316 = "";
      }
      
      public function flush() : Boolean
      {
         this.var_1316 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1316 = param1.readString();
         return true;
      }
      
      public function get machineID() : String
      {
         return this.var_1316;
      }
   }
}
