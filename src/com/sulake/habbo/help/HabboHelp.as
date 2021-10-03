package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.register.RegistrationUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDSessionDataManager;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_170:IHabboToolbar;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_299:IHabboCommunicationManager;
      
      private var var_899:IHabboLocalizationManager;
      
      private var var_898:IHabboConfigurationManager;
      
      private var var_392:ISessionDataManager;
      
      private var var_1102:FaqIndex;
      
      private var _incomingMessages:IncomingMessages;
      
      private var var_62:HelpUI;
      
      private var var_173:TutorialUI;
      
      private var var_736:HotelMergeUI;
      
      private var var_897:RegistrationUI;
      
      private var var_1368:CallForHelpData;
      
      private var var_2375:UserRegistry;
      
      private var var_2374:String = "";
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1368 = new CallForHelpData();
         this.var_2375 = new UserRegistry();
         super(param1,param2,param3);
         this._assetLibrary = param3;
         this.var_1102 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
      }
      
      public function set ownUserName(param1:String) : void
      {
         this.var_2374 = param1;
      }
      
      public function get ownUserName() : String
      {
         return this.var_2374;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return this.var_1368;
      }
      
      public function get userRegistry() : UserRegistry
      {
         return this.var_2375;
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return this.var_899;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return this._windowManager;
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return this.var_170;
      }
      
      public function get sessionDataManager() : ISessionDataManager
      {
         return this.var_392;
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return this.var_173;
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return this.var_736;
      }
      
      override public function dispose() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.dispose();
            this.var_62 = null;
         }
         if(this.var_173 != null)
         {
            this.var_173.dispose();
            this.var_173 = null;
         }
         if(this.var_736)
         {
            this.var_736.dispose();
            this.var_736 = null;
         }
         if(this.var_897 != null)
         {
            this.var_897.dispose();
            this.var_897 = null;
         }
         if(this.var_1102 != null)
         {
            this.var_1102.dispose();
            this.var_1102 = null;
         }
         this._incomingMessages = null;
         if(this.var_170)
         {
            this.var_170.release(new IIDHabboToolbar());
            this.var_170 = null;
         }
         if(this.var_899)
         {
            this.var_899.release(new IIDHabboLocalizationManager());
            this.var_899 = null;
         }
         if(this.var_299)
         {
            this.var_299.release(new IIDHabboCommunicationManager());
            this.var_299 = null;
         }
         if(this.var_898)
         {
            this.var_898.release(new IIDHabboConfigurationManager());
            this.var_898 = null;
         }
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this.var_392 != null)
         {
            this.var_392.release(new IIDSessionDataManager());
            this.var_392 = null;
         }
         super.dispose();
      }
      
      public function showUI(param1:String = null) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.hideUI();
         }
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.tellUI(param1,param2);
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.updateCallForGuideBotUI(true);
         }
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(this.var_62 != null)
         {
            this.var_62.updateCallForGuideBotUI(false);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return this.var_1102;
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(this.var_299 != null && param1 != null)
         {
            this.var_299.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(this.var_898 == null)
         {
            return param1;
         }
         return this.var_898.getKey(param1,param2,param3);
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showCallForHelpReply(param1);
         }
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(this.var_62 != null)
         {
            this.var_62.showCallForHelpResult(param1);
         }
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         this.var_1368.reportedUserId = param1;
         this.var_1368.reportedUserName = param2;
         this.var_62.showUI(HabboHelpViewEnum.const_399);
      }
      
      private function toggleHelpUI() : void
      {
         if(this.var_62 == null)
         {
            if(!this.createHelpUI())
            {
               return;
            }
         }
         this.var_62.toggleUI();
      }
      
      private function createHelpUI() : Boolean
      {
         if(this.var_62 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_62 = new HelpUI(this,this._assetLibrary,this._windowManager,this.var_899,this.var_170);
         }
         return this.var_62 != null;
      }
      
      private function createTutorialUI() : Boolean
      {
         if(this.var_173 == null && this._assetLibrary != null && this._windowManager != null)
         {
            this.var_173 = new TutorialUI(this);
         }
         return this.var_173 != null;
      }
      
      public function removeTutorialUI() : void
      {
         if(this.var_173 != null)
         {
            this.var_173.dispose();
            this.var_173 = null;
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!this.var_736)
         {
            this.var_736 = new HotelMergeUI(this);
         }
         this.var_736.startNameChange();
      }
      
      public function initRegistrationUI() : void
      {
         if(!this.var_897)
         {
            this.var_897 = new RegistrationUI(this);
         }
         this.var_897.showRegistrationView();
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            this.removeTutorialUI();
            return;
         }
         if(this.var_173 == null)
         {
            if(!this.createTutorialUI())
            {
               return;
            }
         }
         this.var_173.update(param1,param2,param3);
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_299 = IHabboCommunicationManager(param2);
         this._incomingMessages = new IncomingMessages(this,this.var_299);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_170 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_899 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_898 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_91,this.onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_95,this.onRoomSessionEvent);
         this.var_170.events.addEventListener(HabboToolbarEvent.const_67,this.onHabboToolbarEvent);
         this.var_170.events.addEventListener(HabboToolbarEvent.const_39,this.onHabboToolbarEvent);
         this.createHelpUI();
         this.setHabboToolbarIcon();
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_392 = param2 as ISessionDataManager;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_91:
               if(this.var_62 != null)
               {
                  this.var_62.setRoomSessionStatus(true);
               }
               if(this.var_173 != null)
               {
                  this.var_173.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_95:
               if(this.var_62 != null)
               {
                  this.var_62.setRoomSessionStatus(false);
               }
               if(this.var_173 != null)
               {
                  this.var_173.setRoomSessionStatus(false);
               }
               this.userRegistry.unregisterRoom();
         }
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(this.var_170 != null)
         {
            this.var_170.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_112,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_67)
         {
            this.setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_39)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               this.toggleHelpUI();
               return;
            }
         }
      }
   }
}
