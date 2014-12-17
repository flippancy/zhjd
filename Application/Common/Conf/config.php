<?php
return array(
	//'配置项'=>'配置值'
    "NEWS" => array('1' => 'http://osrzh.com/About/news/index.aspx','2' => 'http://zh.chimelong.com/News/index.aspx',
                    '3' => 'http://news.baidu.com/ns?tn=news&cl=2&rn=20&ct=1&fr=bks0000&ie=utf-8&word=%E7%9F%B3%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD',
                    '4' => 'http://www.ly.com/scenery/BookSceneryTicket_24744.html',
                    '5' => 'http://www.ymy.com.cn/news.asp?lan=zh-cn&skin=48&id=52' ),
    "LOCATION" => array('1' =>array(113.124761,22.078009) , '2' =>array(113.547955,22.102506),
                        '3' =>array(113.582121,22.269603) , '4' =>array(113.483622,22.111372),
                        '5' =>array(113.544454,22.246264)),

    'APP_SUB_DOMAIN_DEPLOY'   =>    1, // 开启子域名配置
    'APP_SUB_DOMAIN_RULES' => array(
        'hqw' => array('Home','pid=1'),
        'clhywg' => array('Home','pid=2'),
        'sjsgy' => array('Home','pid=3'),
        'hyly' => array('Home','pid=4'),
        'ymxy' => array('Home','pid=5'),
    ),

	    //数据库配置信息
    'DB_TYPE'    => 'mysql', // 数据库类型
    'DB_HOST'    => '127.0.0.1', // 服务器地址
    'DB_NAME'    => 'thinkphp', // 数据库名
    'DB_USER'    => 'root', // 用户名
    'DB_PWD'     => '', // 密码
    'DB_PORT'    => 3306, // 端口
    'DB_PREFIX'  => 'think_', // 数据库表前缀
    'DB_CHARSET' => 'utf8', // 字符集
    'DB_BACKUP'  => './Data/Backup/',

    'DEFAULT_THEME'    =>    'default',  // 模板主题

    'TMPL_PARSE_STRING' =>array(
		'__PUBLIC__' => '/Public',
		'__JS__'     => '/Public/js',
		'__CSS__'    => '/Public/css',
		'__IMG__'    => '/Public/images',
        '__UPLOADS__'=> '/Uploads',
        '__DATA__'=> '/Data',
	),

    'config' => array(
            'path' => '/Data/Backup/',                                           //备份文件存在哪里
            'isCompress' => 0,                                                  //是否开启gzip压缩      【未测试】
            'isDownload' => 0                                                   //备份完成后是否下载文件 【未测试】
        ),                                                        //相关配置
    'model' => '',                                                        //实例化一个model
    'content' => '',                                                            //内容
    'dbName' => '',                                                        //数据库名
    'dir_sep' => '/',                                                       //路径符号

);
?>