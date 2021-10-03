package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_685:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1159:String = "inventory_effects";
      
      public static const const_1081:String = "inventory_badges";
      
      public static const const_1385:String = "inventory_clothes";
      
      public static const const_1644:String = "inventory_furniture";
       
      
      private var var_2704:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_685);
         this.var_2704 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2704;
      }
   }
}
