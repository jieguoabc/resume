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
          req.session.uname=user.uname
          req.session.phone=user.phone
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
          ok:1,uname:user.uname,phone:user.phone
        }))
        res.end()
      })
    }
    
  })
  router.get("/signout",(req,res)=>{
    req.session["uid"]=undefined;
    res.end();
  })


  //注册
 router.post("/regiser",(req,res)=>{
   var uname=req.body.uname;
   var phone=req.body.phone;
   var upwd=req.body.upwd;
   console.log(uname,upwd,phone)
   var sql="insert into nuomi_user (uname,upwd,phone) values(?,?,?)";
   pool.query(sql,[uname,upwd,phone],(err,result)=>{
     if(err) throw err
     res.write(JSON.stringify({
      ok:"1",
      msg:"注册成功"
      }))
      res.end();

       })
 }) 

 //判断用户是否已经注册过
 router.get("/isreg",(req,res)=>{
   var uname=req.query.uname;
   var sql="select * from nuomi_user where uname=?";
   pool.query(sql,[uname],(err,result)=>{
     if(err)throw err
     if(result.length>0){
      res.write(JSON.stringify({
        ok:"1",
        msg:"用户名已存在"
        }))
     }
     res.end();
   })
 })
 //判断手机号是否注册过
 router.get("/phone",(req,res)=>{
  var phone=req.query.phone;
  var sql="select * from nuomi_user where phone=?";
  pool.query(sql,[phone],(err,result)=>{
    if(err)throw err
    if(result.length>0){
     res.write(JSON.stringify({
       ok:"1",
       msg:"电话已存在"
       }))
    }
    res.end();
  })
})

module.exports=router;
