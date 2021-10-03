package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2198:int = 0;
      
      private var var_1455:String = "";
      
      private var var_1898:String = "";
      
      private var var_2531:String = "";
      
      private var var_2530:String = "";
      
      private var var_1792:int = 0;
      
      private var var_2528:int = 0;
      
      private var var_2529:int = 0;
      
      private var var_1457:int = 0;
      
      private var var_2532:int = 0;
      
      private var var_1454:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2198 = param1;
         this.var_1455 = param2;
         this.var_1898 = param3;
         this.var_2531 = param4;
         this.var_2530 = param5;
         if(param6)
         {
            this.var_1792 = 1;
         }
         else
         {
            this.var_1792 = 0;
         }
         this.var_2528 = param7;
         this.var_2529 = param8;
         this.var_1457 = param9;
         this.var_2532 = param10;
         this.var_1454 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2198,this.var_1455,this.var_1898,this.var_2531,this.var_2530,this.var_1792,this.var_2528,this.var_2529,this.var_1457,this.var_2532,this.var_1454];
      }
   }
}
