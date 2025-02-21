package com.project.demo.controller;

import com.project.demo.entity.SpecialOrder;
import com.project.demo.service.SpecialOrderService;
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
 * 特价订单：(SpecialOrder)表控制层
 *
 */
@RestController
@RequestMapping("/special_order")
public class SpecialOrderController extends BaseController<SpecialOrder, SpecialOrderService> {

    /**
     * 特价订单对象
     */
    @Autowired
    public SpecialOrderController(SpecialOrderService service) {
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
