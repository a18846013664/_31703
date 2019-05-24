<%--
  Created by IntelliJ IDEA.
  User: 17149
  Date: 2019/4/10
  Time: 8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        *{
            padding: 0px;
            margin: 0px;
        }
        a{
            text-decoration: white;
            font-weight: bolder;
        }
        a:hover{
            cursor: pointer;
        }
    </style>
</head>
<body>
<div style="height: 30px;width: 1366px;background: black;margin: 0 auto">
    <a href="/view/jsp/web.jsp" style="color: #eeeeee;position: absolute;top: 5px;left: 1230px">返回首页</a>
</div>
<div style="width: 150px;height: 620px;background: #343434">
    <center>
        <table>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;width: 100px;background: white"><center><a onclick="f()" id="div1">火罐料理</a></center></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;width: 100px;background: white"><center><a onclick="f1()" id="div2">足疗海洋</a></center></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;width: 100px;background: white"><center><a onclick="f2()" id="div3">松骨套餐</a></center></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;width: 100px;background: white"><center><a onclick="f3()" id="div4">刮痧疗骨</a></center></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 30px;width: 100px;background: white"><center><a onclick="f4()" id="div5">美容美肤</a></center></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </center>
</div>
<div id="diva1"  style="width: 1215px;height: 620px;background: #c1a076;position: absolute;top: 30px;left: 150px">
    <div style="position:absolute;top: 30px;left: 60px;width:1100px;height:250px;background: #3a3a3a">
        <img src="../../../uploaddir/h1.jpg" width="230px" height="230px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 270px;width: 800px;height: 230px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">火罐介绍：</font><br><br>
            <div>拔罐是以罐为工具，利用燃火、抽气等方法产生负压，使之吸附于体表，造成局部瘀血，以达到通经活络、行气活血、消肿止痛、
                祛风散寒等作用的疗法。拔罐疗法在中国有着悠久的历史，早在成书于西汉时期的帛书《五十二病方》中就有关于“角法”的记载，
                角法就类似于后世的火罐疗法。而国外古希腊、古罗马时代也曾经盛行拔罐疗法。</div>
        </div>
    </div>
    <div style="position:absolute;top: 310px;left: 60px;width:1100px;height:250px;background: #3a3a3a">
        <img src="../../../uploaddir/h2.jpg" width="230px" height="230px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 270px;width: 800px;height: 230px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">竹罐介绍：</font><br><br>
            <div>竹罐疗法是祖国传统康复医疗手段---拔管疗法中的一种，在隋唐的医籍“外台秘药。卷四十”中就有关于用竹罐吸拔的详细描述，此法沿用至今上千年，
                属中医外治法之一。是以专门选制的1～2年生坚固的细毛竹（斑竹）节，在剥去其外表皮（篾青）后半机械加工制成一端有节密闭密闭，一端开口的不同
                规格的竹罐（竹管）。通过煎煮后，罐内遗留膨胀的热气，气体在冷却过程中产生负压，大气压使罐口吸附于人体不同部位(经穴)，产生温经散寒、活血
                通络、驱邪止痛、去瘀排毒等作用，常用于感受风寒湿邪、外伤劳损等原因引起的肢体不同部位的痹症，及感冒咳喘、胃腹疼痛、吐泻等、因其具有罐口
                较小，可沿经穴灵活使用等特点，尤其适于远端小关节附近的病变。在治疗中配合中药使用，可进一步增强疗效。</div>
        </div>
    </div>
