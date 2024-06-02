create or replace view a11y_passes_v as
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
       pss_id,
       pss_impact,
       array_agg(pss_tags) pss_tags,
       pss_description,
       pss_help,
       pss_help_url,
       pss_nodes,
       json_value(pss_nodes_size, '$[0]') pss_nodes_size
  from a11y_results, json_table (a1y_content, '$.passes[*]' columns (
                                    pss_id              varchar2(4000) path '$.id',
                                    pss_impact          varchar2(4000) path '$.impact',
                                    pss_tags            varchar2(4000) format json path '$.tags',
                                    pss_description     varchar2(4000) path '$.description',
                                    pss_help            varchar2(4000) path '$.help',
                                    pss_help_url        varchar2(4000) path '$.helpUrl',
                                    pss_nodes           clob format json path '$.nodes',
                                    pss_nodes_size      varchar2(100) format json with wrapper path '$.nodes.size()'
                                   )
  )
/