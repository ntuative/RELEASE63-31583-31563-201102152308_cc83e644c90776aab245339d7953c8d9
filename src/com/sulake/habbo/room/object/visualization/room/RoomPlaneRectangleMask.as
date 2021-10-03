package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2037:Number = 0.0;
      
      private var var_2039:Number = 0.0;
      
      private var var_2038:Number = 0.0;
      
      private var var_2036:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2037 = param1;
         this.var_2039 = param2;
         this.var_2038 = param3;
         this.var_2036 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2037;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2039;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2038;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2036;
      }
   }
}
