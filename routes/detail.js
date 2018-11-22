const express=require("express")
const router=express.Router()
const pool=require("../pool.js")

router.get("/",(req,res)=>{
  var lid=req.query.lid;
  console.log(lid);//5
  var output={product:{},pics:[],specs:[]};
  //用lid查当前商品信息
  var sql1="SELECT *,( SELECT fname from nuomi_food_family where fid=lid) as fname FROM nuomi_food where lid=?";
  var sql2="SELECT * FROM nuomi_food_pic where nuomi_id=?";//用lid查当前商品图片列表
  Promise.all([
    new Promise(function(open){
      pool.query(sql1,[lid],(err,result)=>{
        if(err) console.log(err);
        output.product=result[0];
        open();
        console.log("查询product完成!");
      })
    }),
    new Promise(function(open){
      pool.query(sql2,[lid],(err,result)=>{
        if(err) console.log(err);
        output.pics=result;
        open()
        console.log("查询pics完成");
      })
    }),
  ]).then(function(){
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(output));
    res.end();
    console.log("响应完成!");
  })
})
router.get("/intro",(req,res)=>{
  var sql="select *,( SELECT md from nuomi_food_pic where nuomi_id=lid limit 1 ) as md from nuomi_food";
  pool.query(sql,(err,result)=>{
    if(err)throw err;
    res.send(result)  
  })
})
module.exports=router;