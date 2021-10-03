package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_283:int;
      
      private var var_2291:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_283 = param1;
         this.var_2291 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_283;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2291;
      }
   }
}
