SELECT
commission_pct AS pct,
DECODE(commission_pct, null, 'no bonus', 0.3, 'light', 0.4, 'medium', 'nothing') AS code
FROM employees
ORDER BY pct;