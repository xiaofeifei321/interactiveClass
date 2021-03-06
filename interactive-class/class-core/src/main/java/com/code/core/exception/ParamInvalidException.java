package com.code.core.exception;


import com.code.core.enums.ErrorEnum;
import com.code.core.error.CommonError;

/**
 * Created by rf on 2019/3/10.
 */
public class ParamInvalidException extends RuntimeException implements CommonError {
    private String msg;
    private int code;

    public ParamInvalidException( int code,String msg) {
        super(msg);
        this.code = code;
        this.msg = msg;
    }

    public ParamInvalidException(ErrorEnum errorEnum) {
       this(errorEnum.getCode(),errorEnum.getMsg());
    }

    @Override
    public int getCode() {
        return code;
    }

    @Override
    public String getMsg() {
        return msg;
    }


}
