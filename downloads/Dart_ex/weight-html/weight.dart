import "dart:html";
GtoB(num g){
return g*2.204;
}
BtoG(num b){
return b*0.45359;
}
main() {
    InputElement tempInput = querySelector("#temp");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}
convert(String data){
  int len;
  var type;
  var number;
  LabelElement output = querySelector("#output");
  len = data.length;
  type = data[len-2];
  number = data.substring(0, len-2);
  number = int.parse(number);
  if (type == "K" || type == "k"){
     output.innerHtml = "公斤 $number kg = 磅 ${GtoB(number).toStringAsFixed(3)} lb";
  } else if ((type == "L" || type == "l")){
     output.innerHtml = "磅 $number lb = 公斤 ${BtoG(number).toStringAsFixed(3)} kg";
  } else {
     output.innerHtml = "請輸入數字加上 KG 或 LB!";
  }
} 