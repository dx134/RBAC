INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (1, 1, 10, '', '{"id":10,"name":"产品部","parentId":0,"level":"0","seq":2,"operator":"admin","operateTime":1563954326408,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:45:30', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (2, 1, 10, '{"id":10,"name":"产品部","parentId":0,"level":"0","seq":2,"operator":"admin","operateTime":1563954326000,"operateIp":"0:0:0:0:0:0:0:1"}', '{"id":10,"name":"产品部","parentId":0,"level":"0","seq":2,"remark":"产品部门","operator":"admin","operateTime":1563954769529,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:52:50', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (3, 2, 5, '', '{"id":5,"username":"Tom","telephone":"129","email":"Tom@163.com","password":"E10ADC3949BA59ABBE56E057F20F883E","deptId":1,"status":1,"operator":"admin","operateTime":1563954859186,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:54:19', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (4, 2, 5, '{"id":5,"username":"Tom","telephone":"129","email":"Tom@163.com","password":"E10ADC3949BA59ABBE56E057F20F883E","deptId":1,"status":1,"operator":"admin","operateTime":1563954859000,"operateIp":"0:0:0:0:0:0:0:1"}', '{"id":5,"username":"Tom","telephone":"129","email":"Tom@163.com","deptId":1,"status":1,"remark":"技术部主管","operator":"admin","operateTime":1563954878987,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:54:39', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (5, 5, 9, '', '{"id":9,"name":"公告管理员","type":1,"status":1,"operator":"admin","operateTime":1563955092318,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:58:12', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (6, 5, 9, '{"id":9,"name":"公告管理员","type":1,"status":1,"operator":"admin","operateTime":1563955092000,"operateIp":"0:0:0:0:0:0:0:1"}', '{"id":9,"name":"公告管理员","type":1,"status":1,"remark":"发布公告","operator":"admin","operateTime":1563955106044,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 15:58:26', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (7, 6, 1, '[]', '[2,1,8]', 'root', '2019-07-24 16:00:06', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (8, 7, 1, '[]', '[3]', 'root', '2019-07-24 16:00:14', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (9, 4, 9, '', '{"id":9,"code":"2019-07-24 16:01:50.054_23","name":"查看订单","aclModuleId":2,"url":"/sys/order/order.json","type":2,"status":1,"seq":3,"operator":"root","operateTime":1563955310055,"operateIp":"0:0:0:0:0:0:0:1"}', 'root', '2019-07-24 16:01:50', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (10, 4, 9, '{"id":9,"code":"2019-07-24 16:01:50.054_23","name":"查看订单","aclModuleId":2,"url":"/sys/order/order.json","type":2,"status":1,"seq":3,"operator":"root","operateTime":1563955310000,"operateIp":"0:0:0:0:0:0:0:1"}', '{"id":9,"code":"2019-07-24 16:02:03.436_93","name":"查看订单","aclModuleId":2,"url":"/sys/order/order.json","type":2,"status":1,"seq":3,"remark":"查看订单权限","operator":"root","operateTime":1563955323436,"operateIp":"0:0:0:0:0:0:0:1"}', 'root', '2019-07-24 16:02:03', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (11, 3, 10, '', '{"id":10,"name":"权限更新记录管理","parentId":6,"level":"0.6","seq":4,"status":1,"operator":"admin","operateTime":1563955615604,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 16:06:56', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (12, 4, 10, '', '{"id":10,"code":"2019-07-24 16:08:07.373_29","name":"进入权限更新记录管理页面","aclModuleId":10,"url":"/sys/log/log.page","type":1,"status":1,"seq":1,"operator":"admin","operateTime":1563955687373,"operateIp":"0:0:0:0:0:0:0:1"}', 'admin', '2019-07-24 16:08:07', '0:0:0:0:0:0:0:1', 0);
INSERT INTO rbac.sys_log (id, type, target_id, old_value, new_value, operator, operate_time, operate_ip, status) VALUES (13, 6, 8, '[5,6,7]', '[5,6,7,10]', 'root', '2019-07-24 16:49:47', '0:0:0:0:0:0:0:1', 0);