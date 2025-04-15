package com.project.demo.controller;

import com.project.demo.entity.CommodityType;
import com.project.demo.service.CommodityTypeService;
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
 * 商品类型：(CommodityType)表控制层
 *
 */
@RestController
@RequestMapping("/commodity_type")
public class CommodityTypeController extends BaseController<CommodityType, CommodityTypeService> {

    /**
     * 商品类型对象
     */
    @Autowired
    public CommodityTypeController(CommodityTypeService service) {
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
