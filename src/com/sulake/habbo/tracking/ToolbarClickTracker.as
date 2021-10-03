package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1242:IHabboTracking;
      
      private var var_1852:Boolean = false;
      
      private var var_2163:int = 0;
      
      private var var_1576:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1242 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1242 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1852 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2163 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1852)
         {
            return;
         }
         ++this.var_1576;
         if(this.var_1576 <= this.var_2163)
         {
            this.var_1242.track("toolbar",param1);
         }
      }
   }
}
