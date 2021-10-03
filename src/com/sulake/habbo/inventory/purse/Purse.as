package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1688:int = 0;
      
      private var var_1689:int = 0;
      
      private var var_2635:int = 0;
      
      private var var_2634:Boolean = false;
      
      private var var_2324:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1688 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1689 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2635 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2634 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2324 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1688;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1689;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2635;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2634;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2324;
      }
   }
}
