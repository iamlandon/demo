/**
 * Created by Administrator on 16-6-27.
 */
/*
function box() {
    return arguments[0]+' | '+arguments[1]; //得到每次参数的值
}
alert(box(1,2,3,4,5,6));
*/

function box(num) {
    return num + 100;
}
function box (num) { //会执行这个函数
    return num + 200;
}
//alert(box(50));
function displayDate(){
   alert(Date());
}
var add = (function () {
    var counter = 0;
    return function () {return counter += 1;}
})
    ();