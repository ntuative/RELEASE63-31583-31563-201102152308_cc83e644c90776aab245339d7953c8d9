package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2560:int;
      
      private var var_2638:int;
      
      private var var_1031:int;
      
      private var var_1029:int;
      
      private var var_1585:int;
      
      private var var_2639:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2560 = param1.readInteger();
         this.var_2638 = param1.readInteger();
         this.var_1031 = param1.readInteger();
         this.var_1029 = param1.readInteger();
         this.var_1585 = param1.readInteger();
         this.var_2639 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2560;
      }
      
      public function get charges() : int
      {
         return this.var_2638;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1031;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1029;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2639;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1585;
      }
   }
}
