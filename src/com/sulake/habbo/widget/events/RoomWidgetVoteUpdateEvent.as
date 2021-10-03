package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_130:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_143:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1090:String;
      
      private var var_1377:Array;
      
      private var var_1202:Array;
      
      private var var_1756:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1090 = param2;
         this.var_1377 = param3;
         this.var_1202 = param4;
         if(this.var_1202 == null)
         {
            this.var_1202 = [];
         }
         this.var_1756 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1090;
      }
      
      public function get choices() : Array
      {
         return this.var_1377.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1202.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1756;
      }
   }
}
