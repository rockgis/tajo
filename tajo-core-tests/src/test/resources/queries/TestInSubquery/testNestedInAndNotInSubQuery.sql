select c_name from customer
  where c_nationkey in (
    select n_nationkey from nation where n_name like 'C%' and n_regionkey
    not in (
      select count(*) from region where r_regionkey > 0 and r_regionkey < 3))