select top 10 * from Transactions;

select transaction_id, item_qty, unit_price, item_qty*unit_price as total_sales from Transactions;

select product_category, sum(item_qty * unit_price) as total_sales from Transactions
group by product_category
order by total_sales desc;

select store_location, sum(item_qty * unit_price) as total_sales from Transactions
group by store_location
order by total_sales desc;

select transaction_date, sum(item_qty * unit_price) as total_sales from Transactions
group by transaction_date
order by transaction_date;

select top 5 product_detail, sum(cast(item_qty as int)) as total_qty_sold from Transactions
group by product_detail
order by total_qty_sold desc;

select transaction_date, product_category, sum(item_qty * unit_price) as total_sales from Transactions
where transaction_date between '2023-1-1' and '2023-1-10'
group by transaction_date, product_category
order by transaction_date;


