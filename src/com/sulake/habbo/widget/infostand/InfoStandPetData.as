package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1338:int;
      
      private var var_2045:int;
      
      private var var_2046:int;
      
      private var var_2050:int;
      
      private var _energy:int;
      
      private var var_2049:int;
      
      private var _nutrition:int;
      
      private var var_2051:int;
      
      private var _petRespect:int;
      
      private var _name:String = "";
      
      private var var_1673:int = -1;
      
      private var _type:int;
      
      private var var_2311:int;
      
      private var var_43:BitmapData;
      
      private var var_2253:Boolean;
      
      private var var_2047:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2252:int;
      
      private var var_487:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get id() : int
      {
         return this.var_1673;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get race() : int
      {
         return this.var_2311;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2253;
      }
      
      public function get ownerId() : int
      {
         return this.var_2047;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get age() : int
      {
         return this.var_487;
      }
      
      public function get level() : int
      {
         return this.var_1338;
      }
      
      public function get levelMax() : int
      {
         return this.var_2045;
      }
      
      public function get experience() : int
      {
         return this.var_2046;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2050;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2049;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2051;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2252;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         this._name = param1.name;
         this.var_1673 = param1.id;
         this._type = param1.petType;
         this.var_2311 = param1.petRace;
         this.var_43 = param1.image;
         this.var_2253 = param1.isOwnPet;
         this.var_2047 = param1.ownerId;
         this._ownerName = param1.ownerName;
         this._canOwnerBeKicked = param1.canOwnerBeKicked;
         this.var_1338 = param1.level;
         this.var_2045 = param1.levelMax;
         this.var_2046 = param1.experience;
         this.var_2050 = param1.experienceMax;
         this._energy = param1.energy;
         this.var_2049 = param1.energyMax;
         this._nutrition = param1.nutrition;
         this.var_2051 = param1.nutritionMax;
         this._petRespect = param1.petRespect;
         this.var_2252 = param1.roomIndex;
         this.var_487 = param1.age;
      }
   }
}
