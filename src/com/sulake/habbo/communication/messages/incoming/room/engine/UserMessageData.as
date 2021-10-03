package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1102:String = "M";
      
      public static const const_1596:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_140:Number = 0;
      
      private var var_141:Number = 0;
      
      private var var_260:int = 0;
      
      private var _name:String = "";
      
      private var var_2535:int = 0;
      
      private var var_876:String = "";
      
      private var var_618:String = "";
      
      private var var_2229:String = "";
      
      private var var_2136:int;
      
      private var var_2140:int = 0;
      
      private var var_2231:String = "";
      
      private var var_2230:int = 0;
      
      private var var_2133:int = 0;
      
      private var var_2536:String = "";
      
      private var var_176:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_176)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2535;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2535 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_876;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_876 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_618 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2229;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2229 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2136;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2136 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2140;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2140 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2231;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2231 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2230;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2230 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2133;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_176)
         {
            this.var_2133 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2536;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_176)
         {
            this.var_2536 = param1;
         }
      }
   }
}
