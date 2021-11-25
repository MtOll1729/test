select adverts.category_name from
  (select adverts.category_name, AVG(cost.costs) as avg_cost from
     adverts inner join costs on adverts.id = cost.id 
     group by adverts.category_name ) as tmp
where tmp.avg_cost < 500