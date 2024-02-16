{#
    This macro fixes the boolean type of store_and_fwd_flag
#}

{% macro fix_store_and_fwd_flag(store_and_fwd_flag) -%}

    case {{ dbt.safe_cast("store_and_fwd_flag", api.Column.translate_type("boolean")) }}  
        when false then 'N'
        when true then 'Y'
        else null
    end

{%- endmacro %}