# coding:utf-8
import random
from datetime import datetime
from sqlalchemy import text,TIMESTAMP

from api.models.models import Base_model
from api.exts import db
from sqlalchemy.dialects.mysql import DOUBLE,LONGTEXT
# 个人信息
class yonghu(Base_model):
    __doc__ = u'''yonghu'''
    __tablename__ = 'yonghu'

    __loginUser__='zhanghao'


    __authTables__={}
    __authPeople__='是'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    zhanghao=db.Column( db.VARCHAR(255), nullable=False,unique=True,comment='账号' )
    mima=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='密码' )
    xingbie=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='性别' )
    xingming=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='姓名' )
    nianling=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='年龄' )
    shoujihaoma=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='手机号码' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    money = db.Column(db.VARCHAR(255), nullable=True, unique=False, comment='余额')

class yisheng(Base_model):
    __doc__ = u'''yisheng'''
    __tablename__ = 'yisheng'

    __loginUser__='yishenggonghao'


    __authTables__={}
    __authPeople__='是'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yishenggonghao=db.Column( db.VARCHAR(255), nullable=False,unique=True,comment='医生工号' )
    mima=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='密码' )
    yishengxingming=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='医生姓名' )
    yishengxingbie=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生性别' )
    lianxishouji=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='联系手机' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )

class keshixinxi(Base_model):
    __doc__ = u'''keshixinxi'''
    __tablename__ = 'keshixinxi'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    keshimingcheng=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='科室名称' )
    keshidizhi=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='科室地址' )

class zhengzhuangleixing(Base_model):
    __doc__ = u'''zhengzhuangleixing'''
    __tablename__ = 'zhengzhuangleixing'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='否'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    zhengzhuangleixing=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='症状类型' )
    image=db.Column( db.Text,  nullable=True, unique=False,comment='image' )

class jibingxinxi(Base_model):
    __doc__ = u'''jibingxinxi'''
    __tablename__ = 'jibingxinxi'



    __authTables__={}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='是'
    __browseClick__='是'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    jibingmingcheng=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='疾病名称' )
    zhengzhuangleixing=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='症状类型' )
    jibingfengmian=db.Column( db.Text,  nullable=True, unique=False,comment='疾病封面' )
    mubiaorenqun=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='目标人群' )
    zhengzhuangmiaoshu=db.Column( db.Text,  nullable=True, unique=False,comment='症状描述' )
    zhiliaofangshi=db.Column( db.Text,  nullable=True, unique=False,comment='治疗方式' )
    faburiqi=db.Column( db.Date,  nullable=True, unique=False,comment='发布日期' )
    clicktime=db.Column( db.DateTime,  nullable=True, unique=False,comment='最近点击时间' )
    clicknum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='点击次数' )
    storeupnum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='收藏数' )

class jiuzhenxinxi(Base_model):
    __doc__ = u'''jiuzhenxinxi'''
    __tablename__ = 'jiuzhenxinxi'



    __authTables__={'yishenggonghao':'yisheng',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='是'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    yishengxingbie=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生性别' )
    lianxishouji=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='联系手机' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    zhiwei=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='职位' )
    yuhao=db.Column( db.Integer,default=0, nullable=False, unique=False,comment='余号' )
    keshimingcheng=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='科室名称' )
    shanzhangleixing=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='擅长类型' )
    jiuzhenshijian=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='就诊时间' )
    yishengjianjie=db.Column( db.Text,  nullable=True, unique=False,comment='医生简介' )
    rongyuxinxi=db.Column( db.Text,  nullable=True, unique=False,comment='荣誉信息' )
    clicktime=db.Column( db.DateTime,  nullable=True, unique=False,comment='最近点击时间' )
    storeupnum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='收藏数' )

class yuyueguahao(Base_model):
    __doc__ = u'''yuyueguahao'''
    __tablename__ = 'yuyueguahao'



    __authTables__={'yishenggonghao':'yisheng','zhanghao':'yonghu',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yuyuebianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='预约编号' )
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    zhiwei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='职位' )
    yuhao=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='挂号数' )
    keshimingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='科室名称' )
    jiuzhenshijian=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='就诊时间' )
    yuyueshijian=db.Column( db.DateTime,  nullable=True, unique=False,comment='预约时间' )
    beizhu=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='备注' )
    zhanghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='账号' )
    xingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='姓名' )
    nianling=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='年龄' )
    xingbie=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='性别' )
    shoujihaoma=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='手机号码' )
    sfsh=db.Column( db.VARCHAR(255),default='待审核', nullable=True, unique=False,comment='是否审核' )
    shhf=db.Column( db.Text,  nullable=True, unique=False,comment='审核回复' )
    zf=db.Column( db.VARCHAR(10),default='未支付', nullable=True, unique=False,comment='支付状态' )

