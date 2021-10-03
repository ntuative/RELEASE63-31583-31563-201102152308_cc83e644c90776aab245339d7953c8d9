package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_994:String;
      
      protected var var_177:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_796:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_796 = param1;
         this.var_994 = param2;
      }
      
      public function get url() : String
      {
         return this.var_994;
      }
      
      public function get content() : Object
      {
         return this.var_177;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_796;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_177.loaderInfo != null)
            {
               if(this.var_177.loaderInfo.loader != null)
               {
                  this.var_177.loaderInfo.loader.unload();
               }
            }
            this.var_177 = null;
            this.var_796 = null;
            this._disposed = true;
            this.var_994 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_177 = param1 as DisplayObject;
            if(this.var_177 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_177 = DisplayAsset(param1).var_177;
            this.var_796 = DisplayAsset(param1).var_796;
            if(this.var_177 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_177 = DisplayAsset(param1).var_177;
            this.var_796 = DisplayAsset(param1).var_796;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
