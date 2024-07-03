with payments as (

select id as paymentid,
orderid,
paymentmethod,
status,
amount,
created
from {{source('stripe','Payment')}}
)

select * from payments