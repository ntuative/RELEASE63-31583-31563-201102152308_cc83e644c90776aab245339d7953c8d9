package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_912:Array;
      
      private var var_2026:String;
      
      private var var_2027:String;
      
      private var var_2025:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_912 = param1;
         this.var_2026 = param2;
         this.var_2027 = param3;
         this.var_2025 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_912;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2026;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2027;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2025;
      }
   }
}
