package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_190:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_222:String = "RWUIUE_PEER";
      
      public static const const_1626:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_1075:int = 2;
      
      public static const const_988:int = 3;
      
      public static const const_1354:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1602:String = "";
      
      private var var_2136:int;
      
      private var var_2140:int = 0;
      
      private var var_2133:int = 0;
      
      private var var_618:String = "";
      
      private var var_43:BitmapData = null;
      
      private var var_231:Array;
      
      private var var_1568:Array;
      
      private var var_1346:int = 0;
      
      private var var_2142:String = "";
      
      private var var_2138:int = 0;
      
      private var var_2129:int = 0;
      
      private var var_1840:Boolean = false;
      
      private var var_1594:String = "";
      
      private var var_2143:Boolean = false;
      
      private var var_2139:Boolean = true;
      
      private var var_1113:int = 0;
      
      private var var_2135:Boolean = false;
      
      private var var_2137:Boolean = false;
      
      private var var_2141:Boolean = false;
      
      private var var_2130:Boolean = false;
      
      private var var_2131:Boolean = false;
      
      private var var_2132:Boolean = false;
      
      private var var_2134:int = 0;
      
      private var var_1841:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_231 = [];
         this.var_1568 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1602 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1602;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2136 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2136;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2140 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2140;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2133 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2133;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_618 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_43 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_43;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_231 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_231;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1568;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1568 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1346 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1346;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2142 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2142;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2143 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2143;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1113 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1113;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2135 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2135;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2137 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2137;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2141 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2141;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2130 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2130;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2131 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2131;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2132 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2132;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2134 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2134;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2139 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2139;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1841 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1841;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2138 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2138;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2129 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2129;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1840 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1840;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1594 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1594;
      }
   }
}
