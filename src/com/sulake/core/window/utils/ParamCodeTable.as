package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_174;
         param1["bound_to_parent_rect"] = const_97;
         param1["child_window"] = const_1100;
         param1["embedded_controller"] = const_1019;
         param1["resize_to_accommodate_children"] = const_63;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_621;
         param1["mouse_dragging_target"] = const_233;
         param1["mouse_dragging_trigger"] = const_344;
         param1["mouse_scaling_target"] = const_313;
         param1["mouse_scaling_trigger"] = const_434;
         param1["horizontal_mouse_scaling_trigger"] = const_254;
         param1["vertical_mouse_scaling_trigger"] = const_269;
         param1["observe_parent_input_events"] = const_1018;
         param1["optimize_region_to_layout_size"] = const_537;
         param1["parent_window"] = const_1165;
         param1["relative_horizontal_scale_center"] = const_193;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_377;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_1137;
         param1["relative_scale_fixed"] = const_854;
         param1["relative_scale_move"] = const_1065;
         param1["relative_scale_strech"] = const_1021;
         param1["relative_vertical_scale_center"] = const_172;
         param1["relative_vertical_scale_fixed"] = const_131;
         param1["relative_vertical_scale_move"] = const_334;
         param1["relative_vertical_scale_strech"] = const_345;
         param1["on_resize_align_left"] = const_840;
         param1["on_resize_align_right"] = const_446;
         param1["on_resize_align_center"] = const_500;
         param1["on_resize_align_top"] = const_786;
         param1["on_resize_align_bottom"] = const_420;
         param1["on_resize_align_middle"] = const_477;
         param1["on_accommodate_align_left"] = const_987;
         param1["on_accommodate_align_right"] = const_479;
         param1["on_accommodate_align_center"] = const_676;
         param1["on_accommodate_align_top"] = const_999;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_724;
         param1["route_input_events_to_parent"] = const_559;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_1134;
         param1["scalable_with_mouse"] = const_1194;
         param1["reflect_horizontal_resize_to_parent"] = const_514;
         param1["reflect_vertical_resize_to_parent"] = const_493;
         param1["reflect_resize_to_parent"] = const_276;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
