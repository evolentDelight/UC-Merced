select count(*)
from(
select c_name
from customer, orders, lineitem, partsupp, supplier, nation, region
where c_custkey = o_custkey and o_orderkey = l_orderkey and l_suppkey = ps_suppkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name = "EUROPE"

except

select c_name
from customer, orders, lineitem, partsupp, supplier, nation, region
where c_custkey = o_custkey and o_orderkey = l_orderkey and l_suppkey = ps_suppkey and ps_suppkey = s_suppkey and s_nationkey = n_nationkey and n_regionkey = r_regionkey and r_name <> "EUROPE")