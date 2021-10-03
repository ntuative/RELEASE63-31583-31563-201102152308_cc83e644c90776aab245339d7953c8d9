package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_882:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_577:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_882);
         this.var_577 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_577;
      }
   }
}
