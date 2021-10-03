package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2539:Number;
      
      private var var_1749:Number;
      
      private var var_939:Number;
      
      private var var_940:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2539 = param1;
         this.var_1749 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_939 = param1;
         this.var_940 = 0;
      }
      
      public function update() : void
      {
         this.var_939 += this.var_1749;
         this.var_940 += this.var_939;
         if(this.var_940 > 0)
         {
            this.var_940 = 0;
            this.var_939 = this.var_2539 * -1 * this.var_939;
         }
      }
      
      public function get location() : Number
      {
         return this.var_940;
      }
   }
}
