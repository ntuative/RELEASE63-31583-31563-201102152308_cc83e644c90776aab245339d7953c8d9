package com.sulake.habbo.navigator.roomthumbnails
{
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ThumbnailImageConfiguration
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _id:int;
      
      private var _type:int;
      
      private var var_1772:String;
      
      private var var_1773:BitmapData;
      
      private var var_200:Boolean;
      
      private var var_1770:BitmapData;
      
      private var var_604:IBitmapWrapperWindow;
      
      private var var_1771:Rectangle;
      
      private var var_1384:int = 1;
      
      public function ThumbnailImageConfiguration(param1:HabboNavigator, param2:int, param3:int, param4:String, param5:BitmapData)
      {
         super();
         this._navigator = param1;
         this._id = param2;
         this._type = param3;
         this.var_1772 = param4;
         this.var_1770 = param5;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get picName() : String
      {
         return this.var_1772;
      }
      
      public function getImg() : BitmapData
      {
         if(this.var_1773 == null)
         {
            this.var_1773 = this._navigator.getButtonImage(this.var_1772);
         }
         return this.var_1773;
      }
      
      public function registerListImg(param1:IBitmapWrapperWindow) : void
      {
         this.var_604 = param1;
         this.refreshListImg();
      }
      
      public function copyTo(param1:BitmapData) : void
      {
         var _loc2_:BitmapData = this.getImg();
         param1.copyPixels(_loc2_,_loc2_.rect,new Point((param1.width - _loc2_.width) / 2,param1.height - _loc2_.height),null,null,true);
      }
      
      public function setSelected(param1:Boolean) : void
      {
         if(this.var_200 == param1)
         {
            return;
         }
         this.var_200 = param1;
         this.refreshListImg();
      }
      
      private function refreshListImg() : void
      {
         var _loc1_:* = null;
         if(this.var_1771 == null)
         {
            _loc1_ = this.var_604.bitmap.rect;
            this.var_1771 = new Rectangle(this.var_1384,this.var_1384,_loc1_.width - 2 * this.var_1384,_loc1_.height - 2 * this.var_1384);
         }
         this.var_604.bitmap.fillRect(this.var_604.bitmap.rect,4281545523);
         this.var_604.bitmap.fillRect(this.var_1771,4284900966);
         this.copyTo(this.var_604.bitmap);
         if(this.var_200)
         {
            this.var_604.bitmap.copyPixels(this.var_1770,this.var_1770.rect,new Point(0,0),null,null,true);
         }
         this.var_604.invalidate();
      }
   }
}
