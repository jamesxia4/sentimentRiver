/**
 * Created by S1LV3R on 16/5/14.
 */

package com.jamesxia4.semriver;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SemDAO {
    public SemDAO(){
    }

    public int getPositiveCount(String dateTimeStart,String dateTimeStop,String inputTopic){
        String sqlStmt =
                "select count(*)" +
                "from sentiment_result " +
                "where id in (" +
                "             select * " +
                "                      from sentimnt_comment " +
                "                      where ct_time <= %s " +
                "                      and ct_time >= %s and " +
                "                      topic=%s" +
                "            )" +
                "and sentiment = 1;";
        return 0;
    }

    public int getNegativeCount(String dateTimeStart,String dateTimeStop,String inputTopic){
        String sqlStmt =
                "select count(*)" +
                "from sentiment_result " +
                "where id in (" +
                "             select * " +
                "                      from sentimnt_comment " +
                "                      where ct_time <= %s " +
                "                      and ct_time >= %s and " +
                "                      topic=%s" +
                "            )" +
                "and sentiment = -1;";
        return 0;
    }

    public int getMidCount(String dateTimeStart,String dateTimeStop, String inputTopic){
        String sqlStmt =
                "select count(*)" +
                "from sentiment_result " +
                "where id in (" +
                "             select * " +
                "                      from sentimnt_comment " +
                "                      where ct_time <= %s " +
                "                      and ct_time >= %s and " +
                "                      topic=%s" +
                "            )" +
                "and sentiment = 0;";
        return 0;
    }

}
