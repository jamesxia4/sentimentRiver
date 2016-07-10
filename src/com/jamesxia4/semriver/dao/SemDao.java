package com.jamesxia4.semriver.dao;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.datasource.DataSourceUtils;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.LinkedHashMap;

public class SemDao {
    private static final Logger logger = Logger.getLogger(SemDao.class);

    public static HashMap<String, Integer> getSentimentInTimePeriod(
            String dateTimeStart, String dateTimeStop, String inputTopic, String location) {
        HashMap<String, Integer> queryResult = new LinkedHashMap<String, Integer>();
        String sqlStmt = "SELECT        ct_time, sentiment_value "
                        + "FROM         test.sentiment_trend "
                        + "WHERE        ct_time >= '%s' "
                        + "AND          ct_time <= '%s' "
                        + "AND          topic = '%s' "
                        + "AND          location = '%s' "
                        + "ORDER BY     ct_time asc;";
        sqlStmt = String.format(sqlStmt, dateTimeStart, dateTimeStop, inputTopic, location);
        logger.info(sqlStmt);

        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("spring-config.xml");
        DataSource ds = (DataSource) ctx.getBean("dataSource");
        Connection connection = DataSourceUtils.getConnection(ds);
        try {
            // retrieve a list of three random cities
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sqlStmt);
            while (rs.next()) {
                int recordDate  = rs.getInt("ct_time");
                int sentimentValue = rs.getInt("sentiment_value");
//                System.out.printf("Record Date: %s, Sentiment: %s",
//                        ((Integer)recordDate).toString(), ((Integer)sentimentValue).toString());
                queryResult.put(((Integer)recordDate).toString(), (Integer)sentimentValue);
            }
        } catch (SQLException e) {
            logger.error(e.toString() + e.getStackTrace(), e);
            DataSourceUtils.releaseConnection(connection, ds);
        } finally {
            // properly release our connection
            DataSourceUtils.releaseConnection(connection, ds);
        }
        return queryResult;
    }
}
