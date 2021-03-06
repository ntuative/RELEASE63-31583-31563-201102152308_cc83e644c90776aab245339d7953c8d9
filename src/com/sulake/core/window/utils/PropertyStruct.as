package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_141:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_262:String = "uint";
      
      public static const const_238:String = "Number";
      
      public static const const_37:String = "Boolean";
      
      public static const const_50:String = "String";
      
      public static const const_226:String = "Point";
      
      public static const const_208:String = "Rectangle";
      
      public static const const_142:String = "Array";
      
      public static const const_220:String = "Map";
       
      
      private var var_600:String;
      
      private var var_174:Object;
      
      private var _type:String;
      
      private var var_2436:Boolean;
      
      private var var_2765:Boolean;
      
      private var var_2435:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_600 = param1;
         this.var_174 = param2;
         this._type = param3;
         this.var_2436 = param4;
         this.var_2765 = param3 == const_220 || param3 == const_142 || param3 == const_226 || param3 == const_208;
         this.var_2435 = param5;
      }
      
      public function get key() : String
      {
         return this.var_600;
      }
      
      public function get value() : Object
      {
         return this.var_174;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2436;
      }
      
      public function get range() : Array
      {
         return this.var_2435;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_141:
               return "0x" + uint(this.var_174).toString(16);
            case const_37:
               return Boolean(this.var_174) == true ? "true" : "false";
            case const_226:
               return "Point(" + Point(this.var_174).x + ", " + Point(this.var_174).y + ")";
            case const_208:
               return "Rectangle(" + Rectangle(this.var_174).x + ", " + Rectangle(this.var_174).y + ", " + Rectangle(this.var_174).width + ", " + Rectangle(this.var_174).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_220:
               _loc3_ = this.var_174 as Map;
               _loc1_ = "<var key=\"" + this.var_600 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_142:
               _loc4_ = this.var_174 as Array;
               _loc1_ = "<var key=\"" + this.var_600 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_226:
               _loc5_ = this.var_174 as Point;
               _loc1_ = "<var key=\"" + this.var_600 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_208:
               _loc6_ = this.var_174 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_600 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_141:
               _loc1_ = "<var key=\"" + this.var_600 + "\" value=\"" + "0x" + uint(this.var_174).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_600 + "\" value=\"" + this.var_174 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
