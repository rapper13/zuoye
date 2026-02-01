-- 注意：该页面对应的前台目录为views/sign文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external) 
VALUES ('2024120904572220510', NULL, '工作单位', '/sign/workUntList', 'sign/WorkUntList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0);

-- 权限控制sql
-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572220511', '2024120904572220510', '添加工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);
-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572230512', '2024120904572220510', '编辑工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);
-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572230513', '2024120904572220510', '删除工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);
-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572230514', '2024120904572220510', '批量删除工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);
-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572230515', '2024120904572220510', '导出excel_工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);
-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2024120904572230516', '2024120904572220510', '导入excel_工作单位', NULL, NULL, 0, NULL, NULL, 2, 'org.jeecg.modules:work_unt:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2024-12-09 16:57:51', NULL, NULL, 0, 0, '1', 0);