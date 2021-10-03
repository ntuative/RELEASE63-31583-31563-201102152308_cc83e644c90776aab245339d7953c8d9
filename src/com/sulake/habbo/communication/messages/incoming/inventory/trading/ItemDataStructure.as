package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2444:int;
      
      private var var_1340:String;
      
      private var var_2595:int;
      
      private var var_2593:int;
      
      private var _category:int;
      
      private var var_1977:String;
      
      private var var_1432:int;
      
      private var var_2599:int;
      
      private var var_2597:int;
      
      private var var_2594:int;
      
      private var var_2598:int;
      
      private var var_2596:Boolean;
      
      private var var_2806:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2444 = param1;
         this.var_1340 = param2;
         this.var_2595 = param3;
         this.var_2593 = param4;
         this._category = param5;
         this.var_1977 = param6;
         this.var_1432 = param7;
         this.var_2599 = param8;
         this.var_2597 = param9;
         this.var_2594 = param10;
         this.var_2598 = param11;
         this.var_2596 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2444;
      }
      
      public function get itemType() : String
      {
         return this.var_1340;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2595;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2593;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1977;
      }
      
      public function get extra() : int
      {
         return this.var_1432;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2599;
      }
      
      public function get creationDay() : int
      {
         return this.var_2597;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2594;
      }
      
      public function get creationYear() : int
      {
         return this.var_2598;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2596;
      }
      
      public function get songID() : int
      {
         return this.var_1432;
      }
   }
}
