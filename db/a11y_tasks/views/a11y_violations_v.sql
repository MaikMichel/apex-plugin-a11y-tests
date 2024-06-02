create or replace view a11y_violations_v as
with function array_agg(p_json_array varchar2, p_delimiter varchar2 := ', ') return varchar2 is
  l_json_array json_array_t;
  l_results varchar2(4000 byte);
begin
  if p_json_array is not null then
    l_json_array := json_array_t(p_json_array);
    for l_index in 0..l_json_array.get_Size - 1
    loop
      l_results := l_results || case when l_index > 0 then p_delimiter end || l_json_array.get_String(l_index);
    end loop;
  end if;
  return l_results;
end;
select a1y_id,
       vlt_id,
       vlt_impact,
       array_agg(vlt_tags) vlt_tags,
       vlt_description,
       vlt_help,
       vlt_help_url,
       vlt_nodes,
       json_value(vlt_nodes_size, '$[0]') vlt_nodes_size
  from a11y_results, json_table (a1y_content, '$.violations[*]' columns (
                                    vlt_id              varchar2(4000) path '$.id',
                                    vlt_impact          varchar2(4000) path '$.impact',
                                    vlt_tags            varchar2(4000) format json path '$.tags',
                                    vlt_description     varchar2(4000) path '$.description',
                                    vlt_help            varchar2(4000) path '$.help',
                                    vlt_help_url        varchar2(4000) path '$.helpUrl',
                                    vlt_nodes           clob format json path '$.nodes',
                                    vlt_nodes_size      varchar2(100) format json with wrapper path '$.nodes.size()'
                                   )
  )
/