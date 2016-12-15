/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : jb

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-12-14 18:02:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_user_id` int(11) DEFAULT NULL,
  `album_name` varchar(255) DEFAULT NULL,
  `album_desc` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of album
-- ----------------------------

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_category_id` int(11) DEFAULT NULL,
  `article_title` varchar(255) DEFAULT NULL,
  `article_content` text,
  `updateTime` varchar(255) DEFAULT NULL,
  `visitTime` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='状态1发表\r\n状态2草稿\r\n状态3删除';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('29', '0', '你听过的最有力量的一句台词是什么？', '<div>作者：孟雨<br>链接：https://www.zhihu.com/question/53487942/answer/135613321<br>来源：知乎<br>著作权归作者所有，转载请联系作者获得授权。<br><br><div class=\"zm-editable-content clearfix\">当朝大学士，统共有五位，朕不得不罢免四位；六部尚书，朕不得不罢免三位。看看这七个人吧，哪 <br>个不是两鬓班白，哪个不是朝廷的栋梁，哪个不是朕的儿女亲家，他们烂了，朕心要碎了！ <br>祖宗把江山交到朕的手里，却搞成了这个样子，朕是痛心疾首，朕有罪于国家，愧对祖宗，愧对<br>天地，朕恨 不 得自己罢免了自己！ <br>还有你们，虽然个个冠冕堂皇站在干岸上，你们，就那么干净吗？朕知道，你们当中有些人，比这七个人 <br>更腐败！朕劝你们一句，都把自己的心肺肠子翻出来，晒一晒，洗一洗，拾掇拾掇！ <br>朕刚即位的时候以为朝廷最大的敌人是鏊拜，灭了鏊拜 ，又以为最大的敌人是吴三桂，朕平了吴三桂 <br>台湾又成了大清的心头之患，啊，朕收了台湾，葛尔丹，又成了大清的心头之患。朕现在是越来越清楚了，大清 <br>的心头之患不在外边，而是在朝廷，就是在这乾清宫！就在朕的骨肉皇子和大臣们当中，咱们这儿烂一点， <br>大清国就烂一片，你们要是全烂了，大清各地就会揭竿而起，让咱们死无葬身之地呀！想想吧，崇祯皇帝 <br>朱由检，吊死在煤山上才几年哪？忘了！那棵老歪脖子树还站在皇宫后边，天天的盯着你们呢！<br>朕已经三天三夜没有合眼了，总想着和大伙说些什么，可是话，总得有个头啊 。想来想去，只有四 <br>个字[‘正大光明’匾升起]这四个字，说说容易啊，身体力行又何其难？ 这四个字，是朕从心里刨出来 <br>的，从血海里挖出来的。记着，从今日起，此殿改为正大光明殿！好好看看……哦，你们都抬起头来，好好看看， <br>想想自己，给朕看半个时辰。</div></div>', '2016-12-14 16:16:38', '2', '1');
INSERT INTO `article` VALUES ('30', '0', '你如何优化自己的eclipse呢？', '<div><div class=\"zm-editable-content clearfix\">许多人在工作中还是不得不用eclipse的，毕竟有些插件idea没有，比如我们。我们的工程在idea里甚至ant build都不能通过。<br><br>eclipse慢基本是都是磁盘io慢导致的。尤其大工程非常的明显。<br><br>高版本jdk通常会比低版本表现好，把内存调的大一点，<br>-Xverify:none，这个参数加上之后能非常直观的体验到变化；<br>关闭不必要的工程。关了maven的自动更新<br><br>公司的电脑并不是想上ssd就上，所以传统机械盘上编译大工程真的蛋疼，这点并不是换idea就能解决的，许多时候能做的事情就是等，等building workspace结束。。。。哎。。。。</div><br><br>作者：hhhh233<br>链接：https://www.zhihu.com/question/53576744/answer/135763435<br>来源：知乎<br>著作权归作者所有，转载请联系作者获得授权。</div>', '2016-12-14 16:22:03', '2', '1');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(255) DEFAULT NULL,
  `comment_user_id` int(11) DEFAULT NULL,
  `comment_article_id` int(11) DEFAULT NULL,
  `comment_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `picture_id` int(11) NOT NULL,
  `picture_name` varchar(255) DEFAULT NULL,
  `picture_address` varchar(255) DEFAULT NULL,
  `picture_album_id` int(11) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) DEFAULT NULL,
  `user_qq` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_signature` varchar(255) DEFAULT NULL,
  `user_is_host` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '居峰', '123', '123', '123', '123', '123', '1');
