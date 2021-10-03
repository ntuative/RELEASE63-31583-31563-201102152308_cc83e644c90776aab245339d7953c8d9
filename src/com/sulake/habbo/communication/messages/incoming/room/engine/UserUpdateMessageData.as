package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_140:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_2470:Number = 0;
      
      private var var_2472:Number = 0;
      
      private var var_2473:Number = 0;
      
      private var var_2471:Number = 0;
      
      private var var_260:int = 0;
      
      private var var_2441:int = 0;
      
      private var var_314:Array;
      
      private var var_2469:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_314 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_140 = param3;
         this.var_141 = param4;
         this.var_2470 = param5;
         this.var_260 = param6;
         this.var_2441 = param7;
         this.var_2472 = param8;
         this.var_2473 = param9;
         this.var_2471 = param10;
         this.var_2469 = param11;
         this.var_314 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_140;
      }
      
      public function get z() : Number
      {
         return this.var_141;
      }
      
      public function get localZ() : Number
      {
         return this.var_2470;
      }
      
      public function get targetX() : Number
      {
         return this.var_2472;
      }
      
      public function get targetY() : Number
      {
         return this.var_2473;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2471;
      }
      
      public function get dir() : int
      {
         return this.var_260;
      }
      
      public function get dirHead() : int
      {
         return this.var_2441;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2469;
      }
      
      public function get actions() : Array
      {
         return this.var_314.slice();
      }
   }
}
