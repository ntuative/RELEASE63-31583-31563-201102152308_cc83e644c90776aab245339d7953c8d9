package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1747:int = 1;
      
      public static const const_1414:int = 2;
       
      
      private var var_840:String;
      
      private var var_2671:int;
      
      private var var_2673:int;
      
      private var var_2675:int;
      
      private var var_2669:int;
      
      private var var_2674:Boolean;
      
      private var var_2324:Boolean;
      
      private var var_2323:int;
      
      private var var_2325:int;
      
      private var var_2672:Boolean;
      
      private var var_2670:int;
      
      private var var_2668:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_840 = param1.readString();
         this.var_2671 = param1.readInteger();
         this.var_2673 = param1.readInteger();
         this.var_2675 = param1.readInteger();
         this.var_2669 = param1.readInteger();
         this.var_2674 = param1.readBoolean();
         this.var_2324 = param1.readBoolean();
         this.var_2323 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_2672 = param1.readBoolean();
         this.var_2670 = param1.readInteger();
         this.var_2668 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_840;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2671;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2673;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2675;
      }
      
      public function get responseType() : int
      {
         return this.var_2669;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2674;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2324;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2323;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2325;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2672;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2670;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2668;
      }
   }
}
