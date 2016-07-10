package com.jamesxia4.semriver.dao;


import org.junit.Test;

public class SemDaoTest {
    @Test
    public void testSemDaoGetSentimentInTimePeriod() {
        SemDao.getSentimentInTimePeriod("20160531","20160601","寨卡","深圳");
    }
}
