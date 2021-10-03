package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1434:String = "WN_CRETAE";
      
      public static const const_1353:String = "WN_CREATED";
      
      public static const const_1085:String = "WN_DESTROY";
      
      public static const const_1130:String = "WN_DESTROYED";
      
      public static const const_1141:String = "WN_OPEN";
      
      public static const const_1107:String = "WN_OPENED";
      
      public static const const_1110:String = "WN_CLOSE";
      
      public static const const_1157:String = "WN_CLOSED";
      
      public static const const_1181:String = "WN_FOCUS";
      
      public static const const_1179:String = "WN_FOCUSED";
      
      public static const const_1079:String = "WN_UNFOCUS";
      
      public static const const_1091:String = "WN_UNFOCUSED";
      
      public static const const_1069:String = "WN_ACTIVATE";
      
      public static const const_336:String = "WN_ACTVATED";
      
      public static const const_1092:String = "WN_DEACTIVATE";
      
      public static const const_963:String = "WN_DEACTIVATED";
      
      public static const const_554:String = "WN_SELECT";
      
      public static const const_372:String = "WN_SELECTED";
      
      public static const const_619:String = "WN_UNSELECT";
      
      public static const const_653:String = "WN_UNSELECTED";
      
      public static const const_985:String = "WN_LOCK";
      
      public static const const_1145:String = "WN_LOCKED";
      
      public static const const_1004:String = "WN_UNLOCK";
      
      public static const const_1096:String = "WN_UNLOCKED";
      
      public static const const_1196:String = "WN_ENABLE";
      
      public static const const_765:String = "WN_ENABLED";
      
      public static const const_974:String = "WN_DISABLE";
      
      public static const const_664:String = "WN_DISABLED";
      
      public static const const_806:String = "WN_RESIZE";
      
      public static const const_192:String = "WN_RESIZED";
      
      public static const const_1026:String = "WN_RELOCATE";
      
      public static const const_422:String = "WN_RELOCATED";
      
      public static const const_1199:String = "WN_MINIMIZE";
      
      public static const const_1050:String = "WN_MINIMIZED";
      
      public static const const_1060:String = "WN_MAXIMIZE";
      
      public static const const_1103:String = "WN_MAXIMIZED";
      
      public static const const_1122:String = "WN_RESTORE";
      
      public static const const_1128:String = "WN_RESTORED";
      
      public static const const_1813:String = "WN_ARRANGE";
      
      public static const const_1930:String = "WN_ARRANGED";
      
      public static const const_1936:String = "WN_UPDATE";
      
      public static const const_1805:String = "WN_UPDATED";
      
      public static const const_384:String = "WN_CHILD_ADDED";
      
      public static const const_888:String = "WN_CHILD_REMOVED";
      
      public static const const_309:String = "WN_CHILD_RESIZED";
      
      public static const const_300:String = "WN_CHILD_RELOCATED";
      
      public static const const_236:String = "WN_CHILD_ACTIVATED";
      
      public static const const_496:String = "WN_PARENT_ADDED";
      
      public static const const_1016:String = "WN_PARENT_REMOVED";
      
      public static const const_468:String = "WN_PARENT_RESIZED";
      
      public static const const_1017:String = "WN_PARENT_RELOCATED";
      
      public static const const_663:String = "WN_PARENT_ACTIVATED";
      
      public static const const_516:String = "WN_STATE_UPDATED";
      
      public static const const_476:String = "WN_STYLE_UPDATED";
      
      public static const const_567:String = "WN_PARAM_UPDATED";
      
      public static const const_1802:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1967,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
