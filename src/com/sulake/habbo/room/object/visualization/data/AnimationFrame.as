package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_438:int = -1;
      
      public static const const_1045:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_140:int = 0;
      
      private var var_2091:int = 1;
      
      private var var_828:int = 1;
      
      private var var_1535:int = 1;
      
      private var var_2090:int = -1;
      
      private var var_2089:int = 0;
      
      private var var_2092:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_140 = param3;
         this.var_2092 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2091 = param4;
         if(param5 < 0)
         {
            param5 = const_438;
         }
         this.var_828 = param5;
         this.var_1535 = param5;
         if(param7 >= 0)
         {
            this.var_2090 = param7;
            this.var_2089 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_140;
      }
      
      public function get repeats() : int
      {
         return this.var_2091;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_828;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2092;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_828 < 0)
         {
            return const_438;
         }
         return this.var_1535;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_828 > 0 && param1 > this.var_828)
         {
            param1 = this.var_828;
         }
         this.var_1535 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2090;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2089;
      }
   }
}
