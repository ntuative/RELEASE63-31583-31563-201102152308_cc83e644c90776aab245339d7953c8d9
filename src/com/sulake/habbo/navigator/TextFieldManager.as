package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_73:ITextFieldWindow;
      
      private var var_622:Boolean;
      
      private var var_1261:String = "";
      
      private var var_1849:int;
      
      private var var_1848:Function;
      
      private var var_2627:String = "";
      
      private var var_131:IWindowContainer;
      
      private var var_2626:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2625:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_73 = param2;
         this.var_1849 = param3;
         this.var_1848 = param4;
         if(param5 != null)
         {
            this.var_622 = true;
            this.var_1261 = param5;
            this.var_73.text = param5;
         }
         Util.setProcDirectly(this.var_73,this.onInputClick);
         this.var_73.addEventListener(WindowKeyboardEvent.const_180,this.checkEnterPress);
         this.var_73.addEventListener(WindowEvent.const_104,this.checkMaxLen);
         this.var_2626 = this.var_73.textBackground;
         this._orgTextBackgroundColor = this.var_73.textBackgroundColor;
         this.var_2625 = this.var_73.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_73.textBackground = this.var_2626;
         this.var_73.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_73.textColor = this.var_2625;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_73.textBackground = true;
         this.var_73.textBackgroundColor = 4294021019;
         this.var_73.textColor = 4278190080;
         if(this.var_131 == null)
         {
            this.var_131 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_131,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_73.parent).addChild(this.var_131);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_131.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_131.findChildByName("border").width = _loc2_.width + 15;
         this.var_131.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_73.getLocalPosition(_loc3_);
         this.var_131.x = _loc3_.x;
         this.var_131.y = _loc3_.y - this.var_131.height + 3;
         var _loc4_:IWindow = this.var_131.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_131.width / 2 - _loc4_.width / 2;
         this.var_131.x += (this.var_73.width - this.var_131.width) / 2;
         this.var_131.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1261 != null)
         {
            this.var_73.text = this.var_1261;
            this.var_622 = true;
         }
         else
         {
            this.var_73.text = "";
            this.var_622 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_622)
         {
            return this.var_2627;
         }
         return this.var_73.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_622 = false;
         this.var_73.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_131 != null)
         {
            this.var_131.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_73;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_622 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_293)
         {
            return;
         }
         if(!this.var_622)
         {
            return;
         }
         this.var_73.text = this.var_2627;
         this.var_622 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1848 != null)
            {
               this.var_1848();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_73.text;
         if(_loc2_.length > this.var_1849)
         {
            this.var_73.text = _loc2_.substring(0,this.var_1849);
         }
      }
   }
}
