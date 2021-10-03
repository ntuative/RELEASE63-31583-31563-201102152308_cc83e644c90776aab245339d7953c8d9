package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_942:BigInteger;
      
      private var var_2294:BigInteger;
      
      private var var_1677:BigInteger;
      
      private var var_2293:BigInteger;
      
      private var var_1344:BigInteger;
      
      private var var_1676:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1344 = param1;
         this.var_1676 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1344.toString() + ",generator: " + this.var_1676.toString() + ",secret: " + param1);
         this.var_942 = new BigInteger();
         this.var_942.fromRadix(param1,param2);
         this.var_2294 = this.var_1676.modPow(this.var_942,this.var_1344);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1677 = new BigInteger();
         this.var_1677.fromRadix(param1,param2);
         this.var_2293 = this.var_1677.modPow(this.var_942,this.var_1344);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2294.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2293.toRadix(param1);
      }
   }
}
