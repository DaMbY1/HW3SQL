SELECT 
    user_id,
    argMin(amount, payment_date) AS first_pay
FROM payments
GROUP BY user_id
ORDER BY user_id;
