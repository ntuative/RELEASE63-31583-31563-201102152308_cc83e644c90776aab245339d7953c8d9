package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_370:int = 1;
      
      public static const const_261:int = 2;
      
      public static const const_303:int = 3;
      
      public static const const_391:int = 4;
      
      public static const const_234:int = 5;
      
      public static const const_387:int = 1;
      
      public static const const_696:int = 2;
      
      public static const const_660:int = 3;
      
      public static const const_801:int = 4;
      
      public static const const_258:int = 5;
      
      public static const const_824:int = 6;
      
      public static const const_835:int = 7;
      
      public static const const_246:int = 8;
      
      public static const const_373:int = 9;
      
      public static const const_1761:int = 10;
      
      public static const const_822:int = 11;
      
      public static const const_507:int = 12;
       
      
      private var var_431:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_431 = new Array();
         this.var_431.push(new Tab(this._navigator,const_370,const_507,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_431.push(new Tab(this._navigator,const_261,const_387,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_431.push(new Tab(this._navigator,const_391,const_822,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1076));
         this.var_431.push(new Tab(this._navigator,const_303,const_258,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_494));
         this.var_431.push(new Tab(this._navigator,const_234,const_246,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_766));
         this.setSelectedTab(const_370);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_391;
      }
      
      public function get tabs() : Array
      {
         return this.var_431;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_431)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_431)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
