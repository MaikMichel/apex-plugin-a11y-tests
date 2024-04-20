function render(p_dynamic_action in apex_plugin.t_dynamic_action,
                p_plugin         in apex_plugin.t_plugin)
                return              apex_plugin.t_dynamic_action_render_result is

  l_result     apex_plugin.t_dynamic_action_render_result;
  l_tag_list   p_dynamic_action.attribute_01%type := p_dynamic_action.attribute_01;
begin
  l_result.javascript_function := 'apxA11y.runAudit';
  l_result.ajax_identifier     := apex_plugin.get_ajax_identifier;
  l_result.attribute_01        := l_tag_list;

  return l_result;
end render;