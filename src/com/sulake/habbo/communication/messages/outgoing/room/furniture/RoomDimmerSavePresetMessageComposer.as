package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2021:int;
      
      private var var_2020:int;
      
      private var var_2018:String;
      
      private var var_2022:int;
      
      private var var_2019:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2021 = param1;
         this.var_2020 = param2;
         this.var_2018 = param3;
         this.var_2022 = param4;
         this.var_2019 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2021,this.var_2020,this.var_2018,this.var_2022,int(this.var_2019)];
      }
      
      public function dispose() : void
      {
      }
   }
}
