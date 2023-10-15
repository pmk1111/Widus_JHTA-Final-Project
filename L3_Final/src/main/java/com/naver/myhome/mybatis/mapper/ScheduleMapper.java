package com.naver.myhome.mybatis.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface ScheduleMapper {
	void insertSchedule(Map<String, String> map);

	void updateSchedule(Map<String, String> paramMap);

	void deleteSchdule(Map<String, String> paramMap);
}