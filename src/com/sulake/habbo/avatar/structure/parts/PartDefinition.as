package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2570:String;
      
      private var var_1822:String;
      
      private var var_2569:String;
      
      private var var_1821:Boolean;
      
      private var var_1823:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2570 = String(param1["set-type"]);
         this.var_1822 = String(param1["flipped-set-type"]);
         this.var_2569 = String(param1["remove-set-type"]);
         this.var_1821 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1823 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1823;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1823 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2570;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1822;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2569;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1821;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1821 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1822 = param1;
      }
   }
}
