package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_785:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_786)
         {
            _structure = null;
            _assets = null;
            var_234 = null;
            var_271 = null;
            var_618 = null;
            var_534 = null;
            var_314 = null;
            if(!var_1241 && var_43)
            {
               var_43.dispose();
            }
            var_43 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_729 = null;
            var_786 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_785[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_785[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_332:
               switch(_loc3_)
               {
                  case AvatarAction.const_631:
                  case AvatarAction.const_503:
                  case AvatarAction.const_348:
                  case AvatarAction.const_687:
                  case AvatarAction.const_402:
                  case AvatarAction.const_732:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_282:
            case AvatarAction.const_728:
            case AvatarAction.const_213:
            case AvatarAction.const_884:
            case AvatarAction.const_805:
            case AvatarAction.const_874:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
