package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_373:int;
      
      private var var_2416:int;
      
      private var var_2603:Boolean;
      
      private var var_2047:int;
      
      private var _ownerName:String;
      
      private var var_115:RoomData;
      
      private var var_719:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_373 = param1.readInteger();
         this.var_2416 = param1.readInteger();
         this.var_2603 = param1.readBoolean();
         this.var_2047 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_115 = new RoomData(param1);
         this.var_719 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_115 != null)
         {
            this.var_115.dispose();
            this.var_115 = null;
         }
         if(this.var_719 != null)
         {
            this.var_719.dispose();
            this.var_719 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get userCount() : int
      {
         return this.var_2416;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2603;
      }
      
      public function get ownerId() : int
      {
         return this.var_2047;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_115;
      }
      
      public function get event() : RoomData
      {
         return this.var_719;
      }
   }
}
