package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1033:int = 1;
      
      public static const const_863:int = 2;
      
      public static const const_812:int = 3;
      
      public static const const_1467:int = 4;
       
      
      private var _index:int;
      
      private var var_2516:String;
      
      private var var_2514:String;
      
      private var var_2517:Boolean;
      
      private var var_2515:String;
      
      private var var_922:String;
      
      private var var_2518:int;
      
      private var var_2416:int;
      
      private var _type:int;
      
      private var var_2008:String;
      
      private var var_926:GuestRoomData;
      
      private var var_927:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2516 = param1.readString();
         this.var_2514 = param1.readString();
         this.var_2517 = param1.readInteger() == 1;
         this.var_2515 = param1.readString();
         this.var_922 = param1.readString();
         this.var_2518 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1033)
         {
            this.var_2008 = param1.readString();
         }
         else if(this._type == const_812)
         {
            this.var_927 = new PublicRoomData(param1);
         }
         else if(this._type == const_863)
         {
            this.var_926 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_926 != null)
         {
            this.var_926.dispose();
            this.var_926 = null;
         }
         if(this.var_927 != null)
         {
            this.var_927.dispose();
            this.var_927 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2516;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2514;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2517;
      }
      
      public function get picText() : String
      {
         return this.var_2515;
      }
      
      public function get picRef() : String
      {
         return this.var_922;
      }
      
      public function get folderId() : int
      {
         return this.var_2518;
      }
      
      public function get tag() : String
      {
         return this.var_2008;
      }
      
      public function get userCount() : int
      {
         return this.var_2416;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_926;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_927;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1033)
         {
            return 0;
         }
         if(this.type == const_863)
         {
            return this.var_926.maxUserCount;
         }
         if(this.type == const_812)
         {
            return this.var_927.maxUsers;
         }
         return 0;
      }
   }
}
