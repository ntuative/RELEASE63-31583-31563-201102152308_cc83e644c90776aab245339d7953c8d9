package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1702:IID;
      
      private var var_786:Boolean;
      
      private var var_1089:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1702 = param1;
         this.var_1089 = new Array();
         this.var_786 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1702;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_786;
      }
      
      public function get receivers() : Array
      {
         return this.var_1089;
      }
      
      public function dispose() : void
      {
         if(!this.var_786)
         {
            this.var_786 = true;
            this.var_1702 = null;
            while(this.var_1089.length > 0)
            {
               this.var_1089.pop();
            }
            this.var_1089 = null;
         }
      }
   }
}
