package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1058:String = "AssetLoaderEventProgress";
      
      public static const const_1059:String = "AssetLoaderEventUnload";
      
      public static const const_1176:String = "AssetLoaderEventStatus";
      
      public static const const_43:String = "AssetLoaderEventError";
      
      public static const const_1094:String = "AssetLoaderEventOpen";
       
      
      private var var_375:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_375 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_375;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_375);
      }
   }
}
