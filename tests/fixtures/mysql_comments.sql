# Was missing (SCA-701): the merge used to double count.
-- Sorted DESC because the caller assumes the first row is newest.
select id
from events;

select 1; # This should work hopefully.

select '# SCA-902' as literal_hash,
       'it''s # SCA-903' as escaped_quote,
       "# SCA-904" as quoted_identifier,
       $$ # SCA-905 $$ as body,
       {{ "# SCA-906" }} as jinja_expr;
{% set label = '# SCA-907' %}

# SCA-702