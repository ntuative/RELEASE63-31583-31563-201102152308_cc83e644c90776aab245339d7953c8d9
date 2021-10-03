package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1895:int = 0;
      
      private var var_1894:int = 0;
      
      private var var_1585:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1895;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1894;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1585;
      }
      
      public function flush() : Boolean
      {
         this.var_1895 = 0;
         this.var_1894 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1895 = param1.readInteger();
         this.var_1894 = param1.readInteger();
         this.var_1585 = param1.readInteger();
         return true;
      }
   }
}
