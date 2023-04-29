import re


def get_city_url():
    str_element = """
      <ul class="noArea">
        <li class="zm">A</li>
        <li><a href="http://am.ssjzw.com/">澳门</a></li>
        <li><a href="http://as.ssjzw.com/">鞍山</a></li>
        <li><a href="http://aba.ssjzw.com/">阿坝</a></li>
        <li><a href="http://aq.ssjzw.com/">安庆</a></li>
        <li><a href="http://ay.ssjzw.com/">安阳</a></li>
        <li><a href="http://ans.ssjzw.com/">安顺</a></li>
        <li><a href="http://ali.ssjzw.com/">阿里</a></li>
        <li><a href="http://ankang.ssjzw.com/">安康</a></li>
        <li><a href="http://als.ssjzw.com/">阿拉善</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">B</li>
        <li class="ys"><a href="http://bj.ssjzw.com/">北京</a></li>
        <li><a href="http://bx.ssjzw.com/">本溪</a></li>
        <li><a href="http://bd.ssjzw.com/">保定</a></li>
        <li><a href="http://bt.ssjzw.com/">包头</a></li>
        <li><a href="http://baoji.ssjzw.com/">宝鸡</a></li>
        <li><a href="http://bh.ssjzw.com/">北海</a></li>
        <li><a href="http://bz.ssjzw.com/">滨州</a></li>
        <li><a href="http://bengbu.ssjzw.com/">蚌埠</a></li>
        <li><a href="http://bozhou.ssjzw.com/">亳州</a></li>
        <li><a href="http://bs.ssjzw.com/">百色</a></li>
        <li><a href="http://baiyin.ssjzw.com/">白银</a></li>
        <li><a href="http://bazhong.ssjzw.com/">巴中</a></li>
        <li><a href="http://bijie.ssjzw.com/">毕节</a></li>
        <li><a href="http://baoshan.ssjzw.com/">保山</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">C</li>
        <li class="ys"><a href="http://cd.ssjzw.com/">成都</a></li>
        <li class="ys"><a href="http://cq.ssjzw.com/">重庆</a></li>
        <li class="ys"><a href="http://cs.ssjzw.com/">长沙</a></li>
        <li class="ys"><a href="http://cc.ssjzw.com/">长春</a></li>
        <li><a href="http://cy.ssjzw.com/">朝阳</a></li>
        <li><a href="http://chengde.ssjzw.com/">承德</a></li>
        <li><a href="http://cangzhou.ssjzw.com/">沧州</a></li>
        <li><a href="http://cz.ssjzw.com/">长治</a></li>
        <li><a href="http://cf.ssjzw.com/">赤峰</a></li>
        <li><a href="http://chuzhou.ssjzw.com/">滁州</a></li>
        <li><a href="http://chizhou.ssjzw.com/">池州</a></li>
        <li><a href="http://chenzhou.ssjzw.com/">郴州</a></li>
        <li><a href="http://changde.ssjzw.com/">常德</a></li>
        <li><a href="http://ch.ssjzw.com/">巢湖</a></li>
        <li><a href="http://changzhou.ssjzw.com/">常州</a></li>
        <li><a href="http://chaozhou.ssjzw.com/">潮州</a></li>
        <li><a href="http://chongzuo.ssjzw.com/">崇左</a></li>
        <li><a href="http://cx.ssjzw.com/">楚雄</a></li>
        <li><a href="http://changdu.ssjzw.com/">昌都</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">D</li>
        <li class="ys"><a href="http://dl.ssjzw.com/">大连</a></li>
        <li class="ys"><a href="http://dg.ssjzw.com/">东莞</a></li>
        <li><a href="http://dq.ssjzw.com/">大庆</a></li>
        <li><a href="http://dandong.ssjzw.com/">丹东</a></li>
        <li><a href="http://dt.ssjzw.com/">大同</a></li>
        <li><a href="http://dz.ssjzw.com/">德州</a></li>
        <li><a href="http://dy.ssjzw.com/">东营</a></li>
        <li><a href="http://deyang.ssjzw.com/">德阳</a></li>
        <li><a href="http://dali.ssjzw.com/">大理</a></li>
        <li><a href="http://diqing.ssjzw.com/">迪庆</a></li>
        <li><a href="http://dx.ssjzw.com/">定西</a></li>
        <li><a href="http://dehong.ssjzw.com/">德宏</a></li>
        <li><a href="http://dxal.ssjzw.com/">大兴安岭</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">E</li>
        <li><a href="http://ez.ssjzw.com/">鄂州</a></li>
        <li><a href="http://es.ssjzw.com/">恩施</a></li>
        <li><a href="http://erds.ssjzw.com/">鄂尔多斯</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">F</li>
        <li class="ys"><a href="http://fs.ssjzw.com/">佛山</a></li>
        <li class="ys"><a href="http://fz.ssjzw.com/">福州</a></li>
        <li><a href="http://fushun.ssjzw.com/">抚顺</a></li>
        <li><a href="http://fy.ssjzw.com/">阜阳</a></li>
        <li><a href="http://fuzhou.ssjzw.com/">抚州</a></li>
        <li><a href="http://fuxin.ssjzw.com/">阜新</a></li>
        <li><a href="http://fcg.ssjzw.com/">防城港</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">G</li>
        <li class="ys"><a href="http://gz.ssjzw.com/">广州</a></li>
        <li class="ys"><a href="http://gy.ssjzw.com/">贵阳</a></li>
        <li class="ys"><a href="http://gl.ssjzw.com/">桂林</a></li>
        <li><a href="http://ganzhou.ssjzw.com/">赣州</a></li>
        <li><a href="http://gg.ssjzw.com/">贵港</a></li>
        <li><a href="http://guangyuan.ssjzw.com/">广元</a></li>
        <li><a href="http://kd.ssjzw.com/">甘孜</a></li>
        <li><a href="http://guoluo.ssjzw.com/">果洛</a></li>
        <li><a href="http://ga.ssjzw.com/">广安</a></li>
        <li><a href="http://gn.ssjzw.com/">甘南</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">H</li>
        <li class="ys"><a href="http://hz.ssjzw.com/">杭州</a></li>
        <li class="ys"><a href="http://hrb.ssjzw.com/">哈尔滨</a></li>
        <li class="ys"><a href="http://hf.ssjzw.com/">合肥</a></li>
        <li><a href="http://hd.ssjzw.com/">邯郸</a></li>
        <li><a href="http://hld.ssjzw.com/">葫芦岛</a></li>
        <li><a href="http://hengshui.ssjzw.com/">衡水</a></li>
        <li><a href="http://hu.ssjzw.com/">呼和浩特</a></li>
        <li><a href="http://ha.ssjzw.com/">淮安</a></li>
        <li><a href="http://huzhou.ssjzw.com/">湖州</a></li>
        <li><a href="http://huainan.ssjzw.com/">淮南</a></li>
        <li><a href="http://hs.ssjzw.com/">黄山</a></li>
        <li><a href="http://huangshi.ssjzw.com/">黄石</a></li>
        <li><a href="http://hg.ssjzw.com/">黄冈</a></li>
        <li><a href="http://huaihua.ssjzw.com/">怀化</a></li>
        <li><a href="http://hn.ssjzw.com/">海南</a></li>
        <li><a href="http://hengyang.ssjzw.com/">衡阳</a></li>
        <li><a href="http://huizhou.ssjzw.com/">惠州</a></li>
        <li><a href="http://haikou.ssjzw.com/">海口</a></li>
        <li><a href="http://huaibei.ssjzw.com/">淮北</a></li>
        <li><a href="http://hy.ssjzw.com/">河源</a></li>
        <li><a href="http://hegang.ssjzw.com/">鹤岗</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">&nbsp;</li>
    <li><a href="http://hh.ssjzw.com/">黑河</a></li>
    <li><a href="http://heze.ssjzw.com/">菏泽</a></li>
        <li><a href="http://hb.ssjzw.com/">鹤壁</a></li>
        <li><a href="http://hezhou.ssjzw.com/">贺州</a></li>
        <li><a href="http://hechi.ssjzw.com/">河池</a></li>
        <li><a href="http://hanzhong.ssjzw.com/">汉中</a></li>
        <li><a href="http://honghe.ssjzw.com/">红河</a></li>
        <li><a href="http://hlbr.ssjzw.com/">呼伦贝尔</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">J</li>
        <li class="ys"><a href="http://jn.ssjzw.com/">济南</a></li>
        <li><a href="http://jl.ssjzw.com/">吉林</a></li>
        <li><a href="http://jincheng.ssjzw.com/">晋城</a></li>
        <li><a href="http://jinzhong.ssjzw.com/">晋中</a></li>
        <li><a href="http://jx.ssjzw.com/">嘉兴</a></li>
        <li><a href="http://jm.ssjzw.com/">荆门</a></li>
        <li><a href="http://jz.ssjzw.com/">荆州</a></li>
        <li><a href="http://jj.ssjzw.com/">九江</a></li>
        <li><a href="http://jiangmen.ssjzw.com/">江门</a></li>
        <li><a href="http://jh.ssjzw.com/">金华</a></li>
        <li><a href="http://jining.ssjzw.com/">济宁</a></li>
        <li><a href="http://ja.ssjzw.com/">吉安</a></li>
        <li><a href="http://jinzhou.ssjzw.com/">锦州</a></li>
        <li><a href="http://jiaozuo.ssjzw.com/">焦作</a></li>
        <li><a href="http://jy.ssjzw.com/">揭阳</a></li>
        <li><a href="http://jq.ssjzw.com/">酒泉</a></li>
        <li><a href="http://jingchang.ssjzw.com/">金昌</a></li>
        <li><a href="http://jms.ssjzw.com/">佳木斯</a></li>
        <li><a href="http://jdz.ssjzw.com/">景德镇</a></li>
        <li><a href="http://jyg.ssjzw.com/">嘉峪关</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">K</li>
        <li class="ys"><a href="http://km.ssjzw.com/">昆明</a></li>
        <li><a href="http://kf.ssjzw.com/">开封</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">L</li>
        <li class="ys"><a href="http://lz.ssjzw.com/">兰州</a></li>
        <li><a href="http://ly.ssjzw.com/">洛阳</a></li>
        <li><a href="http://liaoyuan.ssjzw.com/">辽源</a></li>
        <li><a href="http://liaoyang.ssjzw.com/">辽阳</a></li>
        <li><a href="http://lyg.ssjzw.com/">连云港</a></li>
        <li><a href="http://lj.ssjzw.com/">丽江</a></li>
        <li><a href="http://langfang.ssjzw.com/">廊坊</a></li>
        <li><a href="http://lw.ssjzw.com/">莱芜</a></li>
        <li><a href="http://linyi.ssjzw.com/">临沂</a></li>
        <li><a href="http://lc.ssjzw.com/">聊城</a></li>
        <li><a href="http://ls.ssjzw.com/">丽水</a></li>
        <li><a href="http://la.ssjzw.com/">六安</a></li>
        <li><a href="http://ld.ssjzw.com/">娄底</a></li>
        <li><a href="http://lh.ssjzw.com/">漯河</a></li>
        <li><a href="http://lasa.ssjzw.com/">拉萨</a></li>
        <li><a href="http://liuzhou.ssjzw.com/">柳州</a></li>
        <li><a href="http://leshan.ssjzw.com/">乐山</a></li>
        <li><a href="http://liangshan.ssjzw.com/">凉山</a></li>
        <li><a href="http://linfen.ssjzw.com/">临汾</a></li>
        <li><a href="http://ll.ssjzw.com/">吕梁</a></li>
        <li><a href="http://longyan.ssjzw.com/">龙岩</a></li>
        <li><a href="http://laibin.ssjzw.com/">来宾</a></li>
        <li><a href="http://ln.ssjzw.com/">陇南</a></li>
       </ul>
        <ul class="noArea">
        <li class="zm">&nbsp;</li>
    <li><a href="http://lx.ssjzw.com/">临夏</a></li>
        <li><a href="http://lincang.ssjzw.com/">临沧</a></li>
    <li><a href="http://linzhi.ssjzw.com/">林芝</a></li>
        <li><a href="http://luzhou.ssjzw.com/">泸州</a></li>
        <li><a href="http://lps.ssjzw.com/">六盘水</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">M</li>
        <li><a href="http://mdj.ssjzw.com/">牡丹江</a></li>
        <li><a href="http://mas.ssjzw.com/">马鞍山</a></li>
    
        <li><a href="http://mz.ssjzw.com/">梅州</a></li>
        <li><a href="http://ms.ssjzw.com/">眉山</a></li>
        <li><a href="http://mm.ssjzw.com/">茂名</a></li>
        <li><a href="http://mianyang.ssjzw.com/">绵阳</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">N</li>
        <li class="ys"><a href="http://nj.ssjzw.com/">南京</a></li>
        <li class="ys"><a href="http://nc.ssjzw.com/">南昌</a></li>
        <li class="ys"><a href="http://nb.ssjzw.com/">宁波</a></li>
        <li class="ys"><a href="http://nn.ssjzw.com/">南宁</a></li>
        <li><a href="http://nt.ssjzw.com/">南通</a></li>
        <li><a href="http://nd.ssjzw.com/">宁德</a></li>
        <li><a href="http://np.ssjzw.com/">南平</a></li>
        <li><a href="http://ny.ssjzw.com/">南阳</a></li>
        <li><a href="http://neijiang.ssjzw.com/">内江</a></li>
        <li><a href="http://nanchong.ssjzw.com/">南充</a></li>
        <li><a href="http://nujiang.ssjzw.com/">怒江</a></li>
        <li><a href="http://naqu.ssjzw.com/">那曲</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">P</li>
        <li><a href="http://pj.ssjzw.com/">盘锦</a></li>
        <li><a href="http://py.ssjzw.com/">濮阳</a></li>
        <li><a href="http://pt.ssjzw.com/">莆田</a></li>
        <li><a href="http://px.ssjzw.com/">萍乡</a></li>
        <li><a href="http://pl.ssjzw.com/">平凉</a></li>
        <li><a href="http://pe.ssjzw.com/">普洱</a></li>
        <li><a href="http://pds.ssjzw.com/">平顶山</a></li>
        <li><a href="http://pzh.ssjzw.com/">攀枝花</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">Q</li>
        <li class="ys"><a href="http://qd.ssjzw.com/">青岛</a></li>
        <li><a href="http://qqhr.ssjzw.com/">齐齐哈尔</a></li>
        <li><a href="http://qz.ssjzw.com/">泉州</a></li>
        <li><a href="http://qhd.ssjzw.com/">秦皇岛</a></li>
        <li><a href="http://quzhou.ssjzw.com/">衢州</a></li>
        <li><a href="http://qy.ssjzw.com/">清远</a></li>
        <li><a href="http://qj.ssjzw.com/">曲靖</a></li>
        <li><a href="http://qinzhou.ssjzw.com/">钦州</a></li>
        <li><a href="http://qingyang.ssjzw.com/">庆阳</a></li>
        <li><a href="http://qianjiang.ssjzw.com/">潜江</a></li>
        <li><a href="http://qxn.ssjzw.com/">黔西南</a></li>
        <li><a href="http://qianan.ssjzw.com/">黔南</a></li>
        <li><a href="http://qdn.ssjzw.com/">黔东南</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">R</li>
        <li><a href="http://rizhao.ssjzw.com/">日照</a></li>
        <li><a href="http://rikaze.ssjzw.com/">日喀则</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">S</li>
        <li class="ys"><a href="http://sh.ssjzw.com/">上海</a></li>
        <li class="ys"><a href="http://sz.ssjzw.com/">深圳</a></li>
        <li class="ys"><a href="http://su.ssjzw.com/">苏州</a></li>
        <li class="ys"><a href="http://sy.ssjzw.com/">沈阳</a></li>
        <li class="ys"><a href="http://sjz.ssjzw.com/">石家庄</a></li>
        <li><a href="http://sp.ssjzw.com/">四平</a></li>
        <li><a href="http://suihua.ssjzw.com/">绥化</a></li>
        <li><a href="http://st.ssjzw.com/">汕头</a></li>
        <li><a href="http://shiyan.ssjzw.com/">十堰</a></li>
        <li><a href="http://suizhou.ssjzw.com/">随州</a></li>
        <li><a href="http://sanya.ssjzw.com/">三亚</a></li>
        <li><a href="http://suqian.ssjzw.com/">宿迁</a></li>
        <li><a href="http://sx.ssjzw.com/">绍兴</a></li>
        <li><a href="http://suzhou.ssjzw.com/">宿州</a></li>
        <li><a href="http://sm.ssjzw.com/">三明</a></li>
        <li><a href="http://shaoyang.ssjzw.com/">邵阳</a></li>
        <li><a href="http://sr.ssjzw.com/">上饶</a></li>
        <li><a href="http://sq.ssjzw.com/">商丘</a></li>
        <li><a href="http://sg.ssjzw.com/">韶关</a></li>
        <li><a href="http://shuozhou.ssjzw.com/">朔州</a></li>
        <li><a href="http://sw.ssjzw.com/">汕尾</a></li>
        <li><a href="http://sn.ssjzw.com/">遂宁</a></li>
    <li><a href="http://shannan.ssjzw.com/">山南</a></li>
        <li><a href="http://sl.ssjzw.com/">商洛</a></li>
        <li><a href="http://smx.ssjzw.com/">三门峡</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">T</li>
        <li class="ys"><a href="http://tj.ssjzw.com/">天津</a></li>
        <li class="ys"><a href="http://ty.ssjzw.com/">太原</a></li>
        <li><a href="http://tw.ssjzw.com/">台湾</a></li>
        <li><a href="http://tieling.ssjzw.com/">铁岭</a></li>
        <li><a href="http://th.ssjzw.com/">通化</a></li>
        <li><a href="http://ts.ssjzw.com/">唐山</a></li>
        <li><a href="http://ta.ssjzw.com/">泰安</a></li>
        <li><a href="http://tongliao.ssjzw.com/">通辽</a></li>
        <li><a href="http://taizhou.ssjzw.com/">泰州</a></li>
        <li><a href="http://tz.ssjzw.com/">台州</a></li>
        <li><a href="http://tl.ssjzw.com/">铜陵</a></li>
        <li><a href="http://tc.ssjzw.com/">铜川</a></li>
        <li><a href="http://tianshui.ssjzw.com/">天水</a></li>
        <li><a href="http://tongren.ssjzw.com/">铜仁</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">W</li>
        <li class="ys"><a href="http://wh.ssjzw.com/">武汉</a></li>
        <li class="ys"><a href="http://wz.ssjzw.com/">温州</a></li>
        <li class="ys"><a href="http://wx.ssjzw.com/">无锡</a></li>
        <li><a href="http://wlmq.ssjzw.com/">乌鲁木齐</a></li>
        <li><a href="http://weihai.ssjzw.com/">威海</a></li>
        <li><a href="http://wf.ssjzw.com/">潍坊</a></li>
        <li><a href="http://wuhu.ssjzw.com/">芜湖</a></li>
        <li><a href="http://wuhai.ssjzw.com/">乌海</a></li>
        <li><a href="http://wuzhou.ssjzw.com/">梧州</a></li>
        <li><a href="http://wuwei.ssjzw.com/">武威</a></li>
        <li><a href="http://wenshan.ssjzw.com/">文山</a></li>
        <li><a href="http://weinan.ssjzw.com/">渭南</a></li>
        <li><a href="http://wlcb.ssjzw.com/">乌兰察布</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">X</li>
        <li class="ys"><a href="http://xa.ssjzw.com/">西安</a></li>
        <li class="ys"><a href="http://xm.ssjzw.com/">厦门</a></li>
        <li><a href="http://hk.ssjzw.com/">香港</a></li>
        <li><a href="http://xuchang.ssjzw.com/">许昌</a></li>
        <li><a href="http://xianyang.ssjzw.com/">咸阳</a></li>
        <li><a href="http://xz.ssjzw.com/">徐州</a></li>
        <li><a href="http://xx.ssjzw.com/">新乡</a></li>
        <li><a href="http://xt.ssjzw.com/">邢台</a></li>
        <li><a href="http://xinzhou.ssjzw.com/">忻州</a></li>
        <li><a href="http://xingan.ssjzw.com/">兴安</a></li>
        <li><a href="http://xuancheng.ssjzw.com/">宣城</a></li>
        <li><a href="http://xf.ssjzw.com/">襄阳</a></li>
        <li><a href="http://xiaogan.ssjzw.com/">孝感</a></li>
        <li><a href="http://xianning.ssjzw.com/">咸宁</a></li>
        <li><a href="http://xiangtan.ssjzw.com/">湘潭</a></li>
        <li><a href="http://xiangxi.ssjzw.com/">湘西</a></li>
        <li><a href="http://xinyu.ssjzw.com/">新余</a></li>
        <li><a href="http://xy.ssjzw.com/">信阳</a></li>
        <li><a href="http://xn.ssjzw.com/">西宁</a></li>
        <li><a href="http://xlgl.ssjzw.com/">锡林郭勒</a></li>
        <li><a href="http://xsbn.ssjzw.com/">西双版纳</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">Y</li>
        <li><a href="http://yk.ssjzw.com/">营口</a></li>
        <li class="ys"><a href="http://yz.ssjzw.com/">扬州</a></li>
        <li><a href="http://yanbian.ssjzw.com/">延边</a></li>
        <li><a href="http://yq.ssjzw.com/">阳泉</a></li>
        <li><a href="http://yuncheng.ssjzw.com/">运城</a></li>
        <li><a href="http://yt.ssjzw.com/">烟台</a></li>
    
        <li><a href="http://yancheng.ssjzw.com/">盐城</a></li>
        <li><a href="http://yc.ssjzw.com/">银川</a></li>
        <li><a href="http://yichang.ssjzw.com/">宜昌</a></li>
        <li><a href="http://yy.ssjzw.com/">岳阳</a></li>
        <li><a href="http://yiyang.ssjzw.com/">益阳</a></li>
        <li><a href="http://yichun.ssjzw.com/">宜春</a></li>
        <li><a href="http://yongzhou.ssjzw.com/">永州</a></li>
        <li><a href="http://yj.ssjzw.com/">阳江</a></li>
        <li><a href="http://yf.ssjzw.com/">云浮</a></li>
        <li><a href="http://yulin.ssjzw.com/">玉林</a></li>
        <li><a href="http://yaan.ssjzw.com/">雅安</a></li>
        <li><a href="http://yx.ssjzw.com/">玉溪</a></li>
        <li><a href="http://yibin.ssjzw.com/">宜宾</a></li>
        <li><a href="http://yushu.ssjzw.com/">玉树</a></li>
        <li><a href="http://yanan.ssjzw.com/">延安</a></li>
        <li><a href="http://yl.ssjzw.com/">榆林</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">Z</li>
        <li class="ys"><a href="http://zz.ssjzw.com/">郑州</a></li>
        <li class="ys"><a href="http://zh.ssjzw.com/">珠海</a></li>
        <li><a href="http://zb.ssjzw.com/">淄博</a></li>
        <li><a href="http://zjk.ssjzw.com/">张家口</a></li>
        <li><a href="http://zaozhuang.ssjzw.com/">枣庄</a></li>
        <li><a href="http://zhenjiang.ssjzw.com/">镇江</a></li>
        <li><a href="http://zhoushan.ssjzw.com/">舟山</a></li>
        <li><a href="http://zhangzhou.ssjzw.com/">漳州</a></li>
        <li><a href="http://zs.ssjzw.com/">中山</a></li>
        <li><a href="http://zjj.ssjzw.com/">张家界</a></li>
        <li><a href="http://zk.ssjzw.com/">周口</a></li>
        <li><a href="http://zunyi.ssjzw.com/">遵义</a></li>
        <li><a href="http://zhuzhou.ssjzw.com/">株洲</a></li>
        <li><a href="http://zmd.ssjzw.com/">驻马店</a></li>
        <li><a href="http://zj.ssjzw.com/">湛江</a></li>
        <li><a href="http://zq.ssjzw.com/">肇庆</a></li>
        <li><a href="http://zg.ssjzw.com/">自贡</a></li>
        <li><a href="http://ziyang.ssjzw.com/">资阳</a></li>
        <li><a href="http://zy.ssjzw.com/">张掖</a></li>
        <li><a href="http://zt.ssjzw.com/">昭通</a></li>
    
    """
    url_list = re.findall('href=(.*?)>', str_element)
    city_name = re.findall('ssjzw.com/">(.*?)</', str_element)

    """
      <ul class="noArea">
        <li class="zm">直辖市</li>
	<li class="ys"><a href="http://bj.ssjzw.com/">北京</a></li>
        <li class="ys"><a href="http://sh.ssjzw.com/">上海</a></li>
        <li class="ys"><a href="http://tj.ssjzw.com/">天津</a></li>
        <li class="ys"><a href="http://cq.ssjzw.com/">重庆</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">广东</li>
        <li class="ys"><a href="http://gz.ssjzw.com/">广州</a></li>
        <li class="ys"><a href="http://sz.ssjzw.com/">深圳</a></li>
        <li class="ys"><a href="http://zh.ssjzw.com/">珠海</a></li>
        <li><a href="http://st.ssjzw.com/"  >汕头</a></li>
        <li><a href="http://sg.ssjzw.com/">韶关</a></li>
        <li class="ys"><a href="http://fs.ssjzw.com/"  >佛山</a></li>
        <li><a href="http://jiangmen.ssjzw.com/">江门</a></li>
        <li><a href="http://zj.ssjzw.com/"  >湛江</a></li>
        <li><a href="http://mm.ssjzw.com/">茂名</a></li>
        <li><a href="http://zq.ssjzw.com/"  >肇庆</a></li>
        <li><a href="http://huizhou.ssjzw.com/"  >惠州</a></li>
        <li><a href="http://mz.ssjzw.com/">梅州</a></li>
        <li><a href="http://sw.ssjzw.com/">汕尾</a></li>
        <li><a href="http://hy.ssjzw.com/"  >河源</a></li>
        <li><a href="http://yj.ssjzw.com/"   >阳江</a></li>
        <li><a href="http://qy.ssjzw.com/"  >清远</a></li>
        <li class="ys"><a href="http://dg.ssjzw.com/"  >东莞</a></li>
        <li><a href="http://zs.ssjzw.com/"  >中山</a></li>
        <li><a href="http://chaozhou.ssjzw.com/">潮州</a></li>
        <li><a href="http://jy.ssjzw.com/">揭阳</a></li>
        <li><a href="http://yf.ssjzw.com/"   >云浮</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">福建</li>
        <li class="ys"><a href="http://fz.ssjzw.com/"  >福州</a></li>
        <li class="ys"><a href="http://xm.ssjzw.com/"  >厦门</a></li>
        <li><a href="http://pt.ssjzw.com/"  >莆田</a></li>
        <li><a href="http://sm.ssjzw.com/"  >三明</a></li>
        <li><a href="http://qz.ssjzw.com/"  >泉州</a></li>
        <li><a href="http://zhangzhou.ssjzw.com/"  >漳州</a></li>
        <li><a href="http://np.ssjzw.com/"  >南平</a></li>
        <li><a href="http://longyan.ssjzw.com/"  >龙岩</a></li>
        <li><a href="http://nd.ssjzw.com/"  >宁德</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">浙江</li>
        <li class="ys"><a href="http://hz.ssjzw.com/"  >杭州</a></li>
        <li class="ys"><a href="http://nb.ssjzw.com/"  >宁波</a></li>
        <li class="ys"><a href="http://wz.ssjzw.com/"  >温州</a></li>
        <li><a href="http://jx.ssjzw.com/">嘉兴</a></li>
        <li><a href="http://huzhou.ssjzw.com/"  >湖州</a></li>
        <li><a href="http://sx.ssjzw.com/"  >绍兴</a></li>
        <li><a href="http://jh.ssjzw.com/">金华</a></li>
        <li><a href="http://quzhou.ssjzw.com/"  >衢州</a></li>
        <li><a href="http://zhoushan.ssjzw.com/"  >舟山</a></li>
        <li><a href="http://tz.ssjzw.com/"  >台州</a></li>
        <li><a href="http://ls.ssjzw.com/"  >丽水</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">江苏</li> 
        <li class="ys"><a href="http://nj.ssjzw.com/">南京</a></li>
        <li class="ys"><a href="http://wx.ssjzw.com/">无锡</a></li>
        <li><a href="http://xz.ssjzw.com/">徐州</a></li>
        <li><a href="http://changzhou.ssjzw.com/">常州</a></li>
        <li class="ys"><a href="http://su.ssjzw.com/">苏州</a></li>
        <li><a href="http://nt.ssjzw.com/">南通</a></li>
        <li><a href="http://lyg.ssjzw.com/">连云港</a></li>
        <li><a href="http://ha.ssjzw.com/">淮安</a></li>
        <li><a href="http://yancheng.ssjzw.com/">盐城</a></li>
        <li class="ys"><a href="http://yz.ssjzw.com/">扬州</a></li>
        <li><a href="http://zhenjiang.ssjzw.com/">镇江</a></li>
        <li><a href="http://taizhou.ssjzw.com/">泰州</a></li>
        <li><a href="http://suqian.ssjzw.com/">宿迁</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">山东</li>
        <li class="ys"><a href="http://jn.ssjzw.com/">济南</a></li>
        <li class="ys"><a href="http://qd.ssjzw.com/"  >青岛</a></li>
        <li><a href="http://zb.ssjzw.com/"  >淄博</a></li>
        <li><a href="http://zaozhuang.ssjzw.com/"  >枣庄</a></li>
        <li><a href="http://dy.ssjzw.com/"  >东营</a></li>
        <li><a href="http://yt.ssjzw.com/"   >烟台</a></li>
        <li><a href="http://wf.ssjzw.com/"  >潍坊</a></li>
        <li><a href="http://weihai.ssjzw.com/"  >威海</a></li>
        <li><a href="http://jining.ssjzw.com/">济宁</a></li>
        <li><a href="http://ta.ssjzw.com/"  >泰安</a></li>
        <li><a href="http://rizhao.ssjzw.com/"  >日照</a></li>
        <li><a href="http://lw.ssjzw.com/"  >莱芜</a></li>
        <li><a href="http://linyi.ssjzw.com/"  >临沂</a></li>
        <li><a href="http://dz.ssjzw.com/"  >德州</a></li>
        <li><a href="http://lc.ssjzw.com/"  >聊城</a></li>
        <li><a href="http://bz.ssjzw.com/"  >滨州</a></li>
        <li><a href="http://heze.ssjzw.com/">菏泽</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">河北</li>
        <li class="ys"><a href="http://sjz.ssjzw.com/"  >石家庄</a></li>
        <li><a href="http://ts.ssjzw.com/"  >唐山</a></li>
        <li><a href="http://qhd.ssjzw.com/"  >秦皇岛</a></li>
        <li><a href="http://hd.ssjzw.com/"  >邯郸</a></li>
        <li><a href="http://xt.ssjzw.com/"  >邢台</a></li>
        <li><a href="http://bd.ssjzw.com/"  >保定</a></li>
        <li><a href="http://zjk.ssjzw.com/"  >张家口</a></li>
        <li><a href="http://chengde.ssjzw.com/">承德</a></li>
        <li><a href="http://cangzhou.ssjzw.com/">沧州</a></li>
        <li><a href="http://langfang.ssjzw.com/"  >廊坊</a></li>
        <li><a href="http://hengshui.ssjzw.com/"  >衡水</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">四川</li>
        <li class="ys"><a href="http://cd.ssjzw.com/">成都</a></li>
        <li><a href="http://zg.ssjzw.com/" >自贡</a></li>
        <li><a href="http://pzh.ssjzw.com/"  >攀枝花</a></li>
        <li><a href="http://luzhou.ssjzw.com/">泸州</a></li>
        <li><a href="http://deyang.ssjzw.com/"  >德阳</a></li>
        <li><a href="http://mianyang.ssjzw.com/">绵阳</a></li>
        <li><a href="http://guangyuan.ssjzw.com/"  >广元</a></li>
        <li><a href="http://sn.ssjzw.com/">遂宁</a></li>
        <li><a href="http://neijiang.ssjzw.com/"  >内江</a></li>       
        <li><a href="http://leshan.ssjzw.com/"  >乐山</a></li>
        <li><a href="http://nanchong.ssjzw.com/"  >南充</a></li>
        <li><a href="http://yibin.ssjzw.com/"   >宜宾</a></li>
        <li><a href="http://ga.ssjzw.com/"  >广安</a></li>
        <li><a href="http://ms.ssjzw.com/">眉山</a></li>
        <li><a href="http://yaan.ssjzw.com/"   >雅安</a></li>
        <li><a href="http://bazhong.ssjzw.com/"  >巴中</a></li>
        <li><a href="http://ziyang.ssjzw.com/" >资阳</a></li>
        <li><a href="http://aba.ssjzw.com/">阿坝</a></li>
        <li><a href="http://kd.ssjzw.com/"  >甘孜</a></li>
        <li><a href="http://liangshan.ssjzw.com/"  >凉山</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">辽宁</li>
		<li class="ys"><a href="http://sy.ssjzw.com/"  >沈阳</a></li>
		<li class="ys"><a href="http://dl.ssjzw.com/"  >大连</a></li>
		<li><a href="http://as.ssjzw.com/">鞍山</a></li>
		<li><a href="http://fushun.ssjzw.com/"  >抚顺</a></li>
		<li><a href="http://bx.ssjzw.com/">本溪</a></li>
		<li><a href="http://dandong.ssjzw.com/"  >丹东</a></li>
		<li><a href="http://jinzhou.ssjzw.com/">锦州</a></li>
		<li><a href="http://yk.ssjzw.com/"   >营口</a></li>
		<li><a href="http://fuxin.ssjzw.com/"  >阜新</a></li>
		<li><a href="http://liaoyang.ssjzw.com/"  >辽阳</a></li>
		<li><a href="http://pj.ssjzw.com/"  >盘锦</a></li>
		<li><a href="http://tieling.ssjzw.com/"  >铁岭</a></li>
		<li><a href="http://cy.ssjzw.com/">朝阳</a></li>
		<li><a href="http://hld.ssjzw.com/"  >葫芦岛</a></li>
		
      </ul>
	   <ul class="noArea xian">
        <li class="zm">江西</li>
        <li class="ys"><a href="http://nc.ssjzw.com/"  >南昌</a></li>
        <li><a href="http://jdz.ssjzw.com/">景德镇</a></li>
        <li><a href="http://px.ssjzw.com/"  >萍乡</a></li>
        <li><a href="http://jj.ssjzw.com/">九江</a></li>
        <li><a href="http://xinyu.ssjzw.com/"  >新余</a></li>
        <li><a href="http://ganzhou.ssjzw.com/"  >赣州</a></li>
        <li><a href="http://ja.ssjzw.com/">吉安</a></li>
        <li><a href="http://yichun.ssjzw.com/"   >宜春</a></li>
        <li><a href="http://fuzhou.ssjzw.com/"  >抚州</a></li>
        <li><a href="http://sr.ssjzw.com/">上饶</a></li>
       </ul>
      <ul class="noArea">
        <li class="zm">山西</li>
        <li class="ys"><a href="http://ty.ssjzw.com/"  >太原</a></li>
        <li><a href="http://dt.ssjzw.com/"  >大同</a></li>
        <li><a href="http://yq.ssjzw.com/"   >阳泉</a></li>
        <li><a href="http://cz.ssjzw.com/">长治</a></li>
        <li><a href="http://jincheng.ssjzw.com/">晋城</a></li>
        <li><a href="http://shuozhou.ssjzw.com/"  >朔州</a></li>
        <li><a href="http://jinzhong.ssjzw.com/">晋中</a></li>
        <li><a href="http://yuncheng.ssjzw.com/"   >运城</a></li>
        <li><a href="http://xinzhou.ssjzw.com/"  >忻州</a></li>
        <li><a href="http://linfen.ssjzw.com/"  >临汾</a></li>
        <li><a href="http://ll.ssjzw.com/"  >吕梁</a></li>
      </ul>
	  <ul class="noArea">
        <li class="zm">吉林</li>
        <li class="ys"><a href="http://cc.ssjzw.com/">长春</a></li>
        <li><a href="http://jl.ssjzw.com/">吉林</a></li>
        <li><a href="http://sp.ssjzw.com/"  >四平</a></li>
        <li><a href="http://liaoyuan.ssjzw.com/"  >辽源</a></li>
        <li><a href="http://th.ssjzw.com/"  >通化</a></li>
        <li><a href="http://yanbian.ssjzw.com/"   >延边</a></li>
        </ul>
        <ul class="noArea">
        <li class="zm">黑龙江</li>
		<li class="ys"><a href="http://hrb.ssjzw.com/"  >哈尔滨</a></li>
		<li><a href="http://qqhr.ssjzw.com/"  >齐齐哈尔</a></li>
		<li><a href="http://hegang.ssjzw.com/"  >鹤岗</a></li>
		<li><a href="http://dq.ssjzw.com/">大庆</a></li>
		<li><a href="http://jms.ssjzw.com/">佳木斯</a></li>
		<li><a href="http://mdj.ssjzw.com/">牡丹江</a></li>
		<li><a href="http://hh.ssjzw.com/">黑河</a></li>
		<li><a href="http://suihua.ssjzw.com/"  >绥化</a></li>
		<li><a href="http://dxal.ssjzw.com/"  >大兴安岭</a></li>
		</ul>
	  <ul class="noArea">
        <li class="zm">安徽</li>
        <li class="ys"><a href="http://hf.ssjzw.com/"  >合肥</a></li>
        <li><a href="http://wuhu.ssjzw.com/"  >芜湖</a></li>
        <li><a href="http://bengbu.ssjzw.com/"  >蚌埠</a></li>
        <li><a href="http://huainan.ssjzw.com/"  >淮南</a></li>
        <li><a href="http://mas.ssjzw.com/">马鞍山</a></li>
        <li><a href="http://huaibei.ssjzw.com/"  >淮北</a></li>
        <li><a href="http://tl.ssjzw.com/"  >铜陵</a></li>
        <li><a href="http://aq.ssjzw.com/">安庆</a></li>
        <li><a href="http://hs.ssjzw.com/"  >黄山</a></li>
        <li><a href="http://chuzhou.ssjzw.com/">滁州</a></li>
        <li><a href="http://fy.ssjzw.com/"  >阜阳</a></li>
        <li><a href="http://suzhou.ssjzw.com/"  >宿州</a></li>
        <li><a href="http://ch.ssjzw.com/">巢湖</a></li>
        <li><a href="http://la.ssjzw.com/"  >六安</a></li>
        <li><a href="http://bozhou.ssjzw.com/"  >亳州</a></li>
        <li><a href="http://chizhou.ssjzw.com/">池州</a></li>
        <li><a href="http://xuancheng.ssjzw.com/"  >宣城</a></li>      
      </ul>
      <ul class="noArea xian">
        <li class="zm">河南</li>
        <li class="ys"><a href="http://zz.ssjzw.com/"  >郑州</a></li>
        <li><a href="http://kf.ssjzw.com/">开封</a></li>
        <li><a href="http://ly.ssjzw.com/">洛阳</a></li>
        <li><a href="http://pds.ssjzw.com/"  >平顶山</a></li>
        <li><a href="http://jiaozuo.ssjzw.com/">焦作</a></li>
        <li><a href="http://hb.ssjzw.com/">鹤壁</a></li>
        <li><a href="http://xx.ssjzw.com/"  >新乡</a></li>
        <li><a href="http://ay.ssjzw.com/">安阳</a></li>
        <li><a href="http://py.ssjzw.com/"  >濮阳</a></li>
        <li><a href="http://xuchang.ssjzw.com/"  >许昌</a></li>
        <li><a href="http://lh.ssjzw.com/"  >漯河</a></li>
        <li><a href="http://smx.ssjzw.com/">三门峡</a></li>
        <li><a href="http://ny.ssjzw.com/"  >南阳</a></li>
        <li><a href="http://sq.ssjzw.com/">商丘</a></li>
        <li><a href="http://xy.ssjzw.com/"  >信阳</a></li>
        <li><a href="http://zk.ssjzw.com/"  >周口</a></li>
        <li><a href="http://zmd.ssjzw.com/"  >驻马店</a></li>
      </ul>
	  <ul class="noArea">
        <li class="zm">湖北</li>
		<li class="ys"><a href="http://wh.ssjzw.com/"  >武汉</a></li>
		<li><a href="http://huangshi.ssjzw.com/"  >黄石</a></li>
		<li><a href="http://xf.ssjzw.com/">襄阳</a></li>
		<li><a href="http://shiyan.ssjzw.com/"  >十堰</a></li>
		<li><a href="http://jz.ssjzw.com/">荆州</a></li>
		<li><a href="http://yichang.ssjzw.com/"   >宜昌</a></li>
		<li><a href="http://jm.ssjzw.com/">荆门</a></li>
		<li><a href="http://ez.ssjzw.com/"  >鄂州</a></li>
        <li><a href="http://xiaogan.ssjzw.com/"  >孝感</a></li>
        <li><a href="http://hg.ssjzw.com/"  >黄冈</a></li>
        <li><a href="http://xianning.ssjzw.com/"  >咸宁</a></li>
		<li><a href="http://suizhou.ssjzw.com/"  >随州</a></li>
        <li><a href="http://qianjiang.ssjzw.com/"  >潜江</a></li>
        <li><a href="http://es.ssjzw.com/"  >恩施</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">湖南</li>      
        <li class="ys"><a href="http://cs.ssjzw.com/">长沙</a></li>
        <li><a href="http://zhuzhou.ssjzw.com/"  >株洲</a></li>
        <li><a href="http://xiangtan.ssjzw.com/"  >湘潭</a></li>
        <li><a href="http://hengyang.ssjzw.com/"  >衡阳</a></li>
        <li><a href="http://shaoyang.ssjzw.com/">邵阳</a></li>
        <li><a href="http://yy.ssjzw.com/"   >岳阳</a></li>
        <li><a href="http://changde.ssjzw.com/">常德</a></li>
        <li><a href="http://zjj.ssjzw.com/"  >张家界</a></li>
        <li><a href="http://yiyang.ssjzw.com/"   >益阳</a></li>
        <li><a href="http://chenzhou.ssjzw.com/">郴州</a></li>
        <li><a href="http://yongzhou.ssjzw.com/"   >永州</a></li>
        <li><a href="http://huaihua.ssjzw.com/"  >怀化</a></li>
        <li><a href="http://ld.ssjzw.com/"  >娄底</a></li>
        <li><a href="http://xiangxi.ssjzw.com/"  >湘西</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">陕西</li>       
        <li class="ys"><a href="http://xa.ssjzw.com/"  >西安</a></li>
        <li><a href="http://tc.ssjzw.com/"  >铜川</a></li>
        <li><a href="http://baoji.ssjzw.com/"  >宝鸡</a></li>
        <li><a href="http://xianyang.ssjzw.com/"  >咸阳</a></li>
        <li><a href="http://weinan.ssjzw.com/"  >渭南</a></li>
        <li><a href="http://yanan.ssjzw.com/"   >延安</a></li>
        <li><a href="http://hanzhong.ssjzw.com/">汉中</a></li>
        <li><a href="http://yl.ssjzw.com/"   >榆林</a></li>
        <li><a href="http://ankang.ssjzw.com/">安康</a></li>
        <li><a href="http://sl.ssjzw.com/">商洛</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">广西</li>
        <li class="ys"><a href="http://nn.ssjzw.com/"  >南宁</a></li>
        <li><a href="http://liuzhou.ssjzw.com/"  >柳州</a></li>
        <li class="ys"><a href="http://gl.ssjzw.com/"  >桂林</a></li>
        <li><a href="http://wuzhou.ssjzw.com/"  >梧州</a></li>
        <li><a href="http://bh.ssjzw.com/"  >北海</a></li>
        <li><a href="http://fcg.ssjzw.com/"  >防城港</a></li>
        <li><a href="http://qinzhou.ssjzw.com/"  >钦州</a></li>
        <li><a href="http://gg.ssjzw.com/"  >贵港</a></li>
        <li><a href="http://yulin.ssjzw.com/"   >玉林</a></li>
        <li><a href="http://bs.ssjzw.com/"  >百色</a></li>
        <li><a href="http://hezhou.ssjzw.com/">贺州</a></li>
        <li><a href="http://hechi.ssjzw.com/">河池</a></li>
        <li><a href="http://laibin.ssjzw.com/"  >来宾</a></li>
        <li><a href="http://chongzuo.ssjzw.com/">崇左</a></li>
      </ul>
        <ul class="noArea xian">
        <li class="zm">海南</li>	    
        <li><a href="http://haikou.ssjzw.com/"  >海口</a></li>
        <li><a href="http://sanya.ssjzw.com/"  >三亚</a></li>
        <li><a href="http://hn.ssjzw.com/"  >海南</a></li>
        </ul>
      <ul class="noArea">
        <li class="zm">贵州</li>
        <li class="ys"><a href="http://gy.ssjzw.com/"  >贵阳</a></li>
        <li><a href="http://lps.ssjzw.com/">六盘水</a></li>
        <li><a href="http://zunyi.ssjzw.com/">遵义</a></li>
        <li><a href="http://ans.ssjzw.com/">安顺</a></li>
        <li><a href="http://tongren.ssjzw.com/" >铜仁</a></li>
        <li><a href="http://bijie.ssjzw.com/" >毕节</a></li>
	<li><a href="http://qxn.ssjzw.com/"  >黔西南</a></li>
        <li><a href="http://qianan.ssjzw.com/"  >黔南</a></li>
        <li><a href="http://qdn.ssjzw.com/"  >黔东南</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">云南</li>
        <li class="ys"><a href="http://km.ssjzw.com/">昆明</a></li>      
        <li><a href="http://qj.ssjzw.com/"  >曲靖</a></li>
        <li><a href="http://yx.ssjzw.com/"   >玉溪</a></li>
        <li><a href="http://baoshan.ssjzw.com/"  >保山</a></li>
        <li><a href="http://zt.ssjzw.com/" >昭通</a></li>
        <li><a href="http://lj.ssjzw.com/"  >丽江</a></li>
        <li><a href="http://lincang.ssjzw.com/">临沧</a></li>
        <li><a href="http://wenshan.ssjzw.com/"  >文山</a></li>
        <li><a href="http://honghe.ssjzw.com/">红河</a></li>
        <li><a href="http://xsbn.ssjzw.com/"  >西双版纳</a></li>
        <li><a href="http://cx.ssjzw.com/">楚雄</a></li>
        <li><a href="http://dali.ssjzw.com/"  >大理</a></li>
        <li><a href="http://dehong.ssjzw.com/"  >德宏</a></li>
        <li><a href="http://nujiang.ssjzw.com/"  >怒江</a></li>
        <li><a href="http://diqing.ssjzw.com/"  >迪庆</a></li>
        <li><a href="http://pe.ssjzw.com/"  >普洱</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">甘肃</li>     
        <li class="ys"><a href="http://lz.ssjzw.com/">兰州</a></li>
        <li><a href="http://jyg.ssjzw.com/">嘉峪关</a></li>
        <li><a href="http://jingchang.ssjzw.com/">金昌</a></li>
        <li><a href="http://baiyin.ssjzw.com/"  >白银</a></li>
        <li><a href="http://tianshui.ssjzw.com/"  >天水</a></li>
        <li><a href="http://wuwei.ssjzw.com/"  >武威</a></li>
        <li><a href="http://zy.ssjzw.com/" >张掖</a></li>
        <li><a href="http://pl.ssjzw.com/"  >平凉</a></li>
        <li><a href="http://jq.ssjzw.com/">酒泉</a></li>
        <li><a href="http://qingyang.ssjzw.com/"  >庆阳</a></li>
        <li><a href="http://dx.ssjzw.com/"  >定西</a></li>
        <li><a href="http://ln.ssjzw.com/"  >陇南</a></li>
        <li><a href="http://lx.ssjzw.com/">临夏</a></li>
        <li><a href="http://gn.ssjzw.com/"  >甘南</a></li>
      </ul>
      <ul class="noArea">
        <li class="zm">青海</li>     
        <li><a href="http://xn.ssjzw.com/"  >西宁</a></li>
        <li><a href="http://guoluo.ssjzw.com/"  >果洛</a></li>
        <li><a href="http://yushu.ssjzw.com/"   >玉树</a></li>
      </ul>
      <ul class="noArea xian">
        <li class="zm">宁夏</li>      
        <li><a href="http://yc.ssjzw.com/"   >银川</a></li>
      </ul>	   
	  <ul class="noArea">
        <li class="zm">内蒙古</li>
       
        <li><a href="http://hu.ssjzw.com/"  >呼和浩特</a></li>
	    <li><a href="http://bt.ssjzw.com/"  >包头</a></li>
	    <li><a href="http://wuhai.ssjzw.com/"  >乌海</a></li>
	    <li><a href="http://cf.ssjzw.com/">赤峰</a></li>
	    <li><a href="http://tongliao.ssjzw.com/"  >通辽</a></li>
	    <li><a href="http://erds.ssjzw.com/"  >鄂尔多斯</a></li>
	    <li><a href="http://wlcb.ssjzw.com/"  >乌兰察布</a></li>
	    <li><a href="http://hlbr.ssjzw.com/">呼伦贝尔</a></li>
	    <li><a href="http://xingan.ssjzw.com/"  >兴安</a></li>
	    <li><a href="http://xlgl.ssjzw.com/"  >锡林郭勒</a></li>
	    <li><a href="http://als.ssjzw.com/">阿拉善</a></li>
	  </ul>
	  <ul class="noArea">
        <li class="zm">西藏</li>
        <li><a href="http://lasa.ssjzw.com/">拉萨</a></li>
	    <li><a href="http://changdu.ssjzw.com/">昌都</a></li>
	    <li><a href="http://shannan.ssjzw.com/">山南</a></li>
	    <li><a href="http://rikaze.ssjzw.com/">日喀则</a></li>
	    <li><a href="http://naqu.ssjzw.com/"  >那曲</a></li>
	    <li><a href="http://ali.ssjzw.com/">阿里</a></li>
	    <li><a href="http://linzhi.ssjzw.com/">林芝</a></li>
	  </ul>
	  <ul class="noArea">
        <li class="zm">新疆</li>
        <li><a href="http://wlmq.ssjzw.com/"  >乌鲁木齐</a></li>
	  </ul>
	  <ul class="noArea">
        <li class="zm">港澳台</li>
        <li class="ys"><a href="http://hk.ssjzw.com/">香港</a></li>
		<li class="ys"><a href="http://am.ssjzw.com/">澳门</a></li>
		<li class="ys"><a href="http://tw.ssjzw.com/">台湾</a></li>
      </ul>
    """

    return url_list, city_name


get_city_url()
