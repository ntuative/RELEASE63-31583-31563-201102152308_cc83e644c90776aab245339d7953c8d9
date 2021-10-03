package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2011:int;
      
      private var var_1595:String;
      
      private var var_2193:String;
      
      private var var_2456:Boolean;
      
      private var var_2457:Boolean;
      
      private var var_2459:int;
      
      private var var_2192:String;
      
      private var var_2458:String;
      
      private var var_1594:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2011 = param1.readInteger();
         this.var_1595 = param1.readString();
         this.var_2193 = param1.readString();
         this.var_2456 = param1.readBoolean();
         this.var_2457 = param1.readBoolean();
         param1.readString();
         this.var_2459 = param1.readInteger();
         this.var_2192 = param1.readString();
         this.var_2458 = param1.readString();
         this.var_1594 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2011;
      }
      
      public function get avatarName() : String
      {
         return this.var_1595;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2193;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2456;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2457;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2459;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2192;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2458;
      }
      
      public function get realName() : String
      {
         return this.var_1594;
      }
   }
}
