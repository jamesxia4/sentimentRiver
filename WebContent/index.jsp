<%--
  Created by Yuanfang Xia.
  User: S1LV3R
  Date: 16/3/6
  Time: 下午3:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1">
    <title>Demo v0306</title>
    <link rel="stylesheet" href="./bootstrap-3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="./sentimentRiver/css/index.css">
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="sentWrapper">
    <div id="sentSG"></div>
    <div id="sentER"></div>
</div>
<!-- ECharts单文件引入 -->
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
<script type="text/javascript">
    // 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });

    // 使用
    require(
            [
                'echarts',
                'echarts/chart/line'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('sentSG'));

                var option = {
                    title : {
                        text: '情感趋势',
                        subtext: '2016.03.01-2016.03.07',
                        show: true
                    },
                    tooltip : {
                        trigger: 'axis'
                    },
                    legend: {
                        data:['正面情感','中性情感','负面情感']
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    xAxis : [
                        {
                            type : 'category',
                            boundaryGap : false,
                            data : ['03-01','03-02','03-03','03-04','03-05','03-06','03-07']
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            name:'正面情感',
                            type:'line',
                            stack: '总量',
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data:[120, 132, 101, 134, 90, 230, 210]
                        },
                        {
                            name:'中性情感',
                            type:'line',
                            stack: '总量',
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data:[220, 182, 191, 234, 290, 330, 310]
                        },
                        {
                            name:'负面情感',
                            type:'line',
                            stack: '总量',
                            itemStyle: {normal: {areaStyle: {type: 'default'}}},
                            data:[150, 232, 201, 154, 190, 330, 410]
                        }
                    ]
                };
                myChart.setOption(option);
            }
    );
</script>


<script type="text/javascript">
    // 路径配置
    require.config({
        paths: {
            echarts: 'http://echarts.baidu.com/build/dist'
        }
    });

    // 使用
    require(
            [
                'echarts',
                'echarts/chart/eventRiver'
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('sentER'));

                var option = {
                    title : {
                        text: '事件河流',
                        subtext: '2016.03.01-2016.03.07'
                    },
                    tooltip : {
                        trigger: 'item',
                        enterable: true
                    },
                    legend: {
                        data:['财经事件', '政治事件']
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    xAxis : [
                        {
                            type : 'time',
                            boundaryGap: [0.05,0.1]
                        }
                    ],
                    series : [
                        {
                            "name": "财经事件",
                            "type": "eventRiver",
                            "weight": 123,
                            "data": [
                                {
                                    "name": "阿里巴巴上市",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-01",
                                            "value": 14,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-02",
                                            "value": 34,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-03",
                                            "value": 60,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }
                                    ]
                                },
                                {
                                    "name": "阿里巴巴上市2",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-01",
                                            "value": 10,
                                            "detail": {
                                                "link": "www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-02",
                                            "value": 34,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-03",
                                            "value": 40,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }
                                    ]
                                },
                                {
                                    "name": "三星业绩暴跌",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-01",
                                            "value": 24,
                                            "detail": {
                                                "link": "www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-02",
                                            "value": 34,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-03",
                                            "value": 50,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-04",
                                            "value": 30,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-05",
                                            "value": 20,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "name": "政治事件",
                            "type": "eventRiver",
                            "weight": 123,
                            "data": [
                                {
                                    "name": "Apec峰会",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-06",
                                            "value": 34,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-07",
                                            "value": 60,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }
                                    ]
                                },
                                {
                                    "name": "运城官帮透视",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-04",
                                            "value": 20,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-05",
                                            "value": 10,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-06",
                                            "value": 14,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-07",
                                            "value": 30,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }
                                    ]
                                },
                                {
                                    "name": "底层公务员收入超过副部长",
                                    "weight": 123,
                                    "evolution": [
                                        {
                                            "time": "2016-03-04",
                                            "value": 20,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-05",
                                            "value": 15,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-06",
                                            "value": 10,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        },
                                        {
                                            "time": "2016-03-07",
                                            "value": 30,
                                            "detail": {
                                                "link": "http://www.baidu.com",
                                                "text": "百度指数",
                                                "img": '../asset/ico/favicon.png'
                                            }
                                        }

                                    ]
                                }
                            ]
                        }
                    ]
                };
                myChart.setOption(option);
            }
    );
</script>
</body>
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
<script src="./bootstrap-3.3.5/js/bootstrap.min.js" type="text/javascript"></script>
