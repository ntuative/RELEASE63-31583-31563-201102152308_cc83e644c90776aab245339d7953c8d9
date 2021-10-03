package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2303:int;
      
      private var var_2409:int;
      
      private var var_2412:int;
      
      private var _dayOffsets:Array;
      
      private var var_1767:Array;
      
      private var var_1768:Array;
      
      private var var_2411:int;
      
      private var var_2410:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2303;
      }
      
      public function get offerCount() : int
      {
         return this.var_2409;
      }
      
      public function get historyLength() : int
      {
         return this.var_2412;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1767;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1768;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2411;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2410;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2303 = param1.readInteger();
         this.var_2409 = param1.readInteger();
         this.var_2412 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1767 = [];
         this.var_1768 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1767.push(param1.readInteger());
            this.var_1768.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2410 = param1.readInteger();
         this.var_2411 = param1.readInteger();
         return true;
      }
   }
}
