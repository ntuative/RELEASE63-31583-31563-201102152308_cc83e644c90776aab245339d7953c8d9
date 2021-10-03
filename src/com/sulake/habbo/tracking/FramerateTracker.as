package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1734:int;
      
      private var var_2393:int;
      
      private var var_1104:int;
      
      private var var_522:Number;
      
      private var var_2394:Boolean;
      
      private var var_2392:int;
      
      private var var_1733:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2393 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2392 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2394 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1104;
         if(this.var_1104 == 1)
         {
            this.var_522 = param1;
            this.var_1734 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1104);
            this.var_522 = this.var_522 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2394 && param3 - this.var_1734 >= this.var_2393 && this.var_1733 < this.var_2392)
         {
            _loc5_ = 1000 / this.var_522;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1733;
            this.var_1734 = param3;
            this.var_1104 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
