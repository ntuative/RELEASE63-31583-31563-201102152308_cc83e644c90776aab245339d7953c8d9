package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_467:int = 0;
      
      public static const const_185:int = 1;
      
      public static const const_110:int = 2;
      
      public static const const_652:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1682:String;
      
      private var var_2317:int;
      
      private var var_1362:int;
      
      private var var_2319:int;
      
      private var var_2631:int;
      
      private var var_802:Array;
      
      private var var_2318:Array;
      
      private var var_2632:int;
      
      private var var_2320:Boolean;
      
      private var var_2316:Boolean;
      
      private var var_2321:Boolean;
      
      private var var_2315:Boolean;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2320;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2320 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2316;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2316 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2321;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2321 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2315;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2315 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1682;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1682 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2317;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2317 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1362;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1362 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2319;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2319 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2631;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2631 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_802;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_802 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2318;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2318 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2632;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2632 = param1;
      }
   }
}