</div>
<div id="diva2"  style="width: 1215px;height: 620px;background: #c1a076;position: absolute;top: 30px;left: 150px">
    <div style="position:absolute;top: 20px;left: 40px;width:1120px;height:520px;background: #3a3a3a">
        <img src="../../../uploaddir/z1.jpg" width="400px" height="500px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 420px;width: 680px;height: 500px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">足疗介绍：</font><br><br>
            <div>足疗在中医文化中，足浴疗法源远流长，它源于我国远古时代，是人们在长期的社会实践中的知识积累和经验总结，至今已有3000多年的历史传统。
                古人曾经有过许多对足浴的经典记载和描述：“春天洗脚，升阳固脱；夏天洗脚，暑湿可祛；秋天洗脚，肺润肠濡；冬天洗脚，丹田温灼。”苏东坡曰：
                “热浴足法，其效初不甚觉，但积累百余日，功用不可量，比之服药，其效百倍。”又在诗中写道：“主人劝我洗足眠，倒床不复闻钟鼓。”陆游道：“
                洗脚上床真一快，稚孙渐长解浇汤。”清朝外治法祖师在《理论骈文》道：“临卧濯足，三阴皆起于足，指寒又从足心入，濯之所以温阴，而却寒也。”
                促进人体血脉流通，调理脏腑，平衡阴阳，舒通经脉，强身健体，推迟衰老，祛病延年。</div>
        </div>
    </div>
</div>
<div id="diva3"  style="width: 1215px;height: 620px;background: #c1a076;position: absolute;top: 30px;left: 150px">
    <div style="position:absolute;top: 20px;left: 40px;width:1120px;height:520px;background: #3a3a3a">
        <img src="../../../uploaddir/s1.jpg" width="400px" height="500px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 420px;width: 680px;height: 500px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">松骨介绍：</font><br><br>
            <div>韩式松骨是流行于韩国的一种按摩手法，它起源于中国古代的传统按摩手法。
                并不断吸取其他各式按摩手法逐渐演变出来的。它集美容按摩、手足按摩、传统中医按摩三式为一体，其手法细腻舒适，动作缓慢柔和，
                简单实用。它包括：面部、头部、胳膊、腿、肚子、足底的护理；背部推油；热疗跪背等按摩。
                具有美容护肤、强身健体、防病治病的良好作用。有消除疲劳，恢复精力，强身健体，清洁保健，
                舒筋活血，松弛肌肉，调理脏腑，改善人体新陈代谢。有调节神经的功能，改善大脑皮层兴奋---抑制过程，解除大脑的紧张和疲劳，能改善血液循环，促进消化吸收和营养代谢。使人体增强免疫能力，使人从亚健康状态向健康状态转变。
                韩式松骨按摩属于保健医学的一个分支，主要是解除疲劳，从心理和身体上都得到充分的放松。作为一种新式的放松方式渐渐成了大众休闲保健的重要选择。</div>
        </div>
    </div>
</div>
<div id="diva4"  style="width: 1215px;height: 620px;background: #c1a076;position: absolute;top: 30px;left: 150px">
    <div style="position:absolute;top: 20px;left: 40px;width:1120px;height:520px;background: #3a3a3a">
        <img src="../../../uploaddir/g1.jpg" width="400px" height="500px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 420px;width: 680px;height: 500px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">刮痧介绍：</font><br><br>
            <div>刮痧疗法是用边缘光滑的嫩竹板、瓷器片、小汤匙、铜钱、硬币、玻璃，或头发、苎麻等工具，蘸食油或清水在体表部位进行由上而下、由内向外反复刮动，用以治疗有关的疾病。
                本疗法是临床常用的一种简易治疗方法，流传甚久。多用于治疗夏秋季时病，如中暑、外感、肠胃道疾病。有学者认为刮痧是推拿手法 [1]  变化而来。《保赤推拿法》载：“刮者，
                医指挨儿皮肤，略加力而下也。”元、明时期，有较多的刮痧疗法记载，并称为“夏法”。及至清代，有关刮痧的描述更为详细。郭志邃《痧胀玉衡》曰：“刮痧法，背脊颈骨上下，又胸
                前胁肋两背肩臂痧，用铜钱蘸香油刮之。”吴尚先《理瀹骈文》载有如“阳痧腹痛，莫妙以瓷调羹蘸香油刮背，盖五脏之系，咸在于背，刮之则邪气随降，病自松解。”《串雅外编》、《
                七十二种痧证救治法》等医籍中也有记载。由于本疗法无需药物，见效也快，故现仍在民间广泛应用，我国南方地区更为流行。</div>
        </div>
    </div>
