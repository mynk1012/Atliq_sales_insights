# Show all customer records
SELECT * FROM customers;

# Show total number of customers
SELECT count(*) FROM customers;

# Show transactions for Chennai market (market code for chennai is Mark001
SELECT * FROM transactions where market_code='Mark001';

# Show distrinct product codes that were sold in chennai
SELECT distinct product_code FROM transactions where market_code='Mark001';

# Show transactions where currency is US dollars
SELECT * from transactions where currency="USD"

# Show transactions in 2020 join by date table
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;

-- Show total revenue in year 2020
select sum(sales_amount) from transactions 
where year(order_date)=2020

# Show total revenue in year 2020, January Month,
 select sum(sales_amount) from transactions
 where year(order_date)= 2020 and month(order_date)= 1

# Show total revenue in year 2020 in Chennai
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date 
ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001";

-- Show the zone-wise revenues
select zone,sum(sales_amount) as zone_wise_revenue from transactions t join markets m on t.market_code=m.markets_code
group by zone 
order by zone_wise_revenue desc

-- show year wise sales 
 select year(order_date) as year,sum(sales_amount) from transactions
 group by year ;