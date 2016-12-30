package com.zx.omp.service.impl;

import com.zx.omp.domain.Tuser;
import com.zx.omp.mapper.TuserMapper;
import com.zx.omp.service.TuserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by simba on 2016/12/30 0030.
 */
@Service
public class TuserServiceImpl implements TuserService {
    @Resource
    private TuserMapper tuserMapper;

    @Override
    public Tuser selectByUname(String uname) {
        return this.tuserMapper.selectByUname(uname);
    }
}
