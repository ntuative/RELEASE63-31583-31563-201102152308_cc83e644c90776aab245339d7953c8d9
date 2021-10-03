package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1338:int;
      
      private var var_283:String;
      
      private var var_2423:int;
      
      private var var_2283:int;
      
      private var var_1671:int;
      
      private var var_2422:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1338 = param1.readInteger();
         this.var_283 = param1.readString();
         this.var_2423 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_1671 = param1.readInteger();
         this.var_2422 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_283;
      }
      
      public function get level() : int
      {
         return this.var_1338;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2423;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2283;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1671;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2422;
      }
   }
}
