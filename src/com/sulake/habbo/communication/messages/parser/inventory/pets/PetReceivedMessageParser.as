package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1509:Boolean;
      
      private var var_810:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1509 = param1.readBoolean();
         this.var_810 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1509 + ", " + this.var_810.id + ", " + this.var_810.name + ", " + this.var_810.type + ", " + this.var_810.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1509;
      }
      
      public function get pet() : PetData
      {
         return this.var_810;
      }
   }
}
