package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_618:String;
      
      private var var_876:String;
      
      private var var_2691:String;
      
      private var var_1594:String;
      
      private var var_2690:int;
      
      private var var_2693:String;
      
      private var var_2689:int;
      
      private var var_2692:int;
      
      private var _respectTotal:int;
      
      private var var_1113:int;
      
      private var var_745:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_618 = param1.readString();
         this.var_876 = param1.readString();
         this.var_2691 = param1.readString();
         this.var_1594 = param1.readString();
         this.var_2690 = param1.readInteger();
         this.var_2693 = param1.readString();
         this.var_2689 = param1.readInteger();
         this.var_2692 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_1113 = param1.readInteger();
         this.var_745 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get sex() : String
      {
         return this.var_876;
      }
      
      public function get customData() : String
      {
         return this.var_2691;
      }
      
      public function get realName() : String
      {
         return this.var_1594;
      }
      
      public function get tickets() : int
      {
         return this.var_2690;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2693;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2689;
      }
      
      public function get directMail() : int
      {
         return this.var_2692;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1113;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_745;
      }
   }
}
