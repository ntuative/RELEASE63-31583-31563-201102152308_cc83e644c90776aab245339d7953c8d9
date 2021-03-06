package com.sulake.core.window.graphics.renderer
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.TextLabelController;
   import com.sulake.core.window.utils.TextFieldCache;
   import com.sulake.core.window.utils.TextStyle;
   import flash.display.BitmapData;
   import flash.display.IBitmapDrawable;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class LabelRenderer extends SkinRenderer
   {
       
      
      protected var var_995:Matrix;
      
      protected var var_2735:TextStyle;
      
      protected var _cachedTextField:TextField;
      
      public function LabelRenderer(param1:String)
      {
         super(param1);
         this.var_995 = new Matrix();
      }
      
      override public function draw(param1:IWindow, param2:IBitmapDrawable, param3:Rectangle, param4:uint, param5:Boolean) : void
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         if(param2 != null)
         {
            _loc6_ = TextLabelController(param1);
            _loc7_ = _loc6_.textStyle;
            if(_loc7_ != this.var_2735)
            {
               this._cachedTextField = TextFieldCache.getTextFieldByStyle(_loc7_);
               this.var_2735 = _loc7_;
            }
            this.var_995.tx = _loc6_.drawOffsetX;
            this.var_995.ty = _loc6_.drawOffsetY;
            this._cachedTextField.text = _loc6_.text;
            _loc8_ = uint(uint(_loc7_.color));
            this._cachedTextField.textColor = !!_loc6_.hasTextColor ? uint(_loc6_.textColor) : uint(_loc8_);
            BitmapData(param2).draw(this._cachedTextField,this.var_995,null,null,null,false);
            this._cachedTextField.textColor = _loc8_;
         }
      }
      
      override public function isStateDrawable(param1:uint) : Boolean
      {
         return param1 == 0;
      }
   }
}
