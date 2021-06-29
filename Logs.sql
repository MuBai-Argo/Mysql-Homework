select * from vip_information;

set sql_safe_updates = 0;
 DELETE FROM vip_information WHERE vip_name = "万年青";
 DELETE FROM vip_information WHERE vip_name = "百日草";

show binlog events in 'ARGO-HEROS-bin.000219';
