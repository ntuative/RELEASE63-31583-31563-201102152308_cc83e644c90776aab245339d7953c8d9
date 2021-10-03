package com.sulake.habbo.navigator.mainview.tabpagedecorators
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateRoomMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.domain.Tabs;
   
   public class MyRoomsTabPageDecorator implements ITabPageDecorator
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_2792:IWindowContainer;
      
      private var var_479:IDropMenuWindow;
      
      public function MyRoomsTabPageDecorator(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
      }
      
      public function refreshCustomContent(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("me_header") as IWindowContainer;
         if(this.var_479 == null)
         {
            this.var_479 = IDropMenuWindow(_loc3_.findChildByName("meSubNavi"));
            this.var_479.procedure = this.onChangeSubNavi;
            this.prepareSubNavi();
         }
         _loc3_.visible = true;
      }
      
      public function tabSelected() : void
      {
         if(this.var_479 != null)
         {
            this.var_479.selection = 0;
         }
      }
      
      public function refreshFooter(param1:IWindowContainer) : void
      {
         var _loc3_:IWindowContainer = param1.getChildByName("me_footer") as IWindowContainer;
         Util.setProc(_loc3_,"create_room_but",this.onCreateRoomClick);
         this._navigator.refreshButton(_loc3_,"create_room",true,null,0);
         _loc3_.visible = true;
      }
      
      public function navigatorOpenedWhileInTab() : void
      {
         this.startSearch();
      }
      
      private function onCreateRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new CanCreateRoomMessageComposer());
      }
      
      private function prepareSubNavi() : void
      {
         var _loc1_:Array = new Array();
         _loc1_.push(this._navigator.getText("navigator.navisel.myrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.wherearemyfriends"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfriendsrooms"));
         _loc1_.push(this._navigator.getText("navigator.navisel.myfavourites"));
         _loc1_.push(this._navigator.getText("navigator.navisel.visitedrooms"));
         this.var_479.populate(_loc1_);
         this.var_479.selection = 0;
      }
      
      private function onChangeSubNavi(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_59)
         {
            return;
         }
         this.startSearch();
      }
      
      private function startSearch() : void
      {
         var _loc1_:int = this.var_479 == null ? 0 : int(this.var_479.selection);
         Logger.log("Me subNavi selection changed: " + _loc1_);
         this._navigator.mainViewCtrl.startSearch(Tabs.const_303,this.getSearchTypeForIndex(_loc1_));
      }
      
      private function getSearchTypeForIndex(param1:int) : int
      {
         if(param1 == 1)
         {
            return Tabs.const_801;
         }
         if(param1 == 2)
         {
            return Tabs.const_660;
         }
         if(param1 == 3)
         {
            return Tabs.const_824;
         }
         if(param1 == 4)
         {
            return Tabs.const_835;
         }
         return Tabs.const_258;
      }
   }
}
