SELECT
    cart_id,
    length(items) AS items_count,
    arraySum(prices) AS total_price,
    hasAll(items, ['laptop']) AS has_laptop,
    arrayAvg(prices) AS avg_item_price
FROM carts
GROUP BY
    cart_id, items, prices
ORDER BY cart_id;
