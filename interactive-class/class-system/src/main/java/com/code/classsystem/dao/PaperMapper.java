package com.code.classsystem.dao;

import com.code.classsystem.entity.Paper;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.code.classsystem.vo.PaperInfoVo;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author coder
 * @since 2020-04-18
 */
public interface PaperMapper extends BaseMapper<Paper> {
    List<PaperInfoVo> listPage(Paper paper);

}
