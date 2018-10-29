const express=require("express")
const router=express.Router()
const pool=require("../pool.js")

router.get("/IndexProductsOne",(req,res)=>{
  var sql="SELECT * FROM nuomi_index_product1  where seq_recommended!=0 order by seq_recommended";
  pool.query(sql,[],(err,result)=>{
    if(err) console.log(err);
    //res.send(result);
    res.writeHead(200,{
      "Content-Type":"application/json;charset=utf-8",
      "Access-Control-Allow-Origin":"*"
    })
    res.write(JSON.stringify(result));
    res.end();
  })
})
router.get("/IndexProductsTwo",(req,res)=>{
    var sql="SELECT * FROM nuomi_index_product2  where seq_recommended!=0 order by seq_recommended";
    pool.query(sql,[],(err,result)=>{
      if(err) console.log(err);
      //res.send(result);
      res.writeHead(200,{
        "Content-Type":"application/json;charset=utf-8",
        "Access-Control-Allow-Origin":"*"
      })
      res.write(JSON.stringify(result));
      res.end();
    })
  })
//接口地址: http://localhost:3000/index/getIndexProducts
module.exports=router;