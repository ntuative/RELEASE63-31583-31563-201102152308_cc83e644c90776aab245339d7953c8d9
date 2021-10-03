package com.sulake.habbo.messenger.domain
{
   import com.sulake.core.runtime.IDisposable;
   
   public class Conversation implements IDisposable
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1601:Boolean;
      
      private var var_618:String;
      
      private var var_1436:Array;
      
      private var var_1299:Boolean;
      
      private var var_200:Boolean;
      
      private var _disposed:Boolean;
      
      public function Conversation(param1:int, param2:String, param3:String, param4:Boolean)
      {
         this.var_1436 = new Array();
         super();
         this._id = param1;
         this._name = param2;
         this.var_618 = param3;
         this.var_1601 = param4;
      }
      
      public function addMessage(param1:Message) : void
      {
         this.var_1436.push(param1);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(param1)
         {
            this.var_1299 = false;
         }
         this.var_200 = param1;
      }
      
      public function setNewMessageArrived(param1:Boolean) : void
      {
         if(this.var_200)
         {
            this.var_1299 = false;
         }
         else
         {
            this.var_1299 = param1;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1436 = null;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get selected() : Boolean
      {
         return this.var_200;
      }
      
      public function get messages() : Array
      {
         return this.var_1436;
      }
      
      public function get newMessageArrived() : Boolean
      {
         return this.var_1299;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1601;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function set followingAllowed(param1:Boolean) : void
      {
         this.var_1601 = param1;
      }
   }
}
