package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.SortableSprite;
   
   public class RoomObjectSortableSpriteCacheItem
   {
       
      
      private var var_192:Array;
      
      private var var_2386:int = -1;
      
      private var var_2387:int = -1;
      
      private var var_1730:Boolean = false;
      
      public function RoomObjectSortableSpriteCacheItem()
      {
         this.var_192 = [];
         super();
      }
      
      public function get spriteCount() : int
      {
         return this.var_192.length;
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_1730;
      }
      
      public function dispose() : void
      {
         this.setSpriteCount(0);
      }
      
      public function addSprite(param1:SortableSprite) : void
      {
         this.var_192.push(param1);
      }
      
      public function getSprite(param1:int) : SortableSprite
      {
         return this.var_192[param1];
      }
      
      public function method_8(param1:int, param2:int) : Boolean
      {
         if(param1 != this.var_2386 || param2 != this.var_2387)
         {
            this.var_2386 = param1;
            this.var_2387 = param2;
            return true;
         }
         return false;
      }
      
      public function setSpriteCount(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         if(param1 < this.var_192.length)
         {
            _loc2_ = param1;
            while(_loc2_ < this.var_192.length)
            {
               _loc3_ = this.getSprite(_loc2_);
               if(_loc3_)
               {
                  _loc3_.dispose();
               }
               _loc2_++;
            }
            this.var_192.splice(param1,this.var_192.length - param1);
         }
         if(this.var_192.length == 0)
         {
            this.var_1730 = true;
         }
         else
         {
            this.var_1730 = false;
         }
      }
   }
}
