package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2480:int;
      
      private var var_2482:int;
      
      private var var_696:Boolean;
      
      private var var_2481:int;
      
      private var var_2484:int;
      
      private var var_2483:int;
      
      private var var_2485:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2480 = param1.readInteger();
         this.var_2482 = param1.readInteger();
         this.var_696 = param1.readBoolean();
         this.var_2481 = param1.readInteger();
         this.var_2484 = param1.readInteger();
         this.var_2483 = param1.readInteger();
         this.var_2485 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2480;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2482;
      }
      
      public function get online() : Boolean
      {
         return this.var_696;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2481;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2484;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2483;
      }
      
      public function get banCount() : int
      {
         return this.var_2485;
      }
   }
}
