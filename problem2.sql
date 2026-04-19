SELECT
    user_id,
    countIf(action = 'purchase') AS num_of_purchase, 
    sumIf(toInt32(amount), action = 'purchase') AS sum_of_purchase
FROM user_actions
GROUP BY user_id
ORDER BY user_id;
