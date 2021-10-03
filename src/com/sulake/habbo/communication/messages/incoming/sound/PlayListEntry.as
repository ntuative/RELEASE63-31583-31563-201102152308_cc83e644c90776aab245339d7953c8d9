package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2257:int;
      
      private var var_2544:int;
      
      private var var_2543:String;
      
      private var var_2545:String;
      
      private var var_2546:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2257 = param1;
         this.var_2544 = param2;
         this.var_2543 = param3;
         this.var_2545 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2257;
      }
      
      public function get length() : int
      {
         return this.var_2544;
      }
      
      public function get name() : String
      {
         return this.var_2543;
      }
      
      public function get creator() : String
      {
         return this.var_2545;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2546;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2546 = param1;
      }
   }
}
