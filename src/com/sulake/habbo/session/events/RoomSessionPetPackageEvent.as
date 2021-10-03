package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_576:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_532:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_353:int = -1;
      
      private var var_1192:int = -1;
      
      private var var_1544:int = -1;
      
      private var _color:String = "";
      
      private var var_1600:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param8,param9);
         this.var_353 = param3;
         this.var_1192 = param4;
         this.var_1544 = param5;
         this._color = param6;
         this.var_1600 = param7;
      }
      
      public function get objectId() : int
      {
         return this.var_353;
      }
      
      public function get petType() : int
      {
         return this.var_1192;
      }
      
      public function get breed() : int
      {
         return this.var_1544;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1600;
      }
   }
}
