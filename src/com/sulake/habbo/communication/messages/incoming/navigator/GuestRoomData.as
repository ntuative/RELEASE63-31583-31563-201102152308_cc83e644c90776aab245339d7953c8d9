package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_373:int;
      
      private var var_719:Boolean;
      
      private var var_809:String;
      
      private var _ownerName:String;
      
      private var var_2317:int;
      
      private var var_2416:int;
      
      private var var_2418:int;
      
      private var var_1682:String;
      
      private var var_2419:int;
      
      private var var_2383:Boolean;
      
      private var var_653:int;
      
      private var var_1362:int;
      
      private var var_2417:String;
      
      private var var_802:Array;
      
      private var var_2420:RoomThumbnailData;
      
      private var var_2320:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_802 = new Array();
         super();
         this.var_373 = param1.readInteger();
         this.var_719 = param1.readBoolean();
         this.var_809 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2317 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this.var_2418 = param1.readInteger();
         this.var_1682 = param1.readString();
         this.var_2419 = param1.readInteger();
         this.var_2383 = param1.readBoolean();
         this.var_653 = param1.readInteger();
         this.var_1362 = param1.readInteger();
         this.var_2417 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_802.push(_loc4_);
            _loc3_++;
         }
         this.var_2420 = new RoomThumbnailData(param1);
         this.var_2320 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get event() : Boolean
      {
         return this.var_719;
      }
      
      public function get roomName() : String
      {
         return this.var_809;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2317;
      }
      
      public function get userCount() : int
      {
         return this.var_2416;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2418;
      }
      
      public function get description() : String
      {
         return this.var_1682;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2419;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2383;
      }
      
      public function get score() : int
      {
         return this.var_653;
      }
      
      public function get categoryId() : int
      {
         return this.var_1362;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2417;
      }
      
      public function get tags() : Array
      {
         return this.var_802;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2420;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2320;
      }
   }
}
