package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   
   public class ClubGiftSelectedParser implements IMessageParser
   {
       
      
      private var var_1583:String;
      
      private var var_1129:Array;
      
      public function ClubGiftSelectedParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1129 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1129 = new Array();
         this.var_1583 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1129.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function get productCode() : String
      {
         return this.var_1583;
      }
      
      public function get products() : Array
      {
         return this.var_1129;
      }
   }
}
