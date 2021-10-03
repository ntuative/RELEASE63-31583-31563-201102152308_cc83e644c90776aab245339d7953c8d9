package com.sulake.core.assets
{
   import com.sulake.core.Core;
   import com.sulake.core.runtime.IUpdateReceiver;
   
   public class LazyAssetProcessor implements IUpdateReceiver
   {
       
      
      private var var_402:Array;
      
      private var var_689:Boolean = false;
      
      private var _disposed:Boolean = false;
      
      public function LazyAssetProcessor()
      {
         this.var_402 = new Array();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            Core.instance.removeUpdateReceiver(this);
            this.var_402 = null;
            this.var_689 = false;
            this._disposed = true;
         }
      }
      
      public function push(param1:ILazyAsset) : void
      {
         if(param1)
         {
            this.var_402.push(param1);
            if(!this.var_689)
            {
               Core.instance.registerUpdateReceiver(this,2);
               this.var_689 = true;
            }
         }
      }
      
      public function flush() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_402)
         {
            if(!_loc1_.disposed)
            {
               _loc1_.method_9();
            }
         }
         this.var_402 = new Array();
         if(this.var_689)
         {
            Core.instance.removeUpdateReceiver(this);
            this.var_689 = false;
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:ILazyAsset = this.var_402.shift();
         if(!_loc2_)
         {
            if(this.var_689)
            {
               Core.instance.removeUpdateReceiver(this);
               this.var_689 = false;
            }
         }
         else if(!_loc2_.disposed)
         {
            _loc2_.method_9();
         }
      }
   }
}
