SELECT inc.point, inc.date, inc.inc, out.out FROM Income_o inc LEFT JOIN Outcome_o out on inc.date = out.date AND inc.point = out.point
UNION
SELECT out.point, out.date, inc.inc, out.out FROM Income_o inc RIGHT JOIN Outcome_o out on inc.date = out.date AND inc.point = out.point;