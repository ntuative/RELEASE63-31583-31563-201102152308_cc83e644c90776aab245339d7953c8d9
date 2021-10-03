package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_158:int = 1;
      
      public static const const_335:int = 2;
      
      public static const const_1425:int = 3;
       
      
      private var var_2147:int;
      
      private var _state:int;
      
      private var var_1362:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1747:int;
      
      private var var_2465:int;
      
      private var var_2466:int = 0;
      
      private var var_2462:int;
      
      private var var_2464:String;
      
      private var var_1312:int;
      
      private var var_1630:String;
      
      private var var_2443:int;
      
      private var var_2461:String;
      
      private var _message:String;
      
      private var var_2280:int;
      
      private var var_809:String;
      
      private var var_1631:int;
      
      private var var_2463:String;
      
      private var var_373:int;
      
      private var var_2467:String;
      
      private var var_2460:String;
      
      private var var_2468:int;
      
      private var var_2006:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2147 = param1;
         this._state = param2;
         this.var_1362 = param3;
         this._reportedCategoryId = param4;
         this.var_1747 = param5;
         this.var_2465 = param6;
         this.var_2462 = param7;
         this.var_2464 = param8;
         this.var_1312 = param9;
         this.var_1630 = param10;
         this.var_2443 = param11;
         this.var_2461 = param12;
         this._message = param13;
         this.var_2280 = param14;
         this.var_809 = param15;
         this.var_1631 = param16;
         this.var_2463 = param17;
         this.var_373 = param18;
         this.var_2467 = param19;
         this.var_2460 = param20;
         this.var_2468 = param21;
         this.var_2006 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2147;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1362;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1747;
      }
      
      public function get priority() : int
      {
         return this.var_2465 + this.var_2466;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2462;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2464;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1312;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1630;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2443;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2461;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2280;
      }
      
      public function get roomName() : String
      {
         return this.var_809;
      }
      
      public function get roomType() : int
      {
         return this.var_1631;
      }
      
      public function get flatType() : String
      {
         return this.var_2463;
      }
      
      public function get flatId() : int
      {
         return this.var_373;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2467;
      }
      
      public function get roomResources() : String
      {
         return this.var_2460;
      }
      
      public function get unitPort() : int
      {
         return this.var_2468;
      }
      
      public function get worldId() : int
      {
         return this.var_2006;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2466 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1747) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
