package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_827:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_283:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_827);
         this.var_283 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_283;
      }
   }
}
