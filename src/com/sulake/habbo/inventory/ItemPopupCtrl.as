package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      public static const const_1003:int = 1;
      
      public static const const_570:int = 2;
      
      private static const const_906:int = 5;
      
      private static const const_1240:int = 250;
      
      private static const const_1242:int = 100;
      
      private static const const_1239:int = 180;
      
      private static const const_1241:int = 200;
       
      
      private var var_335:Timer;
      
      private var var_334:Timer;
      
      private var _assets:IAssetLibrary;
      
      private var var_74:IWindowContainer;
      
      private var _parent:IWindowContainer;
      
      private var var_1599:int = 2;
      
      private var var_698:BitmapData;
      
      private var var_862:BitmapData;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         this.var_335 = new Timer(const_1240,1);
         this.var_334 = new Timer(const_1242,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         this.var_74 = param1;
         this.var_74.visible = false;
         this._assets = param2;
         this.var_335.addEventListener(TimerEvent.TIMER,this.onDisplayTimer);
         this.var_334.addEventListener(TimerEvent.TIMER,this.onHideTimer);
         var _loc3_:BitmapDataAsset = this._assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_862 = _loc3_.content as BitmapData;
         }
         _loc3_ = this._assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            this.var_698 = _loc3_.content as BitmapData;
         }
      }
      
      public function dispose() : void
      {
         if(this.var_335 != null)
         {
            this.var_335.removeEventListener(TimerEvent.TIMER,this.onDisplayTimer);
            this.var_335.stop();
            this.var_335 = null;
         }
         if(this.var_334 != null)
         {
            this.var_334.removeEventListener(TimerEvent.TIMER,this.onHideTimer);
            this.var_334.stop();
            this.var_334 = null;
         }
         this._assets = null;
         this.var_74 = null;
         this._parent = null;
         this.var_698 = null;
         this.var_862 = null;
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(this.var_74 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_74);
         }
         this._parent = param1;
         this.var_1599 = param4;
         var _loc5_:ITextWindow = ITextWindow(this.var_74.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = this.var_74.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1239,param3.width),Math.min(const_1241,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (this.var_74.width - _loc6_.width) / 2;
            this.var_74.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      public function show() : void
      {
         this.var_334.reset();
         this.var_335.reset();
         if(this._parent == null)
         {
            return;
         }
         this.var_74.visible = true;
         this._parent.addChild(this.var_74);
         this.refreshArrow(this.var_1599);
         switch(this.var_1599)
         {
            case const_1003:
               this.var_74.x = -1 * this.var_74.width - const_906;
               break;
            case const_570:
               this.var_74.x = this._parent.width + const_906;
         }
         this.var_74.y = (this._parent.height - this.var_74.height) / 2;
      }
      
      public function hide() : void
      {
         this.var_74.visible = false;
         this.var_334.reset();
         this.var_335.reset();
         if(this._parent != null)
         {
            this._parent.removeChild(this.var_74);
         }
      }
      
      public function showDelayed() : void
      {
         this.var_334.reset();
         this.var_335.reset();
         this.var_335.start();
      }
      
      public function hideDelayed() : void
      {
         this.var_334.reset();
         this.var_335.reset();
         this.var_334.start();
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(this.var_74 == null || this.var_74.disposed)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this.var_74.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_1003:
               _loc2_.bitmap = this.var_862.clone();
               _loc2_.width = this.var_862.width;
               _loc2_.height = this.var_862.height;
               _loc2_.y = (this.var_74.height - this.var_862.height) / 2;
               _loc2_.x = this.var_74.width - 1;
               break;
            case const_570:
               _loc2_.bitmap = this.var_698.clone();
               _loc2_.width = this.var_698.width;
               _loc2_.height = this.var_698.height;
               _loc2_.y = (this.var_74.height - this.var_698.height) / 2;
               _loc2_.x = -1 * this.var_698.width + 1;
         }
         _loc2_.invalidate();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         this.show();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         this.hide();
      }
   }
}
