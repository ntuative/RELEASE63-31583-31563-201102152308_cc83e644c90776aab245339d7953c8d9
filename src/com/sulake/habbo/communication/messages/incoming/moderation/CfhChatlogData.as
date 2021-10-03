package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1665:int;
      
      private var var_2281:int;
      
      private var var_1312:int;
      
      private var var_2280:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1665 = param1.readInteger();
         this.var_2281 = param1.readInteger();
         this.var_1312 = param1.readInteger();
         this.var_2280 = param1.readInteger();
         this.var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1665);
      }
      
      public function get callId() : int
      {
         return this.var_1665;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2281;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1312;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2280;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_115;
      }
   }
}
