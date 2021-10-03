package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1059:Boolean;
      
      private var var_2493:int;
      
      private var var_2498:String;
      
      private var var_373:int;
      
      private var var_2495:int;
      
      private var var_2497:String;
      
      private var var_2494:String;
      
      private var var_2496:String;
      
      private var var_802:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_802 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1059 = false;
            return;
         }
         this.var_1059 = true;
         this.var_2493 = int(_loc2_);
         this.var_2498 = param1.readString();
         this.var_373 = int(param1.readString());
         this.var_2495 = param1.readInteger();
         this.var_2497 = param1.readString();
         this.var_2494 = param1.readString();
         this.var_2496 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_802.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_802 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2493;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2498;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get eventType() : int
      {
         return this.var_2495;
      }
      
      public function get eventName() : String
      {
         return this.var_2497;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2494;
      }
      
      public function get creationTime() : String
      {
         return this.var_2496;
      }
      
      public function get tags() : Array
      {
         return this.var_802;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1059;
      }
   }
}
