package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1673:int;
      
      private var _name:String;
      
      private var var_1338:int;
      
      private var var_2698:int;
      
      private var var_2046:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_618:String;
      
      private var var_2701:int;
      
      private var var_2699:int;
      
      private var var_2700:int;
      
      private var var_2048:int;
      
      private var var_2047:int;
      
      private var _ownerName:String;
      
      private var var_487:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1673;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1338;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2698;
      }
      
      public function get experience() : int
      {
         return this.var_2046;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2701;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2699;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2700;
      }
      
      public function get respect() : int
      {
         return this.var_2048;
      }
      
      public function get ownerId() : int
      {
         return this.var_2047;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_487;
      }
      
      public function flush() : Boolean
      {
         this.var_1673 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1673 = param1.readInteger();
         this._name = param1.readString();
         this.var_1338 = param1.readInteger();
         this.var_2698 = param1.readInteger();
         this.var_2046 = param1.readInteger();
         this.var_2701 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2699 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2700 = param1.readInteger();
         this.var_618 = param1.readString();
         this.var_2048 = param1.readInteger();
         this.var_2047 = param1.readInteger();
         this.var_487 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
