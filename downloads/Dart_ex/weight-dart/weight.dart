KGtoLB(num g){
return g*2.20462;
}
LBtoKG(num b){
return b*0.45359;
}
main(){
var type;
int len;
var number;
List weight= ["25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];
for (var i in weight) {
len = i.length;
type = i[len-2];
number = i.substring(0, len-2);
number = int.parse(number);
if (type == "k"){
print(" $number kg =  ${GtoB(number).toStringAsFixed(4)} lb");
}else{
print(" $number lb =  ${BtoG(number).toStringAsFixed(4)} kg");
}
}
}