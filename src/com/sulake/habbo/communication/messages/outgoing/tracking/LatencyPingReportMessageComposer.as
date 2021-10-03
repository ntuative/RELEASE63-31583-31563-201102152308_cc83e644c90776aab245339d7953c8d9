package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2334:int;
      
      private var var_2333:int;
      
      private var var_2332:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2334 = param1;
         this.var_2333 = param2;
         this.var_2332 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2334,this.var_2333,this.var_2332];
      }
      
      public function dispose() : void
      {
      }
   }
}
