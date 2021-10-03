package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_740:String = "RWUAM_WHISPER_USER";
      
      public static const const_626:String = "RWUAM_IGNORE_USER";
      
      public static const const_611:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_463:String = "RWUAM_KICK_USER";
      
      public static const const_692:String = "RWUAM_BAN_USER";
      
      public static const const_717:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_638:String = "RWUAM_RESPECT_USER";
      
      public static const const_791:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_838:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_804:String = "RWUAM_START_TRADING";
      
      public static const const_726:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_544:String = "RWUAM_KICK_BOT";
      
      public static const const_858:String = "RWUAM_REPORT";
      
      public static const const_433:String = "RWUAM_PICKUP_PET";
      
      public static const const_1388:String = "RWUAM_TRAIN_PET";
      
      public static const const_513:String = " RWUAM_RESPECT_PET";
      
      public static const const_346:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
