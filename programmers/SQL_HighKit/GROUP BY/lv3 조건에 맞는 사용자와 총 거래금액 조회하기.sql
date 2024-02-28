SELECT USER_ID, NICKNAME, sum(price) as TOTAL_SALES
from used_goods_board join used_goods_user on used_goods_board.writer_id = used_goods_user.user_id and used_goods_board.status = "DONE"
group by user_id
having sum(price) >= 700000
order by sum(price) asc