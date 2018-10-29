const express=require("express");
const pool=require("../pool.js");
var router=express.Router();


router.post("/signin",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    pool.query(
      "select * from nuomi_user where uname=? and upwd=?",
      [uname,upwd],
      (err,result)=>{
        if(err) console.log(err);
        console.log(result)
        if(result.length>0){
          res.writeHead(200);
          var user=result[0]
          req.session.uid=user.uid
          res.write(JSON.stringify({
            ok:1
          }))
        }else{
          res.write(JSON.stringify({
            ok:"0",
            msg:"用户名或密码错误！"
          }))
        }
        res.end();
      }
    )
  })
  router.get("/islogin",(req,res)=>{
    res.writeHead(200);
    if(req.session.uid===undefined){
      res.write(JSON.stringify({ok:0}))
      res.end()
    }else{
      var uid=req.session.uid;
      var sql=
       "select * from nuomi_user where uid=?"
      pool.query(sql,[uid],(err,result)=>{
        if(err) console.log(err);
        var user=result[0];
        res.write(JSON.stringify({
          ok:1,uname:user.uname
        }))
        res.end()
      })
    }
    
  })
  router.get("/signout",(req,res)=>{
    req.session["uid"]=undefined;
    res.end();
  })


module.exports=router;
