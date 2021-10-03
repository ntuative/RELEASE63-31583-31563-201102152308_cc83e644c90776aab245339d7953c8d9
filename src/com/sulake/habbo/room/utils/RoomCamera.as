package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_902:int = 3;
       
      
      private var var_2162:int = -1;
      
      private var var_2156:int = -2;
      
      private var var_329:Vector3d = null;
      
      private var var_393:Vector3d = null;
      
      private var var_2153:Boolean = false;
      
      private var var_2158:Boolean = false;
      
      private var var_2157:Boolean = false;
      
      private var var_2160:Boolean = false;
      
      private var var_2159:int = 0;
      
      private var var_2155:int = 0;
      
      private var var_2154:int = 0;
      
      private var var_2161:int = 0;
      
      private var var_1285:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_393;
      }
      
      public function get targetId() : int
      {
         return this.var_2162;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2156;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2153;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2158;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2157;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2160;
      }
      
      public function get screenWd() : int
      {
         return this.var_2159;
      }
      
      public function get screenHt() : int
      {
         return this.var_2155;
      }
      
      public function get roomWd() : int
      {
         return this.var_2154;
      }
      
      public function get roomHt() : int
      {
         return this.var_2161;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2162 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2156 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2153 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2158 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2157 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2160 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2159 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2155 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2154 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2161 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_329 == null)
         {
            this.var_329 = new Vector3d();
         }
         if(this.var_329.x != param1.x || this.var_329.y != param1.y || this.var_329.z != param1.z)
         {
            this.var_329.assign(param1);
            this.var_1285 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_329 = null;
         this.var_393 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_393 != null)
         {
            return;
         }
         this.var_393 = new Vector3d();
         this.var_393.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_329 != null && this.var_393 != null)
         {
            ++this.var_1285;
            _loc4_ = Vector3d.dif(this.var_329,this.var_393);
            if(_loc4_.length <= param2)
            {
               this.var_393 = this.var_329;
               this.var_329 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_902 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1285 <= const_902)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_393 = Vector3d.sum(this.var_393,_loc4_);
            }
         }
      }
   }
}
