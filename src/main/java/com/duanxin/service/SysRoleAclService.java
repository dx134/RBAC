package com.duanxin.service;

import com.duanxin.beans.LogType;
import com.duanxin.commons.RequestHolder;
import com.duanxin.dao.SysLogMapper;
import com.duanxin.dao.SysRoleAclMapper;
import com.duanxin.exceptions.ParamException;
import com.duanxin.model.SysLogWithBLOBs;
import com.duanxin.model.SysRoleAcl;
import com.duanxin.utils.IpUtil;
import com.duanxin.utils.JsonMapper;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * @author duanxin
 * @version 1.0
 * @ClassName SysRoleAclService
 * @Description Service层角色权限类
 * @date 2019/7/22 15:40
 */
@Service
public class SysRoleAclService {

    @Resource
    private SysRoleAclMapper sysRoleAclMapper;
    @Resource
    private SysLogMapper sysLogMapper;

    /**
     * @description 添加角色权限数据
     * @param [roleId, aclIdList]
     * @date 2019/7/22 15:43
     **/
    public void changeRoleAcls(Integer roleId, List<Integer> aclIdList) {
        // 进行判断
        List<Integer> originAclIdList =
                sysRoleAclMapper.getAclIdListByRoleIdList(Lists.newArrayList(roleId));
        if (originAclIdList.size() == aclIdList.size()) {
            Set<Integer> originAclIdSet = Sets.newHashSet(originAclIdList);
            Set<Integer> aclIdSet = Sets.newHashSet(aclIdList);
            originAclIdSet.removeAll(aclIdSet);
            if (CollectionUtils.isEmpty(originAclIdSet)) {
                return ;
            }
        }

        // 进行保存操作
        updateRoleAcls(roleId, aclIdList);

        saveRoleAclLog(roleId, originAclIdList, aclIdList);
    }

    /**
     * @description 更新角色权限数据
     * @param [roleId, aclIdList]
     * @date 2019/7/22 15:52
     **/
    @Transactional(rollbackFor = ParamException.class)
    public void updateRoleAcls(Integer roleId, List<Integer> aclIdList) {
        // 清除之前的权限
        sysRoleAclMapper.deleteByRoleId(roleId);
        // 进行空值判断
        if (CollectionUtils.isEmpty(aclIdList)) {
            return ;
        }

        // 进行批量操作
        List<SysRoleAcl> roleAclList = Lists.newArrayList();
        for (Integer aclId : aclIdList) {
            SysRoleAcl sysRoleAcl = SysRoleAcl.builder().roleId(roleId)
                    .aclId(aclId).operator(RequestHolder.getCurrentUser().getUsername())
                    .operateIp(IpUtil.getRemoteIp(RequestHolder.getCurrentRequest()))
                    .operateTime(new Date()).build();
            roleAclList.add(sysRoleAcl);
        }

        sysRoleAclMapper.batchInsert(roleAclList);
    }

    /**
     * @description 保存角色权限更新日志
     * @param [before, after]
     * @date 2019/7/24 11:32
     **/
    private void saveRoleAclLog(Integer roleId, List<Integer> before, List<Integer> after) {
        SysLogWithBLOBs sysLog = new SysLogWithBLOBs();
        sysLog.setType(LogType.TYPE_ROLE_ACL);
        sysLog.setTargetId(roleId);
        sysLog.setOldValue(before == null ? "" : JsonMapper.obj2String(before));
        sysLog.setNewValue(after == null ? "" : JsonMapper.obj2String(after));
        sysLog.setOperateTime(new Date());
        sysLog.setOperateIp(IpUtil.getRemoteIp(RequestHolder.getCurrentRequest()));
        sysLog.setOperator(RequestHolder.getCurrentUser().getUsername());
        sysLog.setStatus(0);

        sysLogMapper.insertSelective(sysLog);
    }
}
