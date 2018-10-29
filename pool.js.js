//连接mysal数据库
const mysql=require("mysql");
var pool=mysql.createPool({
    host:"127.0.0.1",
    port:3306,
    user:"root",
    password:"",
    database:"nuomi",
    connectionLimit:20
});
//导出数据库
module.exports=pool;