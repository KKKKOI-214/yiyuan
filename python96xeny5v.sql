/*
Navicat MySQL Data Transfer

Source Server         : localhost_python
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : python96xeny5v

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2025-12-01 15:05:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aboutus
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('1', '2025-04-11 23:40:47', '关于XX医院', '关爱生命 守护健康', 'XX医院成立于1998年，是一所集医疗、教学、科研、预防保健为一体的三级甲等综合性医院。医院拥有国家级重点专科3个，省级重点专科8个，开放床位1500张，年门诊量超过200万人次。\r\n\r\n我们秉承\"博施济众、仁心仁术\"的办院理念，拥有国际先进的医疗设备和技术，包括3.0T磁共振、256排螺旋CT、达芬奇手术机器人等。医院现有职工2800余人，其中高级职称专家400余人，博士、硕士生导师120余人。\r\n\r\n医院始终坚持以病人为中心的服务理念，先后获得\"全国卫生系统先进集体\"、\"全国百姓放心示范医院\"等荣誉称号。我们将继续努力，为人民群众提供更优质、更安全的医疗服务。', 'upload/aboutus_picture1.jpg', 'upload/aboutus_picture2.jpg', 'upload/aboutus_picture3.jpg');

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764553928768 DEFAULT CHARSET=utf8 COMMENT='智能客服';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1763103757741', '2025-11-14 15:02:37', '1763099293617', '0', '被雨淋后怎么预防感冒', null, '0');
INSERT INTO `chat` VALUES ('1763103773963', '2025-11-14 15:02:53', '1763099293617', '0', null, '被雨淋后如何预防感冒：\n\n1. **了解健康状况**：首先评估是否感染了感冒病毒或其他疾病。考虑过敏反应可能性（如接触敏感物质），并咨询医生以做进一步判断。\n\n2. **调整饮食和运动**：\n   - **避免过敏食物**：多吃温和的食物，少摄入高糖、高蛋白和辛辣刺激性食品。\n   - **多喝水**：保持干燥，促进身体代谢和解冻。\n   - **适量运动**：每周至少进行150分钟的有氧运动，增强免疫力，预防感冒。\n\n3. **着装调整**：\n   - 穿轻便的衣服以排出汗液，保持干爽环境。\n   - 带上纸巾，防止细菌感染。\n\n4. **避免环境因素**：减少雨天的暴露时间，保持干燥和温暖。\n\n5. **预防措施**：考虑在雨天进行额外防护措施（如多喝水、保持干燥）以增加感冒发生率降低。\n\n6. **健康咨询**：咨询医生或营养师，了解个人卫生习惯对预防感冒的影响。\n\n通过以上方法，可以有效预防感冒，确保自己的身体健康。', '0');
INSERT INTO `chat` VALUES ('1764215252770', '2025-11-27 11:47:32', '1763099293617', '0', '如何预防感冒', null, '0');
INSERT INTO `chat` VALUES ('1764215273629', '2025-11-27 11:47:53', '1763099293617', '0', null, '为了有效地预防感冒，以下是一些清晰且详细的方法建议：\n\n### 1. 饮食控制\n- **多摄入易消化食物**：增加水果、蔬菜的摄入，减少油腻食品的摄入，尤其是高饱和脂肪和高胆固醇的食物。\n- **适量饮水**：每天饮用足够的水，以帮助身体排汗和代谢。\n- **避免糖分较高食物**：减少蔗糖、麦芽糖等糖分食物的摄入，适当增加燕麦、糙米等低糖食品。\n\n### 2. 积极运动\n- **选择健康运动方式**：每天进行适量的瑜伽、游泳或打篮球，但不要在运动后立即进行伸展动作。\n- **规律作息**：保证8-10小时的睡眠时间，使用闹钟定时睡觉或听轻音乐放松。\n\n### 3. 安全的休息\n- **避免过度劳累**：平衡工作和休息时间，确保每天有足够的睡眠。\n- **注意情绪管理**：寻求安慰，避免紧张和焦虑，必要时进行冥想或与朋友聊天。\n\n### 4. 预防鼻腔感染\n- **及时就医**：如果出现持续咳嗽、打喷嚏或流涕，立即就医以排除病毒感染。\n- **观察症状变化**：若症状减轻或连续几天没有发烧，可暂时避免活动。\n\n### 5. 良好的生活习惯\n- **均衡营养**：摄入足够的蛋白质、维生素和矿物质，减少碳水化合物的摄入。\n- **避免过度劳累**：平衡工作与健康生活的时间分配。\n\n### 6. 使用外用药（可选）\n- **对症治疗药物**：根据症状使用抗病毒药物（如对乙酰氨基酚）或抗生素来缓解症状，并监测效果。\n\n### 额外建议\n- **身体状况检查**：及时评估身体状况，特别注意虚弱情况。\n- **科学预防措施**：了解个人健康问题，如肝病、心脏病等，采取相应预防措施。\n\n通过遵循以上方法和策略，可以有效降低感冒的发生率，并增强应对疾病的信心。', '0');
INSERT INTO `chat` VALUES ('1764215322819', '2025-11-27 11:48:42', '1763099293617', '0', '医院停车怎么收费的', null, '0');
INSERT INTO `chat` VALUES ('1764215335645', '2025-11-27 11:48:55', '1763099293617', '0', null, '医院停车费用的收取方式因地区、性质和季节而异，具体收费标准如下：\n\n1. **费用类型**：\n   - **一次性收费**：通常包括停车费和停车区域内的服务费（如洗车、充电等）。\n   - **小时收费**：按小时计算停车费，可能包含额外服务。\n   - **固定收费**：根据车辆数量或停车时间收取固定的费用。\n\n2. **收费标准**：\n   - 一些城市的停车场对医院停车提供免费服务，但价格可能有所不同。\n   - 医院内的停车场通常收取较低的费用，而外部停车需要更多的费用。\n\n3. **服务内容**：\n   - 如果您需要洗车、充电等额外服务，这些可能会被包含在收费中，但具体费用视情况而定。\n\n4. **季节性变化**：一些城市的停车收费可能根据季节而变化，比如夏季更贵或冬季更便宜。\n\n5. **具体政策**：建议直接咨询当地停车场的管理部门或医院 itself，获取最准确和具体的收费标准信息。\n\n总之，医院停车的费用差异很大，价格取决于区域、服务内容和时间长短等因素。建议在确定后咨询当地设施管理单位以获得详细信息。', '0');
INSERT INTO `chat` VALUES ('1764215470091', '2025-11-27 11:51:10', '1763099293617', '0', '医院停车如何收费？', null, '0');
INSERT INTO `chat` VALUES ('1764215471761', '2025-11-27 11:51:11', '1763099293617', '0', null, '我院停车收费标准如下：\n1. 30分钟内：免费\n2. 2小时内：5元\n3. 超过2小时：每小时加收2元\n4. 24小时最高收费：30元\n5. 急诊患者凭当日急诊病历免3小时停车费\n注：建议就诊高峰时段（8:00-10:00）尽量选择公共交通。', '0');
INSERT INTO `chat` VALUES ('1764216272266', '2025-11-27 12:04:32', '1763099293617', '0', '我头疼流鼻涕了怎么办', null, '0');
INSERT INTO `chat` VALUES ('1764216292549', '2025-11-27 12:04:52', '1763099293617', '0', null, '如果您最近出现了头痛和流鼻涕的情况，请按以下步骤进行处理：\n\n1. **记录症状**：详细记录当天的症状，包括时间、发生地点等信息，帮助医生了解情况。\n\n2. **观察呼吸习惯**：注意是否有规律的呼吸，有助于判断是否是因为空气污染或其他原因导致。\n\n3. **避免过敏测试**：如果近期出现有过敏反应（如使用某些食物或药物后症状加重），建议进行过敏试验。\n\n4. **观察其他症状**：若有打喷嚏、咳嗽等症状，可能是呼吸道疾病的表现。\n\n5. **寻求专业帮助**：\n   - 如果流涕严重或持续，考虑就医。\n   - 感染可能与病毒有关，如流感或新冠病毒，建议及时就医。\n   - 痰液增多时，可以使用退烧药来缓解症状，但应在医生指导下使用。\n\n6. **多喝水和温水泡脚**：每日适量饮水，有助于促进血液循环。泡脚前可以用温水湿敷脚部，帮助排汗。\n\n7. **休息和饮食调整**：\n   - 休息到自然休息时间（如12小时）。\n   - 饮食避免高糖、高盐和高脂类食物，以维持健康状态。\n\n8. **记录体液分泌情况**：如果流涕增多或伴有流涕状的尿液，可能与过敏有关。建议进行体液分析。\n\n9. **寻求专业医生帮助**：\n   - 如果症状持续或加重，如发热、呼吸困难等，立即就医。\n   - 感染方面，如有发热时可以考虑接种新冠疫苗，但前提是接种前未接种过其他疫苗。\n\n10. **避免刺激物接触**：使用过的纸巾、毛巾、化妆品等可能刺激鼻腔，尽量避免。\n\n11. **保持情绪稳定**：情绪紧张可能导致症状加重或缓解，确保心情平和。\n\n12. **记录并分享**：将以上步骤详细记录下来，帮助家人和医生了解您的病情，有助于提供更好的照顾和支持。', '0');
INSERT INTO `chat` VALUES ('1764225370162', '2025-11-27 14:36:10', '1763099293617', '0', null, '主人，我是您的智能助手小搏，请问有什么可以帮您！', '0');
INSERT INTO `chat` VALUES ('1764318996039', '2025-11-28 16:36:36', '1763099293617', '0', null, '主人，我是您的智能助手小搏，请问有什么可以帮您！', '0');
INSERT INTO `chat` VALUES ('1764553928767', '2025-12-01 09:52:08', '1763099293617', '0', null, '主人，我是您的智能助手小搏，请问有什么可以帮您！', '0');

-- ----------------------------
-- Table structure for chathelper
-- ----------------------------
DROP TABLE IF EXISTS `chathelper`;
CREATE TABLE `chathelper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ask` varchar(200) DEFAULT NULL COMMENT '提问',
  `reply` longtext COMMENT '回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='聊天助手表';

-- ----------------------------
-- Records of chathelper
-- ----------------------------
INSERT INTO `chathelper` VALUES ('131', '2025-04-11 23:40:47', '如何预约挂号？', '您可以通过以下方式预约挂号：\n1. 微信关注\"博爱医院服务号\"在线预约\n2. 拨打预约电话：400-123-4567\n3. 医院官网www.boaiyy.com预约\n4. 医院自助挂号机现场预约');
INSERT INTO `chathelper` VALUES ('132', '2025-04-11 23:40:47', '门诊时间是什么时候？', '我院门诊时间安排如下：\n工作日：上午8:00-12:00，下午13:30-17:30\n周末及节假日：上午8:30-12:00\n急诊科24小时开放');
INSERT INTO `chathelper` VALUES ('133', '2025-04-11 23:40:47', '如何查询检验报告？', '您可以通过以下方式查询检验报告：\n1. 医院官方微信公众号→医疗服务→报告查询\n2. 医院自助报告打印机（凭就诊卡或身份证）\n3. 检验科窗口咨询（工作时间）\n注：血常规、尿常规等常规检查2小时出结果，特殊检查请遵医嘱');
INSERT INTO `chathelper` VALUES ('134', '2025-04-11 23:40:47', '医保报销需要哪些材料？', '医保报销需准备以下材料：\n1. 有效身份证件（身份证/户口本）\n2. 医保卡/社保卡\n3. 门诊病历及处方笺\n4. 医疗费用明细清单\n5. 发票原件\n6. 如为住院报销，还需提供出院小结、费用总清单\n建议您就诊时携带所有相关证件，以便及时结算。');
INSERT INTO `chathelper` VALUES ('135', '2025-04-11 23:40:47', '医院提供哪些便民服务？', '我院提供以下便民服务：\n1. 免费轮椅租借\n2. 母婴室\n3. 健康教育宣传栏\n4. 自助挂号缴费机\n5. 手机充电站\n6. 免费WIFI\n7. 便民药箱\n8. 失物招领处\n所有便民服务均可在一楼导诊台咨询。');
INSERT INTO `chathelper` VALUES ('136', '2025-04-11 23:40:47', '体检需要预约吗？', '是的，我院体检中心实行预约制，您可以通过以下方式预约：\n1. 电话预约：400-123-4567（转体检中心）\n2. 微信预约：关注\"博爱医院体检中心\"公众号\n3. 现场预约：健康管理中心一楼接待处\n建议提前3-5天预约，体检前一日晚8点后禁食。');
INSERT INTO `chathelper` VALUES ('137', '2025-04-11 23:40:47', '如何办理住院手续？', '住院办理流程：\n1. 医生开具住院证\n2. 持住院证、身份证、医保卡到住院处办理\n3. 缴纳住院押金（支持现金/银行卡/移动支付）\n4. 领取住院手环及相关资料\n5. 到相应病区护士站报到\n工作时间：周一至周日 8:00-17:30，急诊住院24小时办理。');
INSERT INTO `chathelper` VALUES ('138', '2025-04-11 23:40:47', '医院停车如何收费？', '我院停车收费标准如下：\n1. 30分钟内：免费\n2. 2小时内：5元\n3. 超过2小时：每小时加收2元\n4. 24小时最高收费：30元\n5. 急诊患者凭当日急诊病历免3小时停车费\n注：建议就诊高峰时段（8:00-10:00）尽量选择公共交通。');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'upload/picture1.jpg', null);
INSERT INTO `config` VALUES ('2', 'picture2', 'upload/picture2.jpg', null);
INSERT INTO `config` VALUES ('3', 'picture3', 'upload/picture3.jpg', null);

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `url` longtext COMMENT '链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES ('1', '2025-04-11 23:40:47', '中华医学会', 'upload/fl_aqy.png', 'https://www.cma.org.cn/');
INSERT INTO `friendlink` VALUES ('2', '2025-04-11 23:40:47', '国家卫生健康委员会', 'upload/fl_bd.png', 'http://www.nhc.gov.cn/');
INSERT INTO `friendlink` VALUES ('3', '2025-04-11 23:40:47', '世界卫生组织', 'upload/fl_jd.png', 'https://www.who.int/zh');
INSERT INTO `friendlink` VALUES ('4', '2025-04-11 23:40:47', '中国疾病预防控制中心', 'upload/fl_sh.png', 'http://www.chinacdc.cn/');
INSERT INTO `friendlink` VALUES ('5', '2025-04-11 23:40:47', '健康中国行动', 'upload/fl_tx.png', 'https://www.jkzgxd.cn/');
INSERT INTO `friendlink` VALUES ('6', '2025-04-11 23:40:47', '医学论坛网', 'upload/fl_wy.png', 'https://www.cmt.com.cn/');
INSERT INTO `friendlink` VALUES ('7', '2025-04-11 23:40:47', '新浪', 'upload/fl_xl.png', 'https://www.sina.com.cn/');
INSERT INTO `friendlink` VALUES ('8', '2025-04-11 23:40:47', '知乎', 'upload/fl_zh.png', 'https://www.zhihu.com/');

-- ----------------------------
-- Table structure for jibingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jibingxinxi`;
CREATE TABLE `jibingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jibingmingcheng` varchar(200) NOT NULL COMMENT '疾病名称',
  `zhengzhuangleixing` varchar(200) NOT NULL COMMENT '症状类型',
  `jibingfengmian` longtext COMMENT '疾病封面',
  `mubiaorenqun` varchar(200) DEFAULT NULL COMMENT '目标人群',
  `zhengzhuangmiaoshu` longtext COMMENT '症状描述',
  `zhiliaofangshi` longtext COMMENT '治疗方式',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='疾病信息';

-- ----------------------------
-- Records of jibingxinxi
-- ----------------------------
INSERT INTO `jibingxinxi` VALUES ('51', '2025-04-11 23:40:47', '流行性感冒', '呼吸道感染', 'upload/jibingxinxi_jibingfengmian1.jpg,upload/jibingxinxi_jibingfengmian2.jpg,upload/jibingxinxi_jibingfengmian3.jpg', '全人群，尤其儿童和老年人', '发热（通常38°C以上）、咳嗽、咽喉痛、肌肉酸痛、头痛、乏力、鼻塞流涕', '休息、补液、对症治疗（退烧药）、抗病毒药物（奥司他韦）、预防并发症', '2025-04-11', '2025-04-11 23:40:47', '5', '1');
INSERT INTO `jibingxinxi` VALUES ('52', '2025-04-11 23:40:47', '原发性高血压', '心血管疾病', 'upload/jibingxinxi_jibingfengmian2.jpg,upload/jibingxinxi_jibingfengmian3.jpg,upload/jibingxinxi_jibingfengmian4.jpg', '中老年人群（>40岁）', '头痛（尤以后枕部为主）、眩晕、心悸、耳鸣、视力模糊（严重时）', '降压药物治疗（ACEI/ARB、CCB等）、低盐饮食、规律运动、戒烟限酒', '2025-04-11', '2025-04-11 23:40:47', '2', '2');
INSERT INTO `jibingxinxi` VALUES ('53', '2025-04-11 23:40:47', '2型糖尿病', '代谢性疾病', 'upload/jibingxinxi_jibingfengmian3.jpg,upload/jibingxinxi_jibingfengmian4.jpg,upload/jibingxinxi_jibingfengmian5.jpg', '中老年及肥胖人群', '多饮、多尿、多食、体重下降、视力模糊、疲劳、伤口愈合缓慢', '口服降糖药（二甲双胍）、胰岛素治疗、饮食控制、规律运动、血糖监测', '2025-04-11', '2025-04-11 23:40:47', '3', '3');
INSERT INTO `jibingxinxi` VALUES ('54', '2025-04-11 23:40:47', '冠状动脉粥样硬化性心脏病', '心血管疾病', 'upload/jibingxinxi_jibingfengmian4.jpg,upload/jibingxinxi_jibingfengmian5.jpg,upload/jibingxinxi_jibingfengmian6.jpg', '中老年人群，有高血压/糖尿病史者', '胸痛（心绞痛）、胸闷、气短、心悸、放射至左肩背痛', '抗血小板药物（阿司匹林）、他汀类药物、血管成形术、冠脉搭桥术', '2025-04-11', '2025-04-11 23:40:47', '4', '4');
INSERT INTO `jibingxinxi` VALUES ('55', '2025-04-11 23:40:47', '支气管哮喘', '呼吸道疾病', 'upload/jibingxinxi_jibingfengmian5.jpg,upload/jibingxinxi_jibingfengmian6.jpg,upload/jibingxinxi_jibingfengmian7.jpg', '儿童及青壮年人群', '反复发作喘息、气急、胸闷、咳嗽（夜间及晨间加重）', '吸入性糖皮质激素、支气管扩张剂、避免过敏原、免疫治疗', '2025-04-11', '2025-04-11 23:40:47', '6', '5');
INSERT INTO `jibingxinxi` VALUES ('56', '2025-04-11 23:40:47', '骨关节炎', '骨关节疾病', 'upload/jibingxinxi_jibingfengmian6.jpg,upload/jibingxinxi_jibingfengmian7.jpg,upload/jibingxinxi_jibingfengmian8.jpg', '中老年人群（>50岁）', '关节疼痛（活动后加重）、僵硬（晨僵<30分钟）、关节肿胀、活动受限', '非甾体抗炎药、关节腔注射、物理治疗、关节置换术（晚期）', '2025-04-11', '2025-04-11 23:40:47', '6', '6');
INSERT INTO `jibingxinxi` VALUES ('57', '2025-04-11 23:40:47', '胃食管反流病', '消化系统疾病', 'upload/jibingxinxi_jibingfengmian7.jpg,upload/jibingxinxi_jibingfengmian8.jpg,upload/jibingxinxi_jibingfengmian9.jpg', '成人人群，肥胖者', '烧心、反酸、胸骨后疼痛、吞咽困难、慢性咳嗽', '质子泵抑制剂（奥美拉唑）、H2受体拮抗剂、生活方式调整（减肥、抬高床头）', '2025-04-11', '2025-04-11 23:40:47', '8', '7');
INSERT INTO `jibingxinxi` VALUES ('58', '2025-04-11 23:40:47', '抑郁症', '精神心理疾病', 'upload/jibingxinxi_jibingfengmian8.jpg,upload/jibingxinxi_jibingfengmian9.jpg,upload/jibingxinxi_jibingfengmian10.jpg', '青壮年人群，女性多于男性', '持续情绪低落、兴趣减退、疲劳感、睡眠障碍、食欲改变、自责自罪', '抗抑郁药物（SSRIs）、心理治疗（认知行为疗法）、物理治疗（经颅磁刺激）', '2025-04-11', '2025-04-11 23:40:47', '10', '8');

-- ----------------------------
-- Table structure for jiuzhenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jiuzhenxinxi`;
CREATE TABLE `jiuzhenxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `touxiang` longtext COMMENT '头像',
  `zhiwei` varchar(200) NOT NULL COMMENT '职位',
  `yuhao` int(11) NOT NULL COMMENT '余号',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  `shanzhangleixing` varchar(200) DEFAULT NULL COMMENT '擅长类型',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `yishengjianjie` longtext COMMENT '医生简介',
  `rongyuxinxi` longtext COMMENT '荣誉信息',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  `version` int(11) DEFAULT '0' COMMENT '版本号(乐观锁)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='就诊信息';

-- ----------------------------
-- Records of jiuzhenxinxi
-- ----------------------------
INSERT INTO `jiuzhenxinxi` VALUES ('61', '2025-04-11 23:40:47', 'D1001', '张伟', '男', '13800138001', 'upload/zaixianzixun_touxiang2.jpg,upload/jiuzhenxinxi_touxiang2.jpg,upload/jiuzhenxinxi_touxiang3.jpg', '主任', '10', '心血管内科', '高血压、冠心病、心力衰竭', '周一、三、五 8:00-12:00', '北京大学医学博士，从事心血管临床工作15年，擅长复杂冠心病介入治疗', '<p>国家科技进步二等奖、中华医学会心血管病分会委员</p>', '2025-04-11 23:40:47', '1', '0');
INSERT INTO `jiuzhenxinxi` VALUES ('62', '2025-04-11 23:40:47', 'D1002', '李婷', '女', '13800138002', 'upload/yuyuequxiao_touxiang2.jpg,upload/jiuzhenxinxi_touxiang3.jpg,upload/jiuzhenxinxi_touxiang4.jpg', '副主任', '10', '呼吸内科', '哮喘、慢阻肺、肺部感染', '周二、四全天 9:00-17:00', '复旦大学医学院硕士，呼吸危重症专家，擅长呼吸支持技术', '<p>上海市医学科技奖一等奖</p>', '2025-04-11 23:40:47', '3', '0');
INSERT INTO `jiuzhenxinxi` VALUES ('63', '2025-04-11 23:40:47', 'D1003', '王建国', '男', '13800138003', 'upload/yuyuequxiao_touxiang1.jpg,upload/jiuzhenxinxi_touxiang4.jpg,upload/jiuzhenxinxi_touxiang5.jpg', '主治医生', '3', '内分泌科', '糖尿病、甲状腺疾病、肥胖症', '周一至周五 13:00-17:00', '协和医科大学博士，中华医学会内分泌学分会委员', '全国卫生系统先进工作者', '2025-04-11 23:40:47', '4', '0');
INSERT INTO `jiuzhenxinxi` VALUES ('64', '2025-04-11 23:40:47', 'D1004', '陈晓', '男', '13800138004', 'upload/yuyuequxiao_touxiang8.jpg,upload/jiuzhenxinxi_touxiang5.jpg,upload/jiuzhenxinxi_touxiang6.jpg', '副主任', '4', '消化内科', '胃食管反流病、消化性溃疡、炎症性肠病', '周一、三、五 14:00-18:00', '中山大学医学博士，日本东京大学访问学者', '广东省医学科技创新奖', '2025-04-11 23:40:47', '4', '0');
INSERT INTO `jiuzhenxinxi` VALUES ('65', '2025-04-11 23:40:47', 'D1005', '赵敏', '女', '13800138005', 'upload/yuyueguahao_touxiang4.jpg,upload/jiuzhenxinxi_touxiang6.jpg,upload/jiuzhenxinxi_touxiang7.jpg', '主任', '10', '精神心理科', '抑郁症、焦虑症、睡眠障碍', '周二、四、六 9:00-12:00', '哈佛医学院博士后，中国心理卫生协会常务理事', '<p>全国优秀精神科医师奖</p>', '2025-04-11 23:40:47', '6', '0');
INSERT INTO `jiuzhenxinxi` VALUES ('66', '2025-04-11 23:40:47', 'D1006', '刘强', '男', '13800138006', 'upload/1763967477315.jpg', '副主任', '4', '骨科', '骨关节炎、运动损伤、脊柱疾病', '周一至周五 8:00-12:00', '解放军医学院硕士，关节置换手术专家', '<p>军队医疗成果三等奖</p>', '2025-04-11 23:40:47', '6', '0');

-- ----------------------------
-- Table structure for keshixinxi
-- ----------------------------
DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE `keshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) NOT NULL COMMENT '科室名称',
  `keshidizhi` varchar(200) NOT NULL COMMENT '科室地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='科室信息';

-- ----------------------------
-- Records of keshixinxi
-- ----------------------------
INSERT INTO `keshixinxi` VALUES ('31', '2025-04-11 23:40:47', '心血管内科', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('32', '2025-04-11 23:40:47', '呼吸内科', '门诊大楼2层西区');
INSERT INTO `keshixinxi` VALUES ('33', '2025-04-11 23:40:47', '骨科', '外科大楼5层');
INSERT INTO `keshixinxi` VALUES ('34', '2025-04-11 23:40:47', '儿科', '门诊大楼1层北区');
INSERT INTO `keshixinxi` VALUES ('35', '2025-04-11 23:40:47', '呼吸内科', '门诊大楼1层东区');
INSERT INTO `keshixinxi` VALUES ('36', '2025-04-11 23:40:47', '消化内科', '门诊大楼3层南区');
INSERT INTO `keshixinxi` VALUES ('37', '2025-04-11 23:40:47', '妇产科', '门诊大楼1层北区');
INSERT INTO `keshixinxi` VALUES ('38', '2025-04-11 23:40:47', '神经内科', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('39', '2025-04-11 23:40:47', '急诊科', '门诊大楼1层东区');
INSERT INTO `keshixinxi` VALUES ('41', '2025-04-11 23:40:47', '五官科', '门诊大楼2层东区');
INSERT INTO `keshixinxi` VALUES ('42', '2025-04-11 23:40:47', '皮肤科', '门诊大楼6层东区');
INSERT INTO `keshixinxi` VALUES ('43', '2025-04-11 23:40:47', '影像科', '门诊大楼5层东区');
INSERT INTO `keshixinxi` VALUES ('44', '2025-04-11 23:40:47', '检验科', '门诊大楼5层东区');
INSERT INTO `keshixinxi` VALUES ('45', '2025-04-11 23:40:47', '中医科', '门诊大楼1层南区');
INSERT INTO `keshixinxi` VALUES ('46', '2025-04-11 23:40:47', '肿瘤科', '门诊大楼1层南区');
INSERT INTO `keshixinxi` VALUES ('47', '2025-04-11 23:40:47', '针灸推拿科', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('48', '2025-04-11 23:40:47', '心理咨询室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('49', '2025-04-11 23:40:47', '门诊药房', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('50', '2025-04-11 23:40:47', '检验室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('51', '2025-04-11 23:40:47', '病理室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('52', '2025-04-11 23:40:47', 'CT室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('53', '2025-04-11 23:40:47', '磁共振室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('54', '2025-04-11 23:40:47', '透视室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('55', '2025-04-11 23:40:47', '生化室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('56', '2025-04-11 23:40:47', '收费室', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('57', '2025-04-11 23:40:47', '肝胆外科', '门诊大楼3层东区');
INSERT INTO `keshixinxi` VALUES ('58', '2025-04-11 23:40:47', '神经外科', '门诊大楼3层东区');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `typename` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext COMMENT '头像',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('161', '2025-04-11 23:40:47', '趁着年轻，输得起，看得开，去经历', '我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤', '其它', '发布人1', 'upload/news_headportrait1.jpg', '2', '2025-04-11 23:40:47', '1', '1', '1', 'upload/news_picture1.jpg', '<p>我在大学一年级那一年，毫无悬念地把自己吃成了一个胖子。不是那种巨大的胖子，而是介于正规的肥胖和臃肿之间的尴尬体型，比标准体型重了15斤。于是，我的整个大学生活变成了电影《蝴蝶效应》系列，那只蝴蝶重达15斤。</p><p>首先，我皈依了减肥。我可以整整一天滴水不进，然后第二天中午，一个小时之内连续去三个食堂吃午饭，每次都是两荤一素、一两米饭加一瓶大可乐，像是一个人孢子分裂出了三个暴食症患者。其次，因为要么饿得百爪挠心，要么撑得寝食难安，我变成了一个昼夜颠倒的人，再加上觉得自己邋遢难看，不愿见人，便逃掉了很多课。其三，逃课的空虚让我花了大量时间网购，击败了全国90%以上的电商消费者，和快递员结下了深厚的友谊。我买的大多数是衣服，衣服又穿不进，羞愤难当，继续皈依减肥。总之，那是我非常不快乐的几年。因为难以接受自己，所以蜷缩着，拒绝他人。</p><p>我很久之后才知道，人用来自憎的大脑边缘系统，在童年时就已经形成。可是，用来开导自己、原谅自己、使自己变得强大的智慧，却往往在我们本该成熟的年纪依然不具备。每一世代的年轻人都是脆弱的、敏感的、容易受他人影响的。而对于正年轻的一代来说，这个挑战异乎寻常的艰难。</p><p>电影《楚门的世界》中提出了一个假设以及相应的解答:当一个人活在所有人的窥探之下，他应该怎么办?答案是:他逃走，获得自由。然而，如果所有人活在所有人的窥探之下，那又该如何逃避?这不是假设，而是正在悄然发生的现实。我们无时无刻不在朋友圈、微博、贴吧、个人主页上展现自己的生活，同时，也在同样的平台上窥探他人的生活。我们无时无刻不在评估他人，同时，也在接受他人的评估。“个性张扬”只是狐假虎威的外衣，为的是掩饰自卑与自恋此起彼伏、相爱相杀的脆弱。我们羡慕嫉妒他人，也努力把自己的生活修饰得让他人羡慕嫉妒。我们对他人的意见过于敏感，无法忍受不被“点赞”的人生。</p><p>社交网络的核心在于“社交”，社交的动力，是出于人们无法忍受孤独;人们之所以无法忍受孤独，是因为人们无法拷问自己。可是，总有一天，我们要站在镜子前，发现我们并不是自己创造出来的那个有趣、可爱、有吸引力、有能力的人。那么，你还喜欢镜子里的自己吗?或者，镜子里的你还喜欢自己吗?这个世界是否称赞你、羡慕你、爱你，在某种程度上是个不断膨胀的谎言。关键的问题在于，你是否对自己足够诚实，并且接受诚实之后的不完美。</p><p>失去的痛苦、被拒绝的痛苦、被伤害的痛苦、分别的痛苦，它们如此显眼地横在前行的路上，让人想逃遁到那个充满着“赞”的虚幻世界里。然而，我们是人，走在一条从摇篮到坟墓的路上，年轻在途中，衰老在途中。必须和真实的世界发生联系，而不是兀自为尚未发生的事情恐惧;必须和真实的人发生各种关系，而不是如一座座只能遥远眺望的孤岛。</p><p>那些杀不死我们的，它们有时并不会让我们更加强大，而只是成为一段诗意或自嘲的记忆。趁着年轻，输得起，看得开，去经历。那些杀不死我们的，它们在混沌而无序的未来里，并不能成为我们手中的武器，却为我们的存活，增加了反抗脆弱与敏感的韧性。</p>');
INSERT INTO `news` VALUES ('162', '2025-04-11 23:40:47', '大学就该抓住青春，用汗水实现梦想', '大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还', '其它', '发布人2', 'upload/news_headportrait2.jpg', '3', '2025-04-11 23:40:47', '2', '2', '2', 'upload/news_picture2.jpg', '<p>大学之青春，人生之春，人生之王，人生之华也，宝贵的时光我们理当去珍惜。然而，当我们在青春布满藤墓的围墙上缓慢的攀行时;依旧游离在青春摇摆不定的尾巴上时;奋力想抓却抓不住，用力一扯，却又是散落一地的音符时;我们是否该回头思考了。零零碎碎的记忆，偶尔会闪过寂寞的长空，飘然在无际的苍穹，仅仅留下几颗闪烁的残星让我们自己深思，青春易逝，好比东逝的水—去不复还。</p><p>青春是属于我们的，是人生最最美好的时光。我们应该好好把握住现在象牙塔的点点滴滴。大学对于我们来说很重要，这里充满了好奇、机遇和挑战。当我懵懵懂懂的走过了两年才突然发现原来大学是这样的，每个人有不同的选择，有不同的理想，也有不同的人生。但是无论怎样都是一个博学的过程，学做人，学知识，学生活..…...春是疯狂的，是充满激情的，是奋斗的，最重要的是我们要坚定我们的梦想，为了梦想付出一切，为了梦想坚持到底，这才是真正的青春。青春的梦想就是黑夜里的灯塔在我们迷茫时给予我们方向，就是力量的源泉在我们身陷逆境时给予我们最大的动力，就是爱的港湾在我们屡次失败时给予我们受伤的心灵以安慰。因此无论何时何地，都不能忘却心里坚守的那份沉甸甸的梦想。</p><p>青春的梦想很简单，可能是梦想成为学习的佼佼者让GPA无限趋于4.0，可能是梦想成为学生工作的杰出者当上主席为自己的从政事业奠定基础，也可能是梦想成为运动场上的超级明星拥有大量的球迷粉丝，也可能是梦想成为职场达人，面试无压力，就业有保障...….或许你觉得这些都算不上梦想，其实梦想并不分大小和轻重，不能说只有中国梦才算是梦想，梦想就是这样每个人有不同的定位，但都是值得去追逐的，去为之奋斗的。()拥有了梦想，就有了坚定的信念，海风再大海浪再大，也无法扼杀我们追逐胜利的信念。信念给我们坚持的勇气，勇气赐我们昂扬的斗志，斗志带我们摆脱厄运;拥有了梦想，就能化压力为动力，梦想会时刻在鞭策我们，鼓励我们，让我们审视自己，发现不足，奋力补救，让自己保持不懈的前进动力;拥有了梦想，我们就不会在迷茫的路上更加迷茫，我们就能在青春之歌复杂的五线谱中听到动人的旋律。</p><p>我们是大学生，是祖国的未来，是民族复兴的脊梁，面对如此重任，怎么能不胸怀大志，坚定梦想，在青春的道路上奋斗。“恰同学少年，风华正茂，书生意气，挥斥方道。”青春是黄金时段，我们要以梦想为方向，扬帆起航，努力拼搏，给我们即将失去的青春以最好的结局。人因梦想而伟大，让我们一起奏响青春的梦想之歌，为各自的梦想努力进发吧!</p>');
INSERT INTO `news` VALUES ('163', '2025-04-11 23:40:47', '留退路就没有出路', '公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了', '其它', '发布人3', 'upload/news_headportrait3.jpg', '4', '2025-04-11 23:40:47', '3', '3', '3', 'upload/news_picture3.jpg', '<p>公元前一世纪，凯撒大帝率领他的军队抵达了英格兰，他决心要赢得这场战争，不管遇到什么情况都不会退却。为了让士兵们明白自己必胜的决心和信心，也为了断绝士兵们逃跑退缩的念头，凯撒命令士兵将运载他们的所有船只都烧毁。这使得军队的士气受到了莫大的鼓舞。后来他们获胜了。</p><p>很多人在处理重要问题的时候，总是喜欢把这些问题暂且搁置在一边，等以后再做。他们没有决定的勇气和魄力，总是在着手做事的时候想给自己留一条后路，以免没有出路。对于他们来说，退路就是出路。但是，事实证明，这样是不会有任何成就的。</p><p>背水一战、破釜沉舟的军队往往能获得胜利。同样，一个做事不留退路、一心向前的人，不管遇到什么困难和障碍，他都不会后退，因为他没有路可以退。而那些人在为自己准备退路的同时就是在后退，他们立志不坚，把精力和时间投入到退缩的准备上，这种人绝不会获得成功。</p><p>一个人能否成功，关键在于他意志力的强弱。意志坚强的人不管遇到什么困难和障碍，都会百折不挠，想方设法地克服;意志薄弱的人一遇到麻烦，甚至在挫折还没有到来之前，他们就开始庸人自扰，彷徨失措，把精力都放在如何规避问题上，放在为自己铺设后路上。当困难一个接一个来时，他们就一步接一步后退，最后他们终将无路可退。</p><p>现实生活中，到处都充斥着这样的青年，他们富有上进心，希望有一番成就和作为，但是他们意志薄弱，没有必胜的决心，不敢破釜沉舟;他们始终左摇右摆，没有坚定的信念，一遇到挫折和困难，马上就缩回了进取的手和脚。这样的人，这样的心态，最后遭受失败也不足为奇。</p><p>不给自己留后路，让自己没有回旋的余地，方能竭尽全力，锐意进取，就算遇到千万困难，也不会退缩，因为回头也没有路了，不如不顾一切地前进，还能找到一线希望。有了这样一种“拼命”和“豁出去”了的信念，才能彻彻底底地消除心中的恐惧、犹豫、胆怯。当一个人不给自己任何退路的时候，他就什么都不怕了，勇气、信心、热忱等从心底油然而生，到最后自然能“置之死地而后生”。</p><p>面对严峻的问题和重要环节，周全而细致地考虑问题的各个方面也是应该的，但是过多地权衡，前怕狼后怕虎，一会儿这样一会儿那样，最终却还是原样，可以肯定地说，你不会有任何进展，甚至还会变得—塌糊涂。</p><p>出路和退路不是同义词，而是反义词，留退路就没有出路，因此，你应该只找出路，不留退路。大学生励志青春文章:培养积极的思维模式。</p>');
INSERT INTO `news` VALUES ('164', '2025-04-11 23:40:47', '在大学给自己定个目标', '最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到', '目标', '发布人4', 'upload/news_headportrait4.jpg', '5', '2025-04-11 23:40:47', '4', '4', '4', 'upload/news_picture4.jpg', '<p>最近和几名大一的学生聊天，几名同学认为身边的人普遍都很迷茫，不知道该干什么，业余时间要么是对着电脑、要么是抱着手机刷微博。我问道:“为什么不找点事情做做，制定一个计划，哪怕是锻炼身体也好?4年也可以把身体锻炼得结实些。”当然，我也清楚，我的这些建议对他们来说，未必能有多大用。许多学生因为意志不坚定，没有老师的监督、逼迫，根本就无法做到。</p><p>这让我想到前段时间蹿红网络的“悔过励志帖”——《同学，我大四了》，作者回首自己的大学4年，他感叹投入精力“充其量不过40%”︰每天上网时间少则4个小时，多则10个小时;考试永远是画画重点，在高呼“60分万岁”中与奖学金无缘。作者借自己求职受挫，写帖子以警醒后来人，不要等毕业时再后悔，就业难不仅仅是大学、社会的问题，也是自身的问题。</p><p>也许，这样的大学生不是一个两个，而是一个群体。然而，我总是怀疑这样的励志帖，甚至教师在课堂上苦口婆心地劝说，能对现实中的大学和大学生起到多大的影响和作用，很多时候恐怕只有“三分钟热度”的效应。毕竟，现实的窘境不是一天积累起来的，从小学到高中，学生们的学习都是被动地接受应试，隐藏着功利性的目的，也许从没有为主动学习感到过快乐，而在高中时代，有的教师甚至打出这样的励志宣言:等你考上大学，你就可以想干什么干什么了..…..乎，高中时代的目标是很清晰的，就是为了考上大学，而在一些高中生的眼里，大学甚至就好比是天堂，进了大学的门就可以放轻松了。</p><p>此前，有很多声音都认为大学越来越像培训机构，功利性学习正在整个大学蔓延，考证热、过早地职业化都是大学功利性学习最好的表现形式。在这种批判的声音中，“培训机构”总有被贬低的意味，难与大学之学术思想殿堂的高雅相媲美。但是，在这种批判的背后，还有一个现实问题被遮蔽，那就是很多大学生对自己的学习、对大学生活没有任何目标。</p><p>暨南大学舆情研究中心曾就“当代广州大学生生活与思想现状”作过详细的问卷调查，其中，接受调查的广州高校在读本科生共有191份有效样本，就“读大学的原因”、“大学第一印象”、“专业选择首要因素”等问题制作问卷调查并进行分析。结果显示，在未来规划方面，73.3%的同学表示只有粗略的想法，并无非常明确的目标。</p><p>如果说功利化的学习毕竟还有一个前进的目标，至少能体现出一种为了目标而奋斗的精神和奔头，而没有任何目标，漫无目的地混日子则更可怕，它体现的是一种虚无、意义的缺失。说实话，没有引导学生树立明确的奋斗目标、进而指引学生为之努力的大学，学生很难找到努力的方向，也找不到努力的意义，这还不如“培训机构”来得实在、来得有效用，至少，培训机构的目标很清晰，它能够给学生们一个实实在在看得见的效果，而没有任何目标、浑浑噩噩的大学生活，也许只会给很多学生带来悔过。</p><p>无论如何，混日子的大学生活是不可取的。一方面，高校应该在新生入学的时候，作好目标和方向的引导，甚至贯穿大学4年的学习过程;另一方面，还在迷途的大学生，应尽早为自己找个前进的方向，作好自我规划，对自己的未来和前途负责。</p>');
INSERT INTO `news` VALUES ('165', '2025-04-11 23:40:47', '做个真正的学生', '最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点', '其它', '发布人5', 'upload/news_headportrait5.jpg', '6', '2025-04-11 23:40:47', '5', '5', '5', 'upload/news_picture5.jpg', '<p>最坚强的人，是以宽容的态度面对自己缺点的人，而懦弱的人，则不敢面对自己的缺点，最终自暴自弃，葬送自己。只要有进取心，我们都能从失败的领域中，发现到达成功的途径;只要有自信心，我们身上的每一个缺陷，也都可以成为与众不同的优点。</p><p>曾经有人特地赶赴日本，向三宅一生服装设计大师请教如何设计出独具一格的服装款式。三宅一生大师提出两个很有意思的观点:一是，设计的衣服，其实都是没有全部完成的，其余的创作空间，则是留给穿衣服的人去完成的;二是，选择布料时，会请厂商提供纺织、印染失败的布料，从这些“残次”的作品中寻找泉涌般的创作灵感，设计出最具独创性的作品。</p><p>这样一来，顾客才能穿出自己的风格，并使得同一件衣服，在不同的人身上，能有不同的效果。而且，以这样的概念设计出来的衣服，也不容易失败。正是因为这两个观点，三宅一生所设计的服装总是独一无二地能够引领世界潮流。</p><p>在艺术家的眼中，任何事物都是创作的最好材料，不管是枯木还是残破的布料，对他们而言，都是最具生命力的事物，在他们手中都能画腐朽为神奇。</p><p>朽木也能精雕，更何况我们自己。那些看起来弯曲、盘旋、似乎毫无用处的木料，往往最终能成为艺术品的原材料，因为这种不同，才特别珍贵。花点心思，身上的缺点也能变成独特的优点，就像艺术家们一般，顺着曲折的木头，创造出与众不同、完美无缺的惊世杰作。</p><p>励志文章3:一生学习，成就一生无知的人并不是没有学问的人，而是不明了自己的人。当一个有学问的人信赖书本、知识和权威，借着它们而了解自己，那么他便是愚蠢的。了解是由自我认识而来，而自我认识乃是一个人明白他自己的整个心理过程。因此，教育的真正意义是自我了解，因为整个生活是汇聚于我们每个人的身心的最高“机密”。</p><p>目前我们所谓的教育，只是由书本聚集见闻、知识，这是任何懂得阅读的人都办得到的。这种教育提供了一条巧妙的逃避自我之途，如同其他所有的逃避方式一样，它无可避免地制造出有增无减的苦难。冲突和混乱是由于我们和他人、事物、概念之间差错的关系而产生，除非我们了解此项关系而改变它，否则，知识的学习和堆砌，各种技能的获取，都只会将我们导向更深的混乱和毁灭。</p><p>我们将子女送入学校，学习一些技能，并希望借此来带动整个家庭的长久繁荣，至少在家长们年老的时候有养老保险，有稳定的照顾。我们对孩子最急切的渴望，就是将他塑造成一个能在一个领域中出类拔萃之人，希望给予他一个安全的经济地位。物质的获得有时候并不难，然而，技术的训练能使我们了解自己吗?</p><p>虽然，懂得念书写字、学习土木工程或其他某种职业，是必需的，然而技术能给予我们了解生活的能力吗?技术，无疑是次要的;如果技术是我们惟一奋力以求的东西，那么我们就摒弃了生活中最主要的东西了。</p><p>生活，是痛苦、喜悦、美、丑、爱等多种感受的综合，一旦我们将它整体地加以了解，那么这项了解在各方面都会创出它应有的技术。不过，相反的说法就不是真的了∶技术永远无法产生创造性的了解。</p><p>如果过分强调技术，我们便毁灭了人。磨练技能和效率，然而对生活却不了解，对思想、欲望的行踪不能领悟，只会使我们变得日益残暴无情，以致于触发战争，危害了我们肉体上的安全。由于我们的教育过重于单单培养技术，已经制造出许多科学家、数学家、造桥工程师、征服太空的人，但这些人了解生活的整体过程吗?一个专家能把生活本身完整地体验感受表达出来吗?或者他真的体验到生活了吗?有时候，当他不是专家时，反而更能直指生活的本质。一颗能够给予人辉煌一生的企图心，首先应当是一颗敏感的善良的热情的心，让我们对周围的一切保持孩童一样旺盛的好奇心。我们应当渴望了解新奇的事物，渴望探索未知的领域。只有在这种理念的支配下，我们才能不断地、孜孜以求地、乐此不疲地提升自己的认知和理解能力，改善自我，从而更接近成功的巅峰。</p>');
INSERT INTO `news` VALUES ('166', '2025-04-11 23:40:47', '远大的目标是成功的磁石', '上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标', '目标', '发布人6', 'upload/news_headportrait6.jpg', '7', '2025-04-11 23:40:47', '6', '6', '6', 'upload/news_picture6.jpg', '<p>上天对每个老实人都是公平的，每个人每一天都是二十四个小时，每个人的所有时间都是一生;同时上天对每个老实人又是不公平的，给每一个人的时间不都是二十四个小时，给每一个人的所有时间不都是一生。这之间的区别就在于有无远大目标。</p><p>有大目标的人，生活永远是积极的，他们会朝着自己的目标不断前进;没有大目标的老实人浑浑噩噩，不思进取，最后被生活淘汰。</p><p>从前有个叫阿巴格的人生活在内蒙古草原上。有一次，年少的阿巴格和爸爸在草原上迷了路，阿巴格又累又怕，到最后快走不动了。爸爸就从兜里掏出五枚硬币，把一枚硬币埋在草地里，把其余四枚放在阿巴格的手上，说:“人生有五枚金币，童年、少年、青年、中年、老年各有一枚，你现在才用了一枚，就是埋在草地里的那一枚，你不能把五枚都扔在草原里，你要一点点地用，每一次都用出不同来，这样才不枉人生一世。今天我们一定要走出草原，你将来也一定要走出草原。世界很大，人活着，就要多走些地方，多看看，不要让你的金币没有用就扔掉。”在父亲的鼓励下，阿巴格走出了草原。长大后，阿巴格离开了家乡，成了一名十分优秀的船长。</p><p>目标是与一个人的愿望相联系的，是对未来的一种设想，它往往和目前的行动不直接联系。但目标又不能脱离现实的生活，现实生活中的某些现象如果符合了个人的需要，与个人的世界观一致，这些现实的因素就会以个人目标的形式表现出来。目标总是对现实生活的重新加工，舍弃其中某些成分，又对某些因素给予强调的过程，但它必须以对客观规律的认识为基础，符合客观规律。</p><p>能实现自己目标的老实人，对他个人而言，他是一个成功者，也是个幸福者。目标是成功的必要条件，虽然仅仅拥有目标，你不一定能取得成功;但是如果没有目标，成功对你而言就无从谈起。</p><p>远大的美好目标能吸引人努力为实现它而奋斗不止。</p>');
INSERT INTO `news` VALUES ('167', '2025-04-11 23:40:47', '做一个最好的自己', '自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费', '目标', '发布人7', 'upload/news_headportrait7.jpg', '8', '2025-04-11 23:40:47', '7', '7', '7', 'upload/news_picture7.jpg', '<p>自信是成功的前提，你拥有自信，就拥有成功的一半机会。相信自己是最棒的就一定会成就一定的事业。拥有自信的人之所以会心想事成、走向成功，是因为他们都有着巨大无比的潜能等着去开发;消极失败的心态之所以会使人怯弱无能、走向失败，是因为它使人放弃潜能的开发，让潜能在那里沉睡、白白浪费。</p><p>我们大家都知道的人大脑拥有140亿个脑细胞，但我们思维意识只利用了脑细胞的很少部分，如能将更多的脑细胞从睡眠中激活出来，人的思维意识将更加强大。如果我们都能充满自信，就能创造人间奇迹，亦能创造一个最好的自己。</p><p>一个人相信自己是什么，就会是什么。一个人心里怎样想，就会成为怎样的人。这从心里学上讲是有一定的道理的。我们每一个人心里都有一幅心里蓝图，或是一幅自画像，有人称它为运作结果。如果你想象的是做最好的你，那么你就会在你内心的荧光屏上看到一个踌躇满志、不断进取、勇于开拓创新的自我。同时还会经常收到我做的很好，我以后还会做的更好之类的信息，这样你注定会成为一个最好的你。美国哲学家爱默生说:“人的一生正如他一天中所想的那样，你怎么想，怎么期待，就有怎样的人生。”美国有名的钢铁大王安德鲁·卡耐基就是一个充分发挥自己创造机会的楷模。他12岁时由英格兰移居美国，先是在一家纺织厂做工人，当时他的目标是“做全厂最出色的工人。”因为他经常这样想，以这样做，最终他实现了他的目标。后来命运有安排他当邮递员，他想的是怎样成为“全美最杰出的邮递员。”结果他的这一目标也实现了。他的一生总是根据自己所处的环境和地位塑造最佳的自己，他的座右铭就是“相信自己是最棒的。“</p><p>做一个最好的自己，不一定非要当什么“家”，也不一定非要出什么“名”，更不要与别人比高低、比大小。就像人的手指，有大有小，有长有短，他们各有所长，各有所短，你能说拇指比食指好吗?决定最好的你，既不是你拥有的物质财富的多少，也不是你身份的贵贱，关键是看你是否拥有实现自己理想的强烈愿望的程度，看你身上的潜力能否充分发挥。人们熟知的一些英雄模范，就是在平凡的工作岗位上充分发挥人的创新能力，做好自己身边的每一件小事，创造了做好的自己。</p><p>“塑造一个最好的自己”，这个目标人人都可以实现。你只意识到自己是大自然的一分子，坚信自己拥有“无限的能力”与“无限的可能”，这种坚定的信心能帮助你创造和谐的心理、生理韵律，建立起自己理想的自我形象，体现自己人格行为应该具有的魅力。</p>');
INSERT INTO `news` VALUES ('168', '2025-04-11 23:40:47', '有了梦想就不会感到疲惫', '一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃', '梦想', '发布人8', 'upload/news_headportrait8.jpg', '9', '2025-04-11 23:40:47', '8', '8', '8', 'upload/news_picture8.jpg', '<p>一段时间以前，一位在港的大陆学生，因为学业的压力、前途的渺茫等诸多原因，选择了自杀。在讨论和反思的潮流中，有一位毕业生在校内网匿名发表了自己的故事。他说，自己当年在学校也曾经面临绝境，一文不名。他选择了做“乞丐学生”，坚持着念完了课程。回忆的一些情节让我印象深刻，比如，平时偷偷住电梯间，蓬头垢面如乞丐;实在很饿，学校举办餐会的时候默默进场埋头大吃。</p><p>“峣峣者易折，皎皎者易污。”能够从内地高校到香港读书的学子，都是一些很优秀的年轻人。不知道曾经高居象牙塔的书生，怎样狠下心，咬牙面对那一个天渊般的落差，以及旁人的目光和议论。</p><p>说到这里，很像一个《读者》式的励志故事。但是这种励志故事从来就不缺乏感动人的力量，因为虽然光明的尾巴不是人人都能够拥有，但是人人都有梦想，面对实现过程中的困难，其奋斗或者说挣扎，却常常和平凡如你我的人们相遇。</p><p>《当幸福来敲门/The Pursuit of Happyness》就是这样偶然被看到，又感动了我的电影。黑人克里斯是一名普普通通的医疗器械推销员，妻子忍受不了经济上的压力离开了他，留下5岁的儿子克里斯托夫和他相依为命。克里斯银行账户里只剩下21块钱，因为没钱付房租，他和儿子被撵出了公寓。费尽周折，克里斯赢得了在一家着名股票投资公司实习的机会，但是实习期间没有薪水，而且最终只有一人可以成功进入公司。</p><p>学妹曾经告诉我一个故事，让我每次想到都觉得莫名恐怖。她说，她硕士毕业去广东求职，一个中学要招几个老师，结果南来北往的硕士博士挤了快有一个礼堂。可想而知，竞争有多么残酷。看来，中外求职者都面临着同样的挑战。但是克里斯和许多“80后”的大学毕业生不同，他更加坚韧:为了节省时间，上班时候不喝水，以避免上厕所。以疯狂的速度给客户打电话，打完一个，直接按挂机键就拨下一个电话。白天，克里斯忍受着一次又一次被拒绝的失望，带着微笑在公司和客户之间穿梭。回家，则要带着儿子穿过污秽的街道，忍受房东的咆哮。</p><p>终于，交不起房租的父子俩流落街头。克里斯和儿子在午夜地铁里相对无言，儿子不能理解为什么不能回家住，爸爸却开始玩游戏:“我们通过时光机，到达古代了!”儿子立刻兴奋地配合起来，环顾左右。父子俩在“恐龙”的追杀下，逃到了一个“山洞”里，“山洞”是什么呢，其实是一间男厕所。克里斯搂着熟睡的儿子，坐靠在厕所的墙面。午夜的灯光很惨白，这个消瘦的、营养不良的父亲，默默地流下了泪水。</p><p>父子俩依旧为了幸福到来而努力。他们开始住收容所，面对有限的床位，这个奔跑起来像猎豹一样的人，有时候得把草原上的爆发力运用到打架上面来。儿子在简陋的收容所床上睡着了，父亲还在埋头修理推销的医疗器械，或者翻那本厚厚的笔试全书。</p><p>钱包磨损得厉害，而且，太瘪了，每张钱都很熟悉。老板要借5块钱，犹豫再三，摩挚着纸币，最终还是把钱送了出去。卖血。鲜血在塑料袋里面渗开，那是一个男人所能奉献的最后。拿着卖血的钱，克里斯仍然去买电子元件。一点点的希望，都要去坚持。</p><p>对于父母，最心酸的事儿是什么呢?就是子女的一点可怜的愿望得不到满足。克里斯托夫的惟一的玩偶“美国英雄”，在一次挤车的过程中掉到了地上。5岁的男孩悲伤欲绝，克里斯坚硬的表情下，读出的是面对困难的凶狠和惨痛。但是，无论多么深切的无望，都没有摧毁父子间的亲情与他们的信念，他们相信幸福总会落到自己的身上。“你是个好爸爸”，克里斯托夫跟着爸爸四处流浪，可是孩子的心灵，衡量的砝码和天使是—样的。</p><p>克里斯最终成为了投资公司的员工，看似冷漠的白人老板们，此时显出他们的些微温情。他忍住了泪水，颤抖着拿起自己的物品，走入了茫茫人海。在熙熙攘攘的人群中间，克里斯举起手，为自己鼓掌，那无声的，一下下重重的掌声，是在为自己喝彩。其实，克里斯托夫的“美国英雄”并没有失落。</p><p>这是一个非常典型的“美国梦”:一个人通过自己的努力，可以实现自己的梦想，幸福，会来敲门。很多人往往会关注对于梦想的树立，而往往忽略过程的艰辛。特别是，当面对一个看似无望的现实的时候，有多少人会坚持，多少人会放弃呢?生活总是在不断地修正，并且提醒我们，顺应大潮的人总是较有可能抵达成功的彼岸。可是，确实是有些人，愿意逆流而上。我相信，这是导演对于逆行者的一点鼓励。</p><p>那个香港的匿名毕业生后来博士毕业，找到了一份不错的工作，有了漂亮的妻子和可爱的孩子。这个强人在帖子里说，有什么坚持不下来的呢?只要有梦想</p>');

-- ----------------------------
-- Table structure for newstype
-- ----------------------------
DROP TABLE IF EXISTS `newstype`;
CREATE TABLE `newstype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1763104602483 DEFAULT CHARSET=utf8 COMMENT='新闻资讯分类';

-- ----------------------------
-- Records of newstype
-- ----------------------------
INSERT INTO `newstype` VALUES ('1763104573519', '2025-11-14 15:16:13', '梦想');
INSERT INTO `newstype` VALUES ('1763104594682', '2025-11-14 15:16:34', '目标');
INSERT INTO `newstype` VALUES ('1763104602482', '2025-11-14 15:16:42', '其它');

-- ----------------------------
-- Table structure for pingjiaxinxi
-- ----------------------------
DROP TABLE IF EXISTS `pingjiaxinxi`;
CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` longtext COMMENT '头像',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1763106142103 DEFAULT CHARSET=utf8 COMMENT='评价信息';

-- ----------------------------
-- Records of pingjiaxinxi
-- ----------------------------
INSERT INTO `pingjiaxinxi` VALUES ('1763106142102', '2025-11-14 15:42:22', '1763106136272', 'D1005', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '2025-11-14 15:42:16', 'zly', '朱丽叶', '非常好');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1764213137237 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1763104131364', '2025-11-14 15:08:51', '1763099293617', '65', 'jiuzhenxinxi', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '1', '精神心理科', null);
INSERT INTO `storeup` VALUES ('1764212890496', '2025-11-27 11:08:10', '1763099293617', '62', 'jiuzhenxinxi', '李婷', 'upload/yuyuequxiao_touxiang2.jpg', '1', '呼吸内科', null);
INSERT INTO `storeup` VALUES ('1764213137236', '2025-11-27 11:12:17', '1763099293617', '63', 'jiuzhenxinxi', '王建国', 'upload/yuyuequxiao_touxiang1.jpg', '1', '内分泌科', null);

-- ----------------------------
-- Table structure for systemintro
-- ----------------------------
DROP TABLE IF EXISTS `systemintro`;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统简介';

-- ----------------------------
-- Records of systemintro
-- ----------------------------
INSERT INTO `systemintro` VALUES ('1', '2025-04-11 23:40:47', '系统简介', 'SYSTEM INTRODUCTION', '医疗预约与诊断系统是数字化医疗的重要实践，其核心价值在于重构传统医疗服务的供需模式。通过智能化调度，系统有效缓解了\"看病难\"问题，使患者能够便捷获取精准的医疗服务，同时优化医疗资源配置效率，减少资源闲置与浪费。\r\n\r\n对患者而言，系统打破了时空限制，提供透明、公平的预约机制，显著降低时间成本，尤其惠及老年、残障等弱势群体；对医疗机构，则实现了就诊流量的科学调控，提升运营效率并降低管理负荷。更深层的意义在于，系统通过数据沉淀为分级诊疗提供支持，助力医疗资源向基层下沉，推动公共卫生服务的均衡化发展。\r\n\r\n作为智慧医疗的基础设施，该系统不仅改善单一就医体验，更通过流程再造促进整个医疗体系向\"以患者为中心\"的服务模式转型，为构建高效、普惠的现代医疗卫生体系提供技术支撑。', 'upload/systemintro_picture1.jpg', 'upload/systemintro_picture2.jpg', 'upload/systemintro_picture3.jpg');

-- ----------------------------
-- Table structure for systemnotice
-- ----------------------------
DROP TABLE IF EXISTS `systemnotice`;
CREATE TABLE `systemnotice` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统公告';

-- ----------------------------
-- Records of systemnotice
-- ----------------------------
INSERT INTO `systemnotice` VALUES ('1', '2025-04-11 23:40:47', '这是系统公告');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin', 'upload/image1.jpg', '管理员', '2025-04-11 23:40:47');

-- ----------------------------
-- Table structure for yisheng
-- ----------------------------
DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `yishengxingbie` varchar(200) DEFAULT NULL COMMENT '医生性别',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='医生';

-- ----------------------------
-- Records of yisheng
-- ----------------------------
INSERT INTO `yisheng` VALUES ('21', '2025-04-11 23:40:47', 'D1001', '123456', '张伟', '男', '13800138001', 'upload/zaixianzixun_touxiang2.jpg');
INSERT INTO `yisheng` VALUES ('22', '2025-04-11 23:40:47', 'D1002', '123456', '李婷', '女', '13800138002', 'upload/1763967604279.jpg');
INSERT INTO `yisheng` VALUES ('23', '2025-04-11 23:40:47', 'D1003', '123456', '王建国', '男', '13800138003', 'upload/yuyuequxiao_touxiang1.jpg');
INSERT INTO `yisheng` VALUES ('24', '2025-04-11 23:40:47', 'D1004', '123456', '陈晓', '男', '13800138004', 'upload/yuyuequxiao_touxiang8.jpg');
INSERT INTO `yisheng` VALUES ('25', '2025-04-11 23:40:47', 'D1005', '123456', '赵敏', '女', '13800138005', 'upload/yuyueguahao_touxiang4.jpg');
INSERT INTO `yisheng` VALUES ('26', '2025-04-11 23:40:47', 'D1006', '123456', '刘强', '男', '13800138006', 'upload/yisheng_touxiang6.jpg');
INSERT INTO `yisheng` VALUES ('27', '2025-04-11 23:40:47', 'D1007', '123456', '杨帆', '女', '13800138007', 'upload/yisheng_touxiang7.jpg');
INSERT INTO `yisheng` VALUES ('28', '2025-04-11 23:40:47', 'D1008', '123456', '周华', '男', '13800138008', 'upload/yuyueguahao_touxiang6.jpg');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `money` varchar(10) DEFAULT NULL COMMENT '余额',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1763099293618 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1763099293617', '2025-11-14 13:48:13', 'zly', '123456', '女', '朱丽叶', '18', '19187654320', '65140', 'upload/1763099135654.jpeg');

-- ----------------------------
-- Table structure for yuyueguahao
-- ----------------------------
DROP TABLE IF EXISTS `yuyueguahao`;
CREATE TABLE `yuyueguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` longtext COMMENT '头像',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `yuhao` int(11) DEFAULT NULL COMMENT '挂号数',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `zf` varchar(10) DEFAULT NULL COMMENT '是否支付',
  `version` int(11) DEFAULT '0' COMMENT '版本号(乐观锁)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1764225518779 DEFAULT CHARSET=utf8 COMMENT='预约挂号';

-- ----------------------------
-- Records of yuyueguahao
-- ----------------------------
INSERT INTO `yuyueguahao` VALUES ('1763104103244', '2025-11-14 15:08:23', '1763104072296', 'D1005', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '主任', '1', '精神心理科', '周二、四、六 9:00-12:00', '2025-11-18 00:00:00', '焦虑，抑郁', 'zly', '朱丽叶', '18', '女', '19187654320', '是', '通过，初步判断为心理压力过大导致失眠', '已退款', '0');
INSERT INTO `yuyueguahao` VALUES ('1763953267532', '2025-11-24 11:01:07', '1763953238806', 'D1002', '李婷', 'upload/yuyuequxiao_touxiang2.jpg', '副主任', '1', '呼吸内科', '周二、四全天 9:00-17:00', '2025-11-27 14:00:00', '呼吸急促', 'zly', '朱丽叶', '18', '女', '19187654320', '是', '呼吸性碱中毒', '未支付', '0');
INSERT INTO `yuyueguahao` VALUES ('1763953348865', '2025-11-24 11:02:28', '1763953310212', 'D1006', '刘强', 'upload/yuyueguahao_touxiang6.jpg', '副主任', '1', '骨科', '周一至周五 8:00-12:00', '2025-11-25 08:00:00', '骨折', 'zly', '朱丽叶', '18', '女', '19187654320', '是', '骨折', '已退款', '0');
INSERT INTO `yuyueguahao` VALUES ('1763971212003', '2025-11-24 16:00:12', '1763971172032', 'D1001', '张伟', 'upload/zaixianzixun_touxiang2.jpg', '主任', '1', '心血管内科', '周一、三、五 8:00-12:00', '2025-11-28 13:00:00', '血压升高', 'zly', '朱丽叶', '18', '女', '19187654320', '待审核', null, '未支付', '0');
INSERT INTO `yuyueguahao` VALUES ('1764225518778', '2025-11-27 14:38:38', '1764225505491', 'D1005', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '主任', '1', '精神心理科', '周二、四、六 9:00-12:00', '2025-11-29 09:00:00', '1', 'zly', '朱丽叶', '18', '女', '19187654320', '是', '1', '已支付', '0');

-- ----------------------------
-- Table structure for yuyuequxiao
-- ----------------------------
DROP TABLE IF EXISTS `yuyuequxiao`;
CREATE TABLE `yuyuequxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` longtext COMMENT '头像',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `yuyueshijian` varchar(200) DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1763953644771 DEFAULT CHARSET=utf8 COMMENT='预约取消';

-- ----------------------------
-- Records of yuyuequxiao
-- ----------------------------
INSERT INTO `yuyuequxiao` VALUES ('1763952579502', '2025-11-24 10:49:39', '1763104072296', 'D1005', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '主任', '精神心理科', '周二、四、六 9:00-12:00', '2025-11-18 00:00:00', '焦虑，抑郁', 'zly', '朱丽叶', '19187654320', '2025-11-24 10:49:26', '没有时间去了', '1763099293617', '1763104103244', '待审核', null);
INSERT INTO `yuyuequxiao` VALUES ('1763953644770', '2025-11-24 11:07:24', '1763953310212', 'D1006', '刘强', 'upload/yuyueguahao_touxiang6.jpg', '副主任', '骨科', '周一至周五 8:00-12:00', '2025-11-25 08:00:00', '骨折', 'zly', '朱丽叶', '19187654320', '2025-11-24 11:07:13', '取消', '1763099293617', '1763953348865', '待审核', null);

-- ----------------------------
-- Table structure for zaixianzixun
-- ----------------------------
DROP TABLE IF EXISTS `zaixianzixun`;
CREATE TABLE `zaixianzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixunbianhao` varchar(200) DEFAULT NULL COMMENT '咨询编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `touxiang` longtext COMMENT '头像',
  `zixunneirong` varchar(200) DEFAULT NULL COMMENT '咨询内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zixunriqi` date DEFAULT NULL COMMENT '咨询日期',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zixunbianhao` (`zixunbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1763104125311 DEFAULT CHARSET=utf8 COMMENT='在线咨询';

-- ----------------------------
-- Records of zaixianzixun
-- ----------------------------
INSERT INTO `zaixianzixun` VALUES ('1763104125310', '2025-11-14 15:08:45', '1763104106530', 'D1005', '赵敏', 'upload/yuyueguahao_touxiang4.jpg', '失眠，焦虑，抑郁', 'zly', '朱丽叶', '2025-11-14', null);

-- ----------------------------
-- Table structure for zhenduanbingli
-- ----------------------------
DROP TABLE IF EXISTS `zhenduanbingli`;
CREATE TABLE `zhenduanbingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `jiuzhenshijian` varchar(200) DEFAULT NULL COMMENT '就诊时间',
  `zhenduanshijian` datetime DEFAULT NULL COMMENT '诊断时间',
  `shousuoya` double NOT NULL COMMENT '收缩压mmHg',
  `shuzhangya` double NOT NULL COMMENT '舒张压mmHg',
  `tiwen` double NOT NULL COMMENT '体温/°',
  `binglitupian` longtext COMMENT '病历图片',
  `bingqingdengji` longtext COMMENT '病情登记',
  `zhenduanbaogao` longtext COMMENT '诊断报告',
  `zhenduanjieguo` varchar(200) DEFAULT NULL COMMENT '诊断结果',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1763105832370 DEFAULT CHARSET=utf8 COMMENT='诊断病历';

-- ----------------------------
-- Records of zhenduanbingli
-- ----------------------------
INSERT INTO `zhenduanbingli` VALUES ('1763105832369', '2025-11-14 15:37:12', 'D1005', '赵敏', '主任', '精神心理科', '周二、四、六 9:00-12:00', '2025-11-14 00:00:00', '110', '69', '36', 'upload/1763104869575.jpg', '轻度抑郁症', 'upload/1763105810405.docx', '轻度抑郁症', 'zly', '朱丽叶', '18', '19187654320');

-- ----------------------------
-- Table structure for zhengzhuangleixing
-- ----------------------------
DROP TABLE IF EXISTS `zhengzhuangleixing`;
CREATE TABLE `zhengzhuangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhengzhuangleixing` varchar(200) NOT NULL COMMENT '症状类型',
  `image` longtext COMMENT 'image',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='症状类型';

-- ----------------------------
-- Records of zhengzhuangleixing
-- ----------------------------
INSERT INTO `zhengzhuangleixing` VALUES ('41', '2025-04-11 23:40:47', '呼吸道感染', 'upload/zhengzhuangleixing_image1.jpg,upload/zhengzhuangleixing_image2.jpg,upload/zhengzhuangleixing_image3.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('42', '2025-04-11 23:40:47', '心血管疾病', 'upload/zhengzhuangleixing_image2.jpg,upload/zhengzhuangleixing_image3.jpg,upload/zhengzhuangleixing_image4.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('43', '2025-04-11 23:40:47', '代谢性疾病', 'upload/zhengzhuangleixing_image3.jpg,upload/zhengzhuangleixing_image4.jpg,upload/zhengzhuangleixing_image5.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('44', '2025-04-11 23:40:47', '心血管疾病', 'upload/zhengzhuangleixing_image4.jpg,upload/zhengzhuangleixing_image5.jpg,upload/zhengzhuangleixing_image6.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('45', '2025-04-11 23:40:47', '呼吸道疾病', 'upload/zhengzhuangleixing_image5.jpg,upload/zhengzhuangleixing_image6.jpg,upload/zhengzhuangleixing_image7.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('46', '2025-04-11 23:40:47', '骨关节疾病', 'upload/zhengzhuangleixing_image6.jpg,upload/zhengzhuangleixing_image7.jpg,upload/zhengzhuangleixing_image8.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('47', '2025-04-11 23:40:47', '消化系统疾病', 'upload/zhengzhuangleixing_image7.jpg,upload/zhengzhuangleixing_image8.jpg,upload/zhengzhuangleixing_image9.jpg');
INSERT INTO `zhengzhuangleixing` VALUES ('48', '2025-04-11 23:40:47', '精神心理疾病', 'upload/zhengzhuangleixing_image8.jpg,upload/zhengzhuangleixing_image9.jpg,upload/zhengzhuangleixing_image10.jpg');
