package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1570:Boolean;
      
      private var _roomId:int;
      
      private var var_809:String;
      
      private var var_2236:int;
      
      private var var_2237:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1570 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_809 = param1.readString();
         this.var_2236 = param1.readInteger();
         this.var_2237 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1570;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_809;
      }
      
      public function get enterHour() : int
      {
         return this.var_2236;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2237;
      }
   }
}
