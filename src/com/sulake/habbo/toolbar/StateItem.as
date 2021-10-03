package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var _id:String;
      
      private var var_1460:Boolean;
      
      private var var_1993:Boolean;
      
      private var var_197:int = 120;
      
      private var var_1490:String;
      
      private var var_1321:String = "-1";
      
      private var var_1489:String = "-1";
      
      private var var_1491:String = "-1";
      
      private var var_1992:String;
      
      private var var_444:String;
      
      private var _frames:XMLList;
      
      private var var_343:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         this._id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            this.var_1460 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            this.var_1993 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            this.var_197 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            this.var_1490 = param1.@namebase;
         }
         else
         {
            this.var_1490 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            this.var_1321 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            this.var_1489 = param1.@nextState;
         }
         else
         {
            this.var_1489 = this._id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            this.var_1491 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            this.var_1992 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            this.var_444 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            this._frames = _loc3_;
         }
         if(param1.attribute("label").length() > 0)
         {
            this.var_343 = param1.@label;
         }
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get loop() : Boolean
      {
         return this.var_1460;
      }
      
      public function get bounce() : Boolean
      {
         return this.var_1993;
      }
      
      public function get timer() : int
      {
         return this.var_197;
      }
      
      public function get nameBase() : String
      {
         return this.var_1490;
      }
      
      public function get hasStateOver() : Boolean
      {
         return this.var_1321 != "-1";
      }
      
      public function get stateOver() : String
      {
         return this.var_1321;
      }
      
      public function get nextState() : String
      {
         return this.var_1489;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return this.var_1491 != "-1";
      }
      
      public function get defaultState() : String
      {
         return this.var_1491;
      }
      
      public function get tooltip() : String
      {
         return this.var_1992;
      }
      
      public function get frames() : XMLList
      {
         return this._frames;
      }
      
      public function get background() : String
      {
         return this.var_444;
      }
      
      public function get label() : String
      {
         return this.var_343;
      }
   }
}
