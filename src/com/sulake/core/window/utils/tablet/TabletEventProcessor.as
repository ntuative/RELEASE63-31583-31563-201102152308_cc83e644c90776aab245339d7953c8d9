package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2790:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_134 = param1.desktop;
         var_79 = param1.var_1218 as WindowController;
         _lastClickTarget = param1.var_1220 as WindowController;
         var_147 = param1.renderer;
         var_799 = param1.var_1219;
         param2.begin();
         param2.end();
         param1.desktop = var_134;
         param1.var_1218 = var_79;
         param1.var_1220 = _lastClickTarget;
         param1.renderer = var_147;
         param1.var_1219 = var_799;
      }
   }
}
