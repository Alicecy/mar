<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2020/3/30
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Home</title>
	<style>
		.true {
			color: green;
		}

		.false {
			color: red;
		}
	</style>

</head>
<body>
<div style="overflow:hidden;border:0px">
	<div style="margin:-1150px 0px 0px 0px;">
		<iframe src="https://ncov.dxy.cn/ncovh5/view/pneumonia" width="100%" height="1675px"  scrolling="no" >
		</iframe>
	</div>
</div>
<h2>健康答题：</h2><br/>
1.以下哪种不是新型冠状病毒感染的肺炎临床表现？<br/>
<button onclick="this.style.color='red'">A.发热</button><br/>
<button onclick="this.style.color='red'">B.乏力</button><br/>
<button onclick="this.style.color='red'">C.干咳</button><br/>
<button onclick="this.style.color='green'">D.嗜吃</button><br/>
<button class="help" qid="1"> 查看答案</button><br/>
<br/>

2.以下哪个物品上面最有可能沾有新型冠状病毒？<br/>
<button onclick="this.style.color='red'">A.年前下单结果发现是从湖北发货的快递</button><br/>
<button onclick="this.style.color='red'">B.小猫</button><br/>
<button onclick="this.style.color='green'">C.被人用过的口罩</button><br/>
<button class="help" qid="2"> 查看答案</button><br/>
<br/>

3.以下哪种不是新型冠状病毒的传播途径？<br/>
<button onclick="this.style.color='red'">A.飞沫传播</button><br/>
<button onclick="this.style.color='green'">B.土壤传播</button><br/>
<button onclick="this.style.color='red'">C.呼吸道飞溶胶近距离</button><br/>
<button onclick="this.style.color='red'">D.接触传播</button><br/>
<button class="help" qid="3"> 查看答案</button><br/>
<br/>

4.预防新型冠状病毒，下面哪种说法不正确？<br/>
<button onclick="this.style.color='red'">A.讲卫生、勤洗手</button><br/>
<button onclick="this.style.color='red'">B.多通风、少串门</button><br/>
<button onclick="this.style.color='green'">C.无需采取措施</button><br/>
<button onclick="this.style.color='red'">D.公共场所戴口罩</button><br/>
<button class="help" qid="4"> 查看答案</button><br/>
<br/>


5.针对新型冠状病毒，以下哪种条件可以灭杀病毒？<br/>
<button onclick="this.style.color='green'">A.在56℃，30分钟条件下</button><br/>
<button onclick="this.style.color='red'">B.在26℃，20分钟条件下</button><br/>
<button onclick="this.style.color='red'">C.在16℃，10分钟条件下</button><br/>
<button onclick="this.style.color='red'">D.在0℃，5分钟条件下</button><br/>
<button class="help" qid="5"> 查看答案</button><br/>
<br/>

6.如何区分普通感冒和新型肺炎？<br/>
<button onclick="this.style.color='green'">A.普通感冒症状常出现鼻塞，有时会出现1-3天的低中度发烧。普通感冒一般比较少出现全身性症状</button><br/>
<button onclick="this.style.color='green'">B.流行性感冒一般伴有发热症状，并且为3-5天的明显高热症状。此外流感常常伴有全身肌肉酸痛、乏力等全身性症状</button><br/>
<button onclick="this.style.color='green'">C.新冠肺炎目前观察来看，主要症状有发热、咳嗽、呕吐和腹泻等。</button><br/>
<button class="help" qid="6"> 查看答案</button><br/>
<br/>

7.密切接触者只要个人注意就行，无需进行医学观察。<br/>
<button onclick="this.style.color='red'">对</button><br/>
<button onclick="this.style.color='green'">错</button><br/>
<button class="help" qid="7"> 查看答案</button><br/>
<br/>

8.预防新型冠状病毒，加强健身同样重要。<br/>
<button onclick="this.style.color='green'">对</button><br/>
<button onclick="this.style.color='red'">错</button><br/>
<button class="help" qid="8"> 查看答案</button><br/>
<br/>

9.可以通过使用抗生素治疗新型冠状病毒。<br/>
<button onclick="this.style.color='red'">对</button><br/>
<button onclick="this.style.color='green'">错</button><br/>
<button class="help" qid="9"> 查看答案</button><br/>
<br/>

10.高价销售口罩的行为触犯刑法。<br/>
<button onclick="this.style.color='green'">对</button><br/>
<button onclick="this.style.color='red'">错</button><br/>
<button class="help" qid="10"> 查看答案</button><br/>
<br/>

<script src="js/jquery.min.js"></script>
<script>
    $(function () {

        $("button.help").click(function () {
            var qid = $(this).attr("qid");
            $.ajax({
                type: "post",
                url: "/answer",
                data: {
                    "qid":qid,
                },
                success: function(data,status) {
                    console.log(data);
                    console.log(status);
                    var t="";
                    t+=data;
                    alert(t)
                }
            });
        });

        $("#addCartSuccessMessage").hide();

    });
</script>
</body>
</html>
