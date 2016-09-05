<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-6-23
 * Time: 下午3:01
 */

//获取剩余短信条数
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL , "http://sms-api.luosimao.com/v1/status.json");
curl_setopt($ch, CURLOPT_HTTP_VERSION  , CURL_HTTP_VERSION_1_0 );
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
curl_setopt($ch, CURLOPT_HEADER, FALSE);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);

curl_setopt($ch, CURLOPT_HTTPAUTH , CURLAUTH_BASIC);
curl_setopt($ch, CURLOPT_USERPWD  , 'api:key-3981714493206272c0c1ab8f8e6c6805');

$res =  curl_exec( $ch );
curl_close( $ch );
//$res  = curl_error( $ch );
$result = json_decode($res,true);


//判断剩余短信条数   只有一条时发送短信给开发者充值
if($result['deposit'] <= 1){
    $toUser = '17773101274';
    $content = '短信条数已经不足，请充值【微光科技】';
}else{
    $toUser = '18927585327';
    $content = '【测试短信验证码】'.rand(1000,9999).'【微光科技】';
}




$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, "http://sms-api.luosimao.com/v1/send.json");

curl_setopt($ch, CURLOPT_HTTP_VERSION  , CURL_HTTP_VERSION_1_0 );
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_HTTPAUTH , CURLAUTH_BASIC);
curl_setopt($ch, CURLOPT_USERPWD  , 'api:key-3981714493206272c0c1ab8f8e6c6805');

curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, array('mobile' => $toUser,'message' => $content));

$res = curl_exec( $ch );
curl_close( $ch );
//$res  = curl_error( $ch );
$postResult = json_decode($res,true);
header("Content-type: text/html; charset=utf-8");
if($postResult['error'] != 0){
//    print_r($postResult);die;
    echo '发送失败，错误信息为：'.$postResult['msg'].'<br/> 错误代码为：'.$postResult['error'];
}else{
    $msgNum = $result['deposit'] - 1;
    echo '发送成功，剩余短信数量：'.$msgNum;
}