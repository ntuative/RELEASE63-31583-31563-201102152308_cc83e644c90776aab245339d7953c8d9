package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_772;
         param1["bitmap"] = const_628;
         param1["border"] = const_836;
         param1["border_notify"] = const_1497;
         param1["button"] = const_541;
         param1["button_thick"] = const_629;
         param1["button_icon"] = const_1484;
         param1["button_group_left"] = const_790;
         param1["button_group_center"] = const_749;
         param1["button_group_right"] = const_782;
         param1["canvas"] = const_715;
         param1["checkbox"] = const_819;
         param1["closebutton"] = const_1031;
         param1["container"] = const_333;
         param1["container_button"] = const_832;
         param1["display_object_wrapper"] = const_826;
         param1["dropmenu"] = const_538;
         param1["dropmenu_item"] = const_524;
         param1["frame"] = const_396;
         param1["frame_notify"] = const_1418;
         param1["header"] = const_881;
         param1["html"] = const_964;
         param1["icon"] = const_1106;
         param1["itemgrid"] = const_1142;
         param1["itemgrid_horizontal"] = const_506;
         param1["itemgrid_vertical"] = const_788;
         param1["itemlist"] = const_1055;
         param1["itemlist_horizontal"] = const_356;
         param1["itemlist_vertical"] = const_339;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1460;
         param1["menu"] = const_1459;
         param1["menu_item"] = const_1547;
         param1["submenu"] = const_1133;
         param1["minimizebox"] = const_1525;
         param1["notify"] = const_1521;
         param1["null"] = const_844;
         param1["password"] = const_761;
         param1["radiobutton"] = const_834;
         param1["region"] = const_741;
         param1["restorebox"] = const_1359;
         param1["scaler"] = const_756;
         param1["scaler_horizontal"] = const_1361;
         param1["scaler_vertical"] = const_1549;
         param1["scrollbar_horizontal"] = const_455;
         param1["scrollbar_vertical"] = const_883;
         param1["scrollbar_slider_button_up"] = const_1160;
         param1["scrollbar_slider_button_down"] = const_1044;
         param1["scrollbar_slider_button_left"] = const_1139;
         param1["scrollbar_slider_button_right"] = const_1009;
         param1["scrollbar_slider_bar_horizontal"] = const_1097;
         param1["scrollbar_slider_bar_vertical"] = const_1052;
         param1["scrollbar_slider_track_horizontal"] = const_1171;
         param1["scrollbar_slider_track_vertical"] = const_1005;
         param1["scrollable_itemlist"] = const_1473;
         param1["scrollable_itemlist_vertical"] = const_566;
         param1["scrollable_itemlist_horizontal"] = const_1195;
         param1["selector"] = const_867;
         param1["selector_list"] = const_860;
         param1["submenu"] = const_1133;
         param1["tab_button"] = const_510;
         param1["tab_container_button"] = const_1116;
         param1["tab_context"] = const_378;
         param1["tab_content"] = const_1201;
         param1["tab_selector"] = const_708;
         param1["text"] = const_504;
         param1["input"] = const_651;
         param1["toolbar"] = const_1374;
         param1["tooltip"] = const_350;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
