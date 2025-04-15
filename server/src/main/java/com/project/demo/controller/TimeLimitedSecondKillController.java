package com.project.demo.controller;

import com.project.demo.entity.TimeLimitedSecondKill;
import com.project.demo.service.TimeLimitedSecondKillService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 限时秒杀：(TimeLimitedSecondKill)表控制层
 *
 */
@RestController
@RequestMapping("/time_limited_second_kill")
public class TimeLimitedSecondKillController extends BaseController<TimeLimitedSecondKill, TimeLimitedSecondKillService> {

    /**
     * 限时秒杀对象
     */
    @Autowired
    public TimeLimitedSecondKillController(TimeLimitedSecondKillService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
