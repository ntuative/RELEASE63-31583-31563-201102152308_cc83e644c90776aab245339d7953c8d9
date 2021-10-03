package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1989:Boolean;
      
      private var var_1988:int;
      
      private var var_1487:Array;
      
      private var var_700:Array;
      
      private var var_699:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_1989;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_1988;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1487;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_700;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_699;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1487 = [];
         this.var_700 = [];
         this.var_699 = [];
         this.var_1989 = param1.readBoolean();
         this.var_1988 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1487.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_700.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_699.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
