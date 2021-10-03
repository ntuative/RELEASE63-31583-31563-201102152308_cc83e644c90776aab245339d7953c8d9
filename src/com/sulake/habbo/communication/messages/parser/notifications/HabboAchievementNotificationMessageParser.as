package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1338:int;
      
      private var var_1656:int;
      
      private var var_2283:int;
      
      private var var_1671:int;
      
      private var var_1339:int;
      
      private var var_2034:String = "";
      
      private var var_2313:String = "";
      
      private var var_2312:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1338 = param1.readInteger();
         this.var_2034 = param1.readString();
         this.var_1656 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_1671 = param1.readInteger();
         this.var_1339 = param1.readInteger();
         this.var_2312 = param1.readInteger();
         this.var_2313 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1338;
      }
      
      public function get points() : int
      {
         return this.var_1656;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2283;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1671;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1339;
      }
      
      public function get badgeID() : String
      {
         return this.var_2034;
      }
      
      public function get achievementID() : int
      {
         return this.var_2312;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2313;
      }
   }
}
