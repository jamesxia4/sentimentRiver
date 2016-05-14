/**
 * Created by S1LV3R on 16/5/14.
 */

package com.jamesxia4.semriver;

public class SemDAO {
    private int id;
    private String topic;
    private String createTime;
    private String commentSentence;

    public SemDAO(){
        id=0;
        topic="";
        createTime="1970/01/01 00:00:00.0";
        commentSentence="Error Sentence";
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
