const express=require("express");
const bodyParser=require("body-parser");
const users=require("./routes/users.js");
const session = require('express-session');
const index=require("./routes/index");

var app=express();
app.listen(3000);
//托管静态资源
app.use(express.static("./public"));
app.use(session({
    secret: '128位随机字符串',
    resave: false,
    saveUninitialized: true,
  }))
//使用body-parser中间件
app.use(bodyParser.urlencoded({
   extended:false
}));
//路由挂载
app.use("/users",users);
app.use("/index",index);