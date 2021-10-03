package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1624:int;
      
      private var var_1903:int;
      
      private var var_1902:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1903 = param1.readInteger();
         this.var_1624 = param1.readInteger();
         this.var_1902 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1624 = 0;
         this.var_1903 = 0;
         this.var_1902 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1624;
      }
      
      public function get messageId() : int
      {
         return this.var_1903;
      }
      
      public function get timestamp() : String
      {
         return this.var_1902;
      }
   }
}
