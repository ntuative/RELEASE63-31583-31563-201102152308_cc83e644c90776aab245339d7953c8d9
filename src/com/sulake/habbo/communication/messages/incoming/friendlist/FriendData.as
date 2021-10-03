package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_953:int;
      
      private var var_696:Boolean;
      
      private var var_1601:Boolean;
      
      private var var_618:String;
      
      private var var_1362:int;
      
      private var var_1602:String;
      
      private var var_1593:String;
      
      private var var_1594:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_953 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_1601 = param1.readBoolean();
         this.var_618 = param1.readString();
         this.var_1362 = param1.readInteger();
         this.var_1602 = param1.readString();
         this.var_1593 = param1.readString();
         this.var_1594 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_953;
      }
      
      public function get online() : Boolean
      {
         return this.var_696;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1601;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get categoryId() : int
      {
         return this.var_1362;
      }
      
      public function get motto() : String
      {
         return this.var_1602;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1593;
      }
      
      public function get realName() : String
      {
         return this.var_1594;
      }
   }
}
