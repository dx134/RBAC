INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (1, '产品管理', 0, '0', 1, 1, '', 'admin', '2019-07-21 09:02:57', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (2, '订单管理', 0, '0', 2, 1, '', 'admin', '2019-07-21 09:02:54', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (4, '订单出售管理', 1, '0.1', 1, 1, '', 'admin', '2019-07-21 08:36:53', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (5, '下架产品管理', 1, '0.1', 2, 1, '', 'admin', '2019-07-21 08:39:35', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (6, '权限管理', 0, '0', 4, 1, '', 'admin', '2019-07-22 15:20:53', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (7, '权限管理', 6, '0.6', 1, 1, '', 'admin', '2019-07-22 15:21:04', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (8, '用户管理', 6, '0.6', 2, 1, '', 'admin', '2019-07-22 15:21:15', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (9, '角色管理', 6, '0.6', 3, 1, '', 'admin', '2019-07-22 15:21:29', '0:0:0:0:0:0:0:1');
INSERT INTO rbac.sys_acl_module (id, name, parent_id, level, seq, status, remark, operator, operate_time, operate_ip) VALUES (10, '权限更新记录管理', 6, '0.6', 4, 1, '', 'admin', '2019-07-24 16:06:56', '0:0:0:0:0:0:0:1');