class zhenduanbingli(Base_model):
    __doc__ = u'''zhenduanbingli'''
    __tablename__ = 'zhenduanbingli'



    __authTables__={'yishenggonghao':'yisheng','zhanghao':'yonghu',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    zhiwei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='职位' )
    keshimingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='科室名称' )
    jiuzhenshijian=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='就诊时间' )
    zhenduanshijian=db.Column( db.DateTime,  nullable=True, unique=False,comment='诊断时间' )
    shousuoya=db.Column( db.Float,default=0, nullable=False, unique=False,comment='收缩压mmHg' )
    shuzhangya=db.Column( db.Float,default=0, nullable=False, unique=False,comment='舒张压mmHg' )
    tiwen=db.Column( db.Float,default=0, nullable=False, unique=False,comment='体温/°' )
    binglitupian=db.Column( db.Text,  nullable=True, unique=False,comment='病历图片' )
    bingqingdengji=db.Column( db.Text,  nullable=True, unique=False,comment='病情登记' )
    zhenduanbaogao=db.Column( db.Text,  nullable=True, unique=False,comment='诊断报告' )
    zhenduanjieguo=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='诊断结果' )
    zhanghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='账号' )
    xingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='姓名' )
    nianling=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='年龄' )
    shoujihaoma=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='手机号码' )

class pingjiaxinxi(Base_model):
    __doc__ = u'''pingjiaxinxi'''
    __tablename__ = 'pingjiaxinxi'



    __authTables__={'yishenggonghao':'yisheng','zhanghao':'yonghu',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    pingjiabianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='评价编号' )
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    pingjiashijian=db.Column( db.DateTime,  nullable=True, unique=False,comment='评价时间' )
    zhanghao=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='账号' )
    xingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='姓名' )
    pingjianeirong=db.Column( db.Text, nullable=False, unique=False,comment='评价内容' )

class yuyuequxiao(Base_model):
    __doc__ = u'''yuyuequxiao'''
    __tablename__ = 'yuyuequxiao'



    __authTables__={'yishenggonghao':'yisheng','zhanghao':'yonghu',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    yuyuebianhao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='预约编号' )
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    zhiwei=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='职位' )
    keshimingcheng=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='科室名称' )
    jiuzhenshijian=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='就诊时间' )
    yuyueshijian=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='预约时间' )
    beizhu=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='备注' )
    zhanghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='账号' )
    xingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='姓名' )
    shoujihaoma=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='手机号码' )
    quxiaoshijian=db.Column( db.DateTime,  nullable=True, unique=False,comment='取消时间' )
    quxiaoyuanyin=db.Column( db.Text,  nullable=True, unique=False,comment='取消原因' )
    crossuserid=db.Column( db.BigInteger,default=0,  nullable=True, unique=False,comment='跨表用户id' )
    crossrefid=db.Column( db.BigInteger,default=0,  nullable=True, unique=False,comment='跨表主键id' )
    sfsh=db.Column( db.VARCHAR(255),default='待审核', nullable=True, unique=False,comment='是否审核' )
    shhf=db.Column( db.Text,  nullable=True, unique=False,comment='审核回复' )

class zaixianzixun(Base_model):
    __doc__ = u'''zaixianzixun'''
    __tablename__ = 'zaixianzixun'



    __authTables__={'yishenggonghao':'yisheng','zhanghao':'yonghu',}
    __authPeople__='否'
    __authSeparate__='否'
    __thumbsUp__='否'
    __intelRecom__='否'
    __browseClick__='否'
    __foreEndListAuth__='否'
    __foreEndList__='是'
    __isAdmin__='否'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    zixunbianhao=db.Column( db.VARCHAR(255),  nullable=True,unique=True,comment='咨询编号' )
    yishenggonghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生工号' )
    yishengxingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='医生姓名' )
    touxiang=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    zixunneirong=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='咨询内容' )
    zhanghao=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='账号' )
    xingming=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='姓名' )
    zixunriqi=db.Column( db.Date,  nullable=True, unique=False,comment='咨询日期' )
    shhf=db.Column( db.Text,  nullable=True, unique=False,comment='回复内容' )

class chat(Base_model):
    __doc__ = u'''chat'''
    __tablename__ = 'chat'



    __authTables__={}
    __foreEndListAuth__='是'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    userid=db.Column( db.BigInteger,default=0, nullable=False, unique=False,comment='用户id' )
    adminid=db.Column( db.BigInteger,default=0,  nullable=True, unique=False,comment='管理员id' )
    ask=db.Column( db.Text,  nullable=True, unique=False,comment='提问' )
    reply=db.Column( db.Text,  nullable=True, unique=False,comment='回复' )
    isreply=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='是否回复' )

