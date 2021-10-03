package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_837:IAssetLoader;
      
      private var var_1832:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1832 = param1;
         this.var_837 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1832;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_837;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_837 != null)
            {
               if(!this.var_837.disposed)
               {
                  this.var_837.dispose();
                  this.var_837 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
