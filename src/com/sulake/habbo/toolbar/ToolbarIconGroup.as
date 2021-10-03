package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   
   public class ToolbarIconGroup
   {
       
      
      private var var_277:Array;
      
      private var var_686:Array;
      
      private var var_1286:Array;
      
      private var var_1287:Array;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_38:IWindowContainer;
      
      private var _events:IEventDispatcher;
      
      private var var_571:ToolbarBarMenuAnimator;
      
      private var var_1017:Number;
      
      private var var_509:String;
      
      private var var_2169:Number;
      
      private var var_1288:Number;
      
      private var var_2170:int = 5;
      
      private var var_2171:int;
      
      private var var_157:Number;
      
      private var var_2172:XML;
      
      public function ToolbarIconGroup(param1:IHabboWindowManager, param2:IAssetLibrary, param3:int, param4:IEventDispatcher, param5:IWindowContainer, param6:ToolbarBarMenuAnimator, param7:Number)
      {
         this.var_277 = new Array();
         this.var_686 = new Array();
         this.var_1286 = new Array();
         this.var_1287 = new Array();
         super();
         this._windowManager = param1;
         this._assetLibrary = param2;
         this.var_38 = param5;
         this._events = param4;
         this.var_571 = param6;
         this.var_157 = param7;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         while(this.var_277.length > 0)
         {
            this.var_686.shift();
            _loc1_ = this.var_277.shift();
            _loc1_.dispose();
            _loc1_ = null;
         }
      }
      
      public function acceptsIcon(param1:String) : Boolean
      {
         return this.var_1287.indexOf(param1) > -1;
      }
      
      public function addContentIndexFromXmlList(param1:XML) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return false;
         }
         this.var_2172 = param1;
         _loc4_ = param1.elements("icon");
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length())
         {
            _loc8_ = _loc4_[_loc7_];
            _loc2_ = "null";
            if(_loc2_ != null)
            {
               if(!this.containsIcon(_loc2_))
               {
                  _loc6_ = this.createIconObject(_loc2_);
                  if(_loc6_ == null)
                  {
                     return false;
                  }
                  _loc6_.defineFromXML(_loc8_);
                  this.var_1286.push(_loc2_);
                  _loc5_ = _loc8_.elements("dock");
                  if(_loc5_.length() > 0)
                  {
                     _loc9_ = 0;
                     while(_loc9_ < _loc5_.length())
                     {
                        _loc3_ = "null";
                        this.var_1287.push(_loc3_);
                        _loc6_.dockMenu(_loc3_,this.getMenuYieldList(_loc3_),_loc5_[_loc9_].@locktoicon == "true");
                        _loc9_++;
                     }
                  }
                  else
                  {
                     this.var_1287.push(_loc2_);
                     if(_loc8_.elements("nodock").length() == 0)
                     {
                        _loc6_.dockMenu(_loc2_);
                     }
                  }
               }
            }
            _loc7_++;
         }
         return true;
      }
      
      public function getMenuYieldList(param1:String) : Array
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:XMLList = this.var_2172.elements("menu");
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length())
         {
            if(HabboToolbarIconEnum[_loc3_[_loc5_].@id] == param1)
            {
               _loc4_ = _loc3_[_loc5_].elements("yield");
               _loc6_ = 0;
               while(_loc6_ < _loc4_.length())
               {
                  _loc2_.push(HabboToolbarIconEnum[_loc4_[_loc6_].@id]);
                  _loc6_++;
               }
            }
            _loc5_++;
         }
         return _loc2_;
      }
      
      public function setIcon(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = null;
         _loc3_ = this.getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIcon(param2);
            this.alignItems();
         }
      }
      
      public function setContent(param1:String, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         _loc3_ = this.getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIconBitmapData(param2);
            this.alignItems();
         }
      }
      
      public function removeContent(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = this.var_686.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.getIconById(param1);
            if(_loc3_ != null)
            {
               _loc3_.setIcon(false);
            }
         }
      }
      
      public function containsIcon(param1:String) : Boolean
      {
         return this.var_686.indexOf(param1) > -1;
      }
      
      public function get size() : Number
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_277.length)
         {
            if(this.var_277[_loc2_].exists)
            {
               _loc1_ += this.var_1288;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get iconCount() : int
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_277.length)
         {
            if(this.var_277[_loc2_].exists)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set defaultIconSize(param1:Number) : void
      {
         this.var_2169 = param1;
      }
      
      public function get defaultIconSize() : Number
      {
         return this.var_2169;
      }
      
      public function set iconSize(param1:Number) : void
      {
         this.var_1288 = param1;
      }
      
      public function get iconSize() : Number
      {
         return this.var_1288;
      }
      
      public function get toolbarUsableWidth() : Number
      {
         return this.var_157;
      }
      
      public function set windowMargin(param1:int) : void
      {
         this.var_2170 = param1;
      }
      
      public function get windowMargin() : int
      {
         return this.var_2170;
      }
      
      public function set windowBottomMargin(param1:int) : void
      {
         this.var_2171 = param1;
      }
      
      public function get windowBottomMargin() : int
      {
         return this.var_2171;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_1017 = param1;
         this.alignItems();
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_509 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_509;
      }
      
      private function alignItems() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < this.var_1286.length)
         {
            _loc2_ = this.var_686.indexOf(this.var_1286[_loc4_]);
            if(_loc2_ > -1)
            {
               _loc1_ = this.var_277[_loc2_];
               if(_loc1_.exists)
               {
                  _loc1_.changePosition(this.var_1017 + _loc3_);
                  _loc3_ += this.var_1288;
               }
            }
            _loc4_++;
         }
      }
      
      public function getIconById(param1:String) : ToolbarIcon
      {
         if(!this.containsIcon(param1))
         {
            return null;
         }
         return this.var_277[this.var_686.indexOf(param1)];
      }
      
      public function getIconByMenuId(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_277.length)
         {
            _loc2_ = this.var_277[_loc3_];
            if(_loc2_ != null)
            {
               if(_loc2_.docksMenu(param1))
               {
                  return _loc2_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      private function createIconObject(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         _loc2_ = this.getIconById(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = new ToolbarIcon(this,this._windowManager,this._assetLibrary,param1,this._events,this.var_571);
         this.var_38.addChild(_loc2_.window);
         this.var_686.push(param1);
         this.var_277.push(_loc2_);
         return _loc2_;
      }
   }
}
