package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_940:RoomObjectLocationCacheItem = null;
      
      private var var_192:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_940 = new RoomObjectLocationCacheItem(param1);
         this.var_192 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_940;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_192;
      }
      
      public function dispose() : void
      {
         if(this.var_940 != null)
         {
            this.var_940.dispose();
            this.var_940 = null;
         }
         if(this.var_192 != null)
         {
            this.var_192.dispose();
            this.var_192 = null;
         }
      }
   }
}
