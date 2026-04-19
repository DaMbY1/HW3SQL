SELECT
    cart_id,
    length(items) AS items_count,
    arraySum(prices) AS total_price,
    hasAll(items, ['laptop']) AS has_laptop,
    round(arrayAvg(prices), 2) AS avg_item_price
FROM carts
GROUP BY cart_id
ORDER BY total_price DESC;