</div>
<div id="diva6"  style="width: 1215px;height: 620px;background: #c1a076;position: absolute;top: 30px;left: 150px">
    <div style="position:absolute;top: 20px;left: 40px;width:1120px;height:520px;background: #3a3a3a">
        <img src="../../../uploaddir/m1.jpg" width="400px" height="500px" style="position: absolute;top: 10px;left: 10px">
        <div style="position: absolute;top: 10px;left: 420px;width: 680px;height: 500px;background: whitesmoke">
            <font style="font-size: 20px;font-weight: bolder">美容美肤</font><br><br>
            <div>SPA之所以广受欢迎，这与它的医疗功效和美容作用分不开。特别是SPA的医疗功能已得到各国医学界的公认。
                　　SPA的医疗功能和美容作用主要体现在物理作用和化学作用两个方面。首先是物理作用，因为在沐浴时，水会产生浮力、
                压力及温热的效应。当水温高于人的体温时，人就会产生温热的感觉，此刻皮肤的毛细血管充分扩张、新陈代谢加快、汗腺分泌增强、
                毛孔充分张开。汗腺分泌增强，必然会引起大量排汗，于是人体中的代谢废物和毒素就会随汗而排出体外，对皮肤的美容有着很大的益处。
                当毛孔张开后，水中添加的纯天然的矿物质、微量元素及精油成分就会随着毛孔进入人的皮肤，使皮肤细胞获得丰富养分的滋养。
                此外，水的温热作用还可降低肌肉的张力、缓解疼痛与痉挛。除此之外，温热作用可降低神经系统的兴奋性，加强大脑皮质的抑制功能，
                从而产生镇静作用，一般做完SPA后，人会睡得特别好，就是浴水的温热作用所产生的效果。当水温低于人的体温时，毛纫血管会收缩，
                短时间的冷水浴有利于提高心脏功能及皮肤的张力，同时还具有兴奋、镇痛、促进代谢的作用。因此，有的sPA常常会让浴者作冷热水的
                交替休浴，对皮肤有着意想不到的美容效果。SPA的物理作用还表现在水的压力上，当人浸在浴缸或浴桶里时，会产生静水压力。这种压
                力对人体的皮肤有着十分积极的作用，可促进人体血液及淋巴的回流，促进组织间渗出的吸收。</div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var aa = document.getElementById('diva1');
    var ab = document.getElementById('diva2');
    var ac = document.getElementById('diva3');
    var ad = document.getElementById('diva4');
    var af = document.getElementById('diva5');
    var ae = document.getElementById('diva6');
    function f() {
        aa.style.display="block";
        ab.style.display="none";
        ac.style.display="none";
        ad.style.display="none";
        ae.style.display="none";
        af.style.display="none";
    }
    function f1() {
        ab.style.display="block";
        aa.style.display="none";
        ac.style.display="none";
        ad.style.display="none";
        ae.style.display="none";
        af.style.display="none";
    }
    function f2() {
        ac.style.display="block";
        aa.style.display="none";
        ab.style.display="none";
        ad.style.display="none";
        ae.style.display="none";
        af.style.display="none";
    }
    function f3() {
        ad.style.display="block";
        aa.style.display="none";
        ac.style.display="none";
        ab.style.display="none";
        ae.style.display="none";
        af.style.display="none";
    }
    function f4() {
        ae.style.display="block";
        aa.style.display="none";
        ac.style.display="none";
        ad.style.display="none";
        ab.style.display="none";
        af.style.display="none";
    }
    function f5() {
        af.style.display="block";
        aa.style.display="none";
        ac.style.display="none";
        ad.style.display="none";
        ae.style.display="none";
        ab.style.display="none";
    }
</script>
</body>
</html>
