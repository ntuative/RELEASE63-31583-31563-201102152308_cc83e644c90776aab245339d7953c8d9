package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_186:int = 0;
       
      
      private var var_2322:int = 0;
      
      private var var_1357:Dictionary;
      
      private var var_1688:int = 0;
      
      private var var_1689:int = 0;
      
      private var var_2324:Boolean = false;
      
      private var var_2323:int = 0;
      
      private var var_2325:int = 0;
      
      public function Purse()
      {
         this.var_1357 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2322;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1688;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1688 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1689;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1689 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1688 > 0 || this.var_1689 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2324;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2324 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2323;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2323 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2325;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2325 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1357;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1357 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1357[param1];
      }
   }
}
