select toStartOfHour(dt)                 dt_hour
     , count()                           qty_rows
     , uniq(wh_id)                       uniq_wh
     , uniq(shk_id)                      qty_shk
     , countIf(shk_id, state_id = 'RSP') qty_shk_rsp
     , countIf(shk_id, state_id = 'SFP') qty_shk_sfp
     , countIf(shk_id, state_id = 'ASP') qty_shk_asp
     , countIf(shk_id, state_id = 'OSS') qty_shk_oss
     , sum(price)                        sum_price
from safepack_repack
group by dt_hour
