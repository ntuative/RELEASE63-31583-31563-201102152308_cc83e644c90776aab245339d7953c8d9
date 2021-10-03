package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2577:Boolean = false;
      
      private var var_2578:int = 0;
      
      private var var_2579:int = 0;
      
      private var var_2072:int = 0;
      
      private var var_2071:int = 0;
      
      private var var_140:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_260:String = "";
      
      private var _type:int = 0;
      
      private var var_2791:String = "";
      
      private var var_1432:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_176:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2577 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_176 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2577;
      }
      
      public function get wallX() : Number
      {
         return this.var_2578;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2578 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2579;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2579 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2072;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2072 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2071;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_176)
         {
            this.var_2071 = param1;
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
      
      public function get dir() : String
      {
         return this.var_260;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_260 = param1;
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
   }
}
