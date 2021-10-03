package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1222:int = 2;
      
      private static const const_1223:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_296:Array;
      
      private var var_1019:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_296 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1222)
         {
            this.var_296 = new Array();
            this.var_296.push(const_1223);
            this.var_1019 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1019 > 0)
         {
            --this.var_1019;
         }
         if(this.var_1019 == 0)
         {
            if(this.var_296.length > 0)
            {
               super.setAnimation(this.var_296.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
