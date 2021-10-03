package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1553:String = "WE_CREATE";
      
      public static const const_1436:String = "WE_CREATED";
      
      public static const const_1591:String = "WE_DESTROY";
      
      public static const const_310:String = "WE_DESTROYED";
      
      public static const const_1561:String = "WE_OPEN";
      
      public static const const_1572:String = "WE_OPENED";
      
      public static const const_1618:String = "WE_CLOSE";
      
      public static const const_1405:String = "WE_CLOSED";
      
      public static const const_1375:String = "WE_FOCUS";
      
      public static const const_293:String = "WE_FOCUSED";
      
      public static const const_1594:String = "WE_UNFOCUS";
      
      public static const const_1523:String = "WE_UNFOCUSED";
      
      public static const const_1368:String = "WE_ACTIVATE";
      
      public static const const_1615:String = "WE_ACTIVATED";
      
      public static const const_1535:String = "WE_DEACTIVATE";
      
      public static const const_870:String = "WE_DEACTIVATED";
      
      public static const const_424:String = "WE_SELECT";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_776:String = "WE_UNSELECT";
      
      public static const const_630:String = "WE_UNSELECTED";
      
      public static const const_1883:String = "WE_ATTACH";
      
      public static const const_1855:String = "WE_ATTACHED";
      
      public static const const_1733:String = "WE_DETACH";
      
      public static const const_1887:String = "WE_DETACHED";
      
      public static const const_1588:String = "WE_LOCK";
      
      public static const const_1534:String = "WE_LOCKED";
      
      public static const const_1424:String = "WE_UNLOCK";
      
      public static const const_1524:String = "WE_UNLOCKED";
      
      public static const const_701:String = "WE_ENABLE";
      
      public static const const_306:String = "WE_ENABLED";
      
      public static const const_637:String = "WE_DISABLE";
      
      public static const const_265:String = "WE_DISABLED";
      
      public static const const_1474:String = "WE_RELOCATE";
      
      public static const const_389:String = "WE_RELOCATED";
      
      public static const const_1590:String = "WE_RESIZE";
      
      public static const const_47:String = "WE_RESIZED";
      
      public static const const_1576:String = "WE_MINIMIZE";
      
      public static const const_1427:String = "WE_MINIMIZED";
      
      public static const const_1517:String = "WE_MAXIMIZE";
      
      public static const const_1500:String = "WE_MAXIMIZED";
      
      public static const const_1365:String = "WE_RESTORE";
      
      public static const const_1397:String = "WE_RESTORED";
      
      public static const const_1848:String = "WE_ARRANGE";
      
      public static const const_1914:String = "WE_ARRANGED";
      
      public static const const_102:String = "WE_UPDATE";
      
      public static const const_1836:String = "WE_UPDATED";
      
      public static const const_1828:String = "WE_CHILD_RELOCATE";
      
      public static const const_447:String = "WE_CHILD_RELOCATED";
      
      public static const const_1893:String = "WE_CHILD_RESIZE";
      
      public static const const_277:String = "WE_CHILD_RESIZED";
      
      public static const const_1716:String = "WE_CHILD_REMOVE";
      
      public static const const_540:String = "WE_CHILD_REMOVED";
      
      public static const const_1764:String = "WE_PARENT_RELOCATE";
      
      public static const const_1878:String = "WE_PARENT_RELOCATED";
      
      public static const const_1896:String = "WE_PARENT_RESIZE";
      
      public static const const_1647:String = "WE_PARENT_RESIZED";
      
      public static const const_171:String = "WE_OK";
      
      public static const const_648:String = "WE_CANCEL";
      
      public static const const_104:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_457:String = "WE_SCROLL";
      
      public static const const_164:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1967:IWindow;
      
      protected var var_1968:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1967 = param3;
         this.var_1968 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1967;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1968 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1968;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
