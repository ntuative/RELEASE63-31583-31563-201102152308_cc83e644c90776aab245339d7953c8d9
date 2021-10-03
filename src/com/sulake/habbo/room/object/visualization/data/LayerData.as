package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_767:String = "";
      
      public static const const_562:int = 0;
      
      public static const const_563:int = 255;
      
      public static const const_616:Boolean = false;
      
      public static const const_512:int = 0;
      
      public static const const_487:int = 0;
      
      public static const const_539:int = 0;
      
      public static const const_1098:int = 1;
      
      public static const const_1086:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2008:String = "";
      
      private var var_1769:int = 0;
      
      private var var_2108:int = 255;
      
      private var var_2592:Boolean = false;
      
      private var var_2591:int = 0;
      
      private var var_2590:int = 0;
      
      private var var_2589:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2008 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2008;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1769 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1769;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2108 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2108;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2592 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2592;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2591 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2591;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2590 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2590;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2589 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2589;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
