package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_82:String = "i";
      
      public static const const_89:String = "s";
      
      public static const const_255:String = "e";
       
      
      private var var_1695:String;
      
      private var var_2148:int;
      
      private var var_1361:String;
      
      private var var_1360:int;
      
      private var var_1697:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1695 = param1.readString();
         this.var_2148 = param1.readInteger();
         this.var_1361 = param1.readString();
         this.var_1360 = param1.readInteger();
         this.var_1697 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1695;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2148;
      }
      
      public function get extraParam() : String
      {
         return this.var_1361;
      }
      
      public function get productCount() : int
      {
         return this.var_1360;
      }
      
      public function get expiration() : int
      {
         return this.var_1697;
      }
   }
}
