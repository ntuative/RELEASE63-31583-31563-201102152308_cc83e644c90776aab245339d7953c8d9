package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2562:int;
      
      private var var_2564:int;
      
      private var var_2561:int;
      
      private var var_2563:String;
      
      private var var_1750:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2562 = param1.readInteger();
         this.var_2564 = param1.readInteger();
         this.var_2561 = param1.readInteger();
         this.var_2563 = param1.readString();
         this.var_1750 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2562;
      }
      
      public function get minute() : int
      {
         return this.var_2564;
      }
      
      public function get chatterId() : int
      {
         return this.var_2561;
      }
      
      public function get chatterName() : String
      {
         return this.var_2563;
      }
      
      public function get msg() : String
      {
         return this.var_1750;
      }
   }
}
