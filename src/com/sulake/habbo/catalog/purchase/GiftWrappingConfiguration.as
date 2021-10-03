package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1430:Boolean = false;
      
      private var var_1584:int;
      
      private var var_1487:Array;
      
      private var var_700:Array;
      
      private var var_699:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1430 = _loc2_.isWrappingEnabled;
         this.var_1584 = _loc2_.wrappingPrice;
         this.var_1487 = _loc2_.stuffTypes;
         this.var_700 = _loc2_.boxTypes;
         this.var_699 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1430;
      }
      
      public function get price() : int
      {
         return this.var_1584;
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
   }
}
