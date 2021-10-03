package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var _offerId:int;
      
      private var var_2557:Boolean;
      
      private var var_2238:Boolean;
      
      private var var_2558:int;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_2557 = param1.readBoolean();
         this.var_2558 = param1.readInteger();
         this.var_2238 = param1.readBoolean();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get isVip() : Boolean
      {
         return this.var_2557;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2238;
      }
      
      public function get daysRequired() : int
      {
         return this.var_2558;
      }
   }
}
