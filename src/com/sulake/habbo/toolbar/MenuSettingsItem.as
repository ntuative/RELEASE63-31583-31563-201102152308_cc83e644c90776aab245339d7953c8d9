package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1990:String;
      
      private var var_2399:Array;
      
      private var var_2401:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_1990 = param1;
         this.var_2399 = param2;
         this.var_2401 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_1990;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2399;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2401;
      }
   }
}
