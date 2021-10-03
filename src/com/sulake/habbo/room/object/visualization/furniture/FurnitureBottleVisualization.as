package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_925:int = 20;
      
      private static const const_598:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_296:Array;
      
      private var var_689:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_296 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_689)
            {
               this.var_689 = true;
               this.var_296 = new Array();
               this.var_296.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_689)
            {
               this.var_689 = false;
               this.var_296 = new Array();
               this.var_296.push(const_925);
               this.var_296.push(const_598 + param1);
               this.var_296.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
