package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPollMessage extends RoomWidgetMessage
   {
      
      public static const const_800:String = "RWPM_START";
      
      public static const const_527:String = "RWPM_REJECT";
      
      public static const ANSWER:String = "RWPM_ANSWER";
       
      
      private var _id:int = -1;
      
      private var var_1523:int = 0;
      
      private var var_2055:Array = null;
      
      public function RoomWidgetPollMessage(param1:String, param2:int)
      {
         this._id = param2;
         super(param1);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get questionId() : int
      {
         return this.var_1523;
      }
      
      public function set questionId(param1:int) : void
      {
         this.var_1523 = param1;
      }
      
      public function get answers() : Array
      {
         return this.var_2055;
      }
      
      public function set answers(param1:Array) : void
      {
         this.var_2055 = param1;
      }
   }
}
