package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2475:int;
      
      private var var_1340:String;
      
      private var _objId:int;
      
      private var var_1839:int;
      
      private var _category:int;
      
      private var var_1977:String;
      
      private var var_2607:Boolean;
      
      private var var_2608:Boolean;
      
      private var var_2609:Boolean;
      
      private var var_2328:Boolean;
      
      private var var_2255:int;
      
      private var var_1432:int;
      
      private var var_1838:String = "";
      
      private var var_2257:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2475 = param1;
         this.var_1340 = param2;
         this._objId = param3;
         this.var_1839 = param4;
         this._category = param5;
         this.var_1977 = param6;
         this.var_2607 = param7;
         this.var_2608 = param8;
         this.var_2609 = param9;
         this.var_2328 = param10;
         this.var_2255 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1838 = param1;
         this.var_1432 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2475;
      }
      
      public function get itemType() : String
      {
         return this.var_1340;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1839;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1977;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2607;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2608;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2609;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2328;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2255;
      }
      
      public function get slotId() : String
      {
         return this.var_1838;
      }
      
      public function get songId() : int
      {
         return this.var_2257;
      }
      
      public function get extra() : int
      {
         return this.var_1432;
      }
   }
}
