package com.mar.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HelloController {

    @RequestMapping("/home")
    public String home() {
        return "home";
    }

    @ResponseBody
    @RequestMapping("/answer")
    public String answer(HttpServletRequest request, HttpServletResponse response,
                         Integer qid) {
        switch (qid) {
            case 1:
                return "D。患者主要临床表现为发热、乏力，呼吸道症状以干咳为主，并逐渐出现呼吸困难，严重者表现为急性呼吸道窘迫综合症，脓毒症休克、难以纠正的代谢性酸中毒出血和出凝血功能障碍。部分患者症状轻微，可无发热。";

            case 2:
                return "C。A.病毒在包裹表面存活的时间很短，并且现阶段，快递都要求进行消毒后再递送，所以放心收快递。B.目前没有证据证明，家养宠物会被新型冠状病毒感染，只要做好检疫，打好疫苗，宠物可能比主人还干净。C.病毒可以通过飞沫传播，很容易就落在口罩表面，所以使用过的口罩请及时扔掉！";

            case 3:
                return "B。主要传播方式是经过飞沫传播、接触传播（包括手污染导致的自我接种）以及不同大小的呼吸道气溶胶近距离传播。";

            case 4:
                return "C。面对疫情，除了讲卫生、勤洗手、多通风、少串门、到公共场所戴口罩之外，可以适当安排一些室内运动，以中等强度为主，以提高自身免疫力。";

            case 5:
                return "A。新型冠状病毒对热敏感，超过56℃且持续30分钟以上即可灭活新型冠状病毒。";

            case 6:
                return "ABC。另外，专家表示，和普通感冒不一样，流感和新冠肺炎的诊断很大程度参考流行病学史，因此如果怀疑自己为疑似病例就医，一定如实提供病史。";

            case 7:
                return "错。 目前对密切接触者采取较为严格的医学观察等预防性公共卫生措施十分必要，这是一种对公众健康安全负责任的态度，也是国际社会通行的做法。参考其他冠状病毒所致疾病潜伏期、此次新型冠状病毒病例相关信息和当前防控实际，将密切接触者医学观察期定为14天，并对密切接触者进行居家医学观察。";

            case 8:
                return "对。面对疫情，除了讲卫生、勤洗手、多通风、少串门、到公共场所戴口罩之外，可以适当安排一些室内运动，以中等强度为主，以提高自身免疫力。";

            case 9:
                return "错。一般的抗生素只对细菌有效，对病毒无效。新型冠状病毒是一种病毒，所以用抗生素来预防和治疗是没有效果的。";

            case 10:
                return "对。违反国家相关规定，哄抬物价、牟取暴利，严重扰乱市场秩序，违法所得数额较大或者有其他严重情节的，依照《刑法》第225条第（四）项的规定，以非法经营罪定罪，依法从重处罚。";
        }
        return null;
    }
}
