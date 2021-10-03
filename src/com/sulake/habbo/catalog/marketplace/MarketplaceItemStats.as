package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2303:int;
      
      private var var_2409:int;
      
      private var var_2412:int;
      
      private var _dayOffsets:Array;
      
      private var var_1767:Array;
      
      private var var_1768:Array;
      
      private var var_2411:int;
      
      private var var_2410:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2409 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2412 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1767 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1768 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2410 = param1;
      }
   }
}
