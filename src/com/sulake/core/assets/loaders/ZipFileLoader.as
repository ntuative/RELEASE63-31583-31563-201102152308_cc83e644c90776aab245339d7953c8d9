package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   
   public class ZipFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_994:String;
      
      protected var _type:String;
      
      protected var var_119:URLStream;
      
      public function ZipFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         this.var_994 = param2 == null ? "" : param2.url;
         this._type = param1;
         this.var_119 = new URLStream();
         this.var_119.addEventListener(Event.COMPLETE,loadEventHandler);
         this.var_119.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         this.var_119.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         this.var_119.addEventListener(Event.OPEN,loadEventHandler);
         this.var_119.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         this.var_119.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null)
         {
            this.load(param2);
         }
      }
      
      public function get url() : String
      {
         return this.var_994;
      }
      
      public function get ready() : Boolean
      {
         return this.bytesTotal > 0 ? this.bytesTotal == this.bytesLoaded : false;
      }
      
      public function get content() : Object
      {
         return this.var_119;
      }
      
      public function get mimeType() : String
      {
         return this._type;
      }
      
      public function get bytesLoaded() : uint
      {
         return this.var_119.bytesAvailable;
      }
      
      public function get bytesTotal() : uint
      {
         return this.var_119.bytesAvailable;
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_994 = param1.url;
         this.var_119.load(param1);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            this.var_119.removeEventListener(Event.COMPLETE,loadEventHandler);
            this.var_119.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            this.var_119.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            this.var_119.removeEventListener(Event.OPEN,loadEventHandler);
            this.var_119.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            this.var_119.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            this.var_119.close();
            this.var_119 = null;
            this._type = null;
            this.var_994 = null;
         }
      }
   }
}
