package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1877:int = 0;
      
      public static const const_1586:int = 1;
      
      public static const const_1373:int = 2;
      
      public static const const_1804:int = 3;
      
      public static const const_1811:int = 4;
      
      public static const const_1866:int = 5;
      
      public static const const_1398:int = 10;
      
      public static const const_1765:int = 11;
      
      public static const const_1835:int = 12;
      
      public static const const_1859:int = 13;
      
      public static const const_1918:int = 16;
      
      public static const const_1718:int = 17;
      
      public static const const_1736:int = 18;
      
      public static const const_1712:int = 19;
      
      public static const const_1730:int = 20;
      
      public static const const_1895:int = 22;
      
      public static const const_1782:int = 23;
      
      public static const const_1874:int = 24;
      
      public static const const_1931:int = 25;
      
      public static const const_1772:int = 26;
      
      public static const const_1799:int = 27;
      
      public static const const_1881:int = 28;
      
      public static const const_1924:int = 29;
      
      public static const const_1933:int = 100;
      
      public static const const_1862:int = 101;
      
      public static const const_1815:int = 102;
      
      public static const const_1791:int = 103;
      
      public static const const_1909:int = 104;
      
      public static const const_1861:int = 105;
      
      public static const const_1770:int = 106;
      
      public static const const_1780:int = 107;
      
      public static const const_1915:int = 108;
      
      public static const const_1743:int = 109;
      
      public static const const_1934:int = 110;
      
      public static const const_1825:int = 111;
      
      public static const const_1713:int = 112;
      
      public static const const_1857:int = 113;
      
      public static const const_1858:int = 114;
      
      public static const const_1839:int = 115;
      
      public static const const_1846:int = 116;
      
      public static const const_1897:int = 117;
      
      public static const const_1751:int = 118;
      
      public static const const_1737:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1586:
            case const_1398:
               return "banned";
            case const_1373:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
