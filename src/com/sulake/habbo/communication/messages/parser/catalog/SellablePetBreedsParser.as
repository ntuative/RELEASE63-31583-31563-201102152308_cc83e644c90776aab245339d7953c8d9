package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SellablePetBreedsParser implements IMessageParser
   {
       
      
      private var var_1192:int = 0;
      
      private var var_1120:Array;
      
      public function SellablePetBreedsParser()
      {
         this.var_1120 = [];
         super();
      }
      
      public function get petType() : int
      {
         return this.var_1192;
      }
      
      public function get sellableBreeds() : Array
      {
         return this.var_1120.slice();
      }
      
      public function flush() : Boolean
      {
         this.var_1192 = 0;
         this.var_1120 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1192 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1120.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1120.sort(Array.NUMERIC);
         return true;
      }
   }
}
