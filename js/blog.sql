-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: localhost
-- 生成日期: 2013 年 05 月 31 日 14:22
-- 服务器版本: 5.0.51
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `blog`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `blog_blog`
-- 

CREATE TABLE `blog_blog` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- 导出表中的数据 `blog_blog`
-- 

INSERT INTO `blog_blog` VALUES (1, '第一条博文！', '第一条博文！', '2013-05-30 15:04:42');
INSERT INTO `blog_blog` VALUES (2, '第二条博文！', '第二条博文！', '2013-05-30 15:05:27');
INSERT INTO `blog_blog` VALUES (3, '第三条博文！', '第三条博文！', '2013-05-30 15:06:44');
INSERT INTO `blog_blog` VALUES (10, '第五条博文！', '第五条博文！', '2013-05-30 18:09:46');
INSERT INTO `blog_blog` VALUES (9, '第四条博文！', '第四条博文！', '2013-05-30 18:02:28');

-- --------------------------------------------------------

-- 
-- 表的结构 `blog_skin`
-- 

CREATE TABLE `blog_skin` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `small_bg` varchar(200) NOT NULL,
  `big_bg` varchar(200) NOT NULL,
  `bg_color` varchar(200) NOT NULL,
  `bg_text` varchar(200) NOT NULL,
  `bg_flag` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- 导出表中的数据 `blog_skin`
-- 

INSERT INTO `blog_skin` VALUES (1, 'small_bg1.png', 'bg1.jpg', '#E7E9E8', '皮肤1', 0);
INSERT INTO `blog_skin` VALUES (2, 'small_bg2.png', 'bg2.jpg', '#ECF0FC', '皮肤2', 0);
INSERT INTO `blog_skin` VALUES (3, 'small_bg3.png', 'bg3.jpg', '#E2E2E2', '皮肤3', 0);
INSERT INTO `blog_skin` VALUES (4, 'small_bg4.png', 'bg4.jpg', '#FFFFFF', '皮肤4', 0);
INSERT INTO `blog_skin` VALUES (5, 'small_bg5.png', 'bg5.jpg', '#F3F3F3', '皮肤5', 0);
INSERT INTO `blog_skin` VALUES (6, 'small_bg6.png', 'bg6.jpg', '#EBDEBE', '皮肤6', 1);

-- --------------------------------------------------------

-- 
-- 表的结构 `blog_user`
-- 

CREATE TABLE `blog_user` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `user` varchar(20) NOT NULL,
  `pass` char(40) NOT NULL,
  `ques` varchar(200) NOT NULL,
  `ans` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `ps` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

-- 
-- 导出表中的数据 `blog_user`
-- 

INSERT INTO `blog_user` VALUES (1, 'ycku', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '1', '酸菜鱼', 'ycku@163.com', '1950-01-01', '没有备注！');
INSERT INTO `blog_user` VALUES (66, 'ycku4', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '1', '酸菜鱼', 'ycku4@163.com', '1967-06-16', '没有备注！');
INSERT INTO `blog_user` VALUES (65, 'ycku3', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '1', '酸菜鱼', 'ycku3@163.com', '1968-04-17', '没有备注！');
INSERT INTO `blog_user` VALUES (64, 'ycku2', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '1', '酸菜鱼', 'ycku2@163.com', '1950-04-17', '没有备注！');
INSERT INTO `blog_user` VALUES (63, 'ycku1', '4be30d9814c6d4e9800e0d2ea9ec9fb00efa887b', '1', '酸菜鱼', 'ycku1@163.com', '1950-01-01', '没有备注！');
