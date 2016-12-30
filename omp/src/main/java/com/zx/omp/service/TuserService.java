package com.zx.omp.service;

import com.zx.omp.domain.Tuser;
import org.springframework.stereotype.Service;

/**
 * Created by simba on 2016/12/30 0030.
 */
public interface TuserService {
    Tuser selectByUname(String uname);
}
