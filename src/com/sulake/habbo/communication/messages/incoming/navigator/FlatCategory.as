package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1507:int;
      
      private var var_2226:String;
      
      private var var_378:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1507 = param1.readInteger();
         this.var_2226 = param1.readString();
         this.var_378 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1507;
      }
      
      public function get nodeName() : String
      {
         return this.var_2226;
      }
      
      public function get visible() : Boolean
      {
         return this.var_378;
      }
   }
}
