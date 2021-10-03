package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_140:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_260:int = 0;
      
      private var var_456:int = 0;
      
      private var var_548:int = 0;
      
      private var _type:int = 0;
      
      private var var_2791:String = "";
      
      private var var_1432:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2255:int = 0;
      
      private var var_2256:String = null;
      
      private var var_176:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_176)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_140;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_140 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_141;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_141 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_260;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_260 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_456;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_456 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_548;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_548 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_176)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_176)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_176)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2256;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2256 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1432;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_1432 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2255;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2255 = param1;
         }
      }
   }
}
