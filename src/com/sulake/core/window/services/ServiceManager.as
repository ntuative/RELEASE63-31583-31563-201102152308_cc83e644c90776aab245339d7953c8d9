package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2770:uint;
      
      private var var_136:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var _windowContext:IWindowContext;
      
      private var var_1137:IMouseDraggingService;
      
      private var var_1139:IMouseScalingService;
      
      private var var_1138:IMouseListenerService;
      
      private var var_1140:IFocusManagerService;
      
      private var var_1136:IToolTipAgentService;
      
      private var var_1141:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2770 = 0;
         this.var_136 = param2;
         this._windowContext = param1;
         this.var_1137 = new WindowMouseDragger(param2);
         this.var_1139 = new WindowMouseScaler(param2);
         this.var_1138 = new WindowMouseListener(param2);
         this.var_1140 = new FocusManager(param2);
         this.var_1136 = new WindowToolTipAgent(param2);
         this.var_1141 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1137 != null)
         {
            this.var_1137.dispose();
            this.var_1137 = null;
         }
         if(this.var_1139 != null)
         {
            this.var_1139.dispose();
            this.var_1139 = null;
         }
         if(this.var_1138 != null)
         {
            this.var_1138.dispose();
            this.var_1138 = null;
         }
         if(this.var_1140 != null)
         {
            this.var_1140.dispose();
            this.var_1140 = null;
         }
         if(this.var_1136 != null)
         {
            this.var_1136.dispose();
            this.var_1136 = null;
         }
         if(this.var_1141 != null)
         {
            this.var_1141.dispose();
            this.var_1141 = null;
         }
         this.var_136 = null;
         this._windowContext = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1137;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1139;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1138;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1140;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1136;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1141;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
