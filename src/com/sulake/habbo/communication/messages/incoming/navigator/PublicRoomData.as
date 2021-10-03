package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2279:String;
      
      private var var_2468:int;
      
      private var var_2006:int;
      
      private var var_2628:String;
      
      private var var_2629:int;
      
      private var var_1507:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2279 = param1.readString();
         this.var_2468 = param1.readInteger();
         this.var_2006 = param1.readInteger();
         this.var_2628 = param1.readString();
         this.var_2629 = param1.readInteger();
         this.var_1507 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2279;
      }
      
      public function get unitPort() : int
      {
         return this.var_2468;
      }
      
      public function get worldId() : int
      {
         return this.var_2006;
      }
      
      public function get castLibs() : String
      {
         return this.var_2628;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2629;
      }
      
      public function get nodeId() : int
      {
         return this.var_1507;
      }
   }
}