class chathelper(Base_model):
    __doc__ = u'''chathelper'''
    __tablename__ = 'chathelper'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    ask=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='提问' )
    reply=db.Column( db.Text,  nullable=True, unique=False,comment='回复' )

class address(Base_model):
    __doc__ = u'''address'''
    __tablename__ = 'address'



    __authTables__={}
    __authSeparate__='是'
    __foreEndListAuth__='是'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    userid=db.Column( db.BigInteger,default=0, nullable=False, unique=False,comment='用户id' )
    address=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='地址' )
    name=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='收货人' )
    phone=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='电话' )
    isdefault=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='是否默认地址[是/否]' )

class newstype(Base_model):
    __doc__ = u'''newstype'''
    __tablename__ = 'newstype'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    typename=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='分类名称' )

class news(Base_model):
    __doc__ = u'''news'''
    __tablename__ = 'news'



    __authTables__={}
    __thumbsUp__='是'
    __intelRecom__='是'
    __browseClick__='是'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    title=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='标题' )
    introduction=db.Column( db.Text,  nullable=True, unique=False,comment='简介' )
    typename=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='分类名称' )
    name=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='发布人' )
    headportrait=db.Column( db.Text,  nullable=True, unique=False,comment='头像' )
    clicknum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='点击次数' )
    clicktime=db.Column( db.DateTime,  nullable=True, unique=False,comment='最近点击时间' )
    thumbsupnum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='赞' )
    crazilynum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='踩' )
    storeupnum=db.Column( db.Integer,default=0,  nullable=True, unique=False,comment='收藏数' )
    picture=db.Column( db.Text, nullable=False, unique=False,comment='图片' )
    content=db.Column( db.Text, nullable=False, unique=False,comment='内容' )

class storeup(Base_model):
    __doc__ = u'''storeup'''
    __tablename__ = 'storeup'



    __authTables__={}
    __authSeparate__='是'
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    userid=db.Column( db.BigInteger,default=0, nullable=False, unique=False,comment='用户id' )
    refid=db.Column( db.BigInteger,default=0,  nullable=True, unique=False,comment='商品id' )
    tablename=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='表名' )
    name=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='名称' )
    picture=db.Column( db.Text,  nullable=True, unique=False,comment='图片' )
    type=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='类型' )
    inteltype=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='推荐类型' )
    remark=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='备注' )

class aboutus(Base_model):
    __doc__ = u'''aboutus'''
    __tablename__ = 'aboutus'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    title=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='标题' )
    subtitle=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='副标题' )
    content=db.Column( db.Text, nullable=False, unique=False,comment='内容' )
    picture1=db.Column( db.Text,  nullable=True, unique=False,comment='图片1' )
    picture2=db.Column( db.Text,  nullable=True, unique=False,comment='图片2' )
    picture3=db.Column( db.Text,  nullable=True, unique=False,comment='图片3' )

class systemintro(Base_model):
    __doc__ = u'''systemintro'''
    __tablename__ = 'systemintro'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    title=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='标题' )
    subtitle=db.Column( db.VARCHAR(255),  nullable=True, unique=False,comment='副标题' )
    content=db.Column( db.Text, nullable=False, unique=False,comment='内容' )
    picture1=db.Column( db.Text,  nullable=True, unique=False,comment='图片1' )
    picture2=db.Column( db.Text,  nullable=True, unique=False,comment='图片2' )
    picture3=db.Column( db.Text,  nullable=True, unique=False,comment='图片3' )

class systemnotice(Base_model):
    __doc__ = u'''systemnotice'''
    __tablename__ = 'systemnotice'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    content=db.Column( db.Text, nullable=False, unique=False,comment='内容' )

class friendlink(Base_model):
    __doc__ = u'''friendlink'''
    __tablename__ = 'friendlink'



    __authTables__={}
    id = db.Column(db.BigInteger, primary_key=True,autoincrement=False,comment='主键')
    addtime = db.Column(TIMESTAMP, server_default=text('CURRENT_TIMESTAMP'), server_onupdate=text('CURRENT_TIMESTAMP'))
    name=db.Column( db.VARCHAR(255), nullable=False, unique=False,comment='名称' )
    picture=db.Column( db.Text,  nullable=True, unique=False,comment='图片' )
    url=db.Column( db.Text,  nullable=True, unique=False,comment='链接' )

