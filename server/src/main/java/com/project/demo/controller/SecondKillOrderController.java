package com.project.demo.controller;

import com.project.demo.entity.SecondKillOrder;
import com.project.demo.service.SecondKillOrderService;
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
 * 秒杀订单：(SecondKillOrder)表控制层
 *
 */
@RestController
@RequestMapping("/second_kill_order")
public class SecondKillOrderController extends BaseController<SecondKillOrder, SecondKillOrderService> {

    /**
     * 秒杀订单对象
     */
    @Autowired
    public SecondKillOrderController(SecondKillOrderService service) {
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
