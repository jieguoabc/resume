
new Vue({
  el:"#main",
  data:{ 
    uname:"", 
    upwd:"" ,
    nameBorder:"",
    upwdBorder:"",
    dis:{dis1:false,dis2:false},
    misLogin:false,
    message:"",
    findupwd:"",
    nameFocus:"",
  },
  methods:{
    signin(){
      if(this.uname==""){
        this.misLogin=true;
        this.nameBorder="name-border";
        this.message="请您输入手机/邮箱/用户名";
      }else if(this.upwd==""&&this.uname!=""){
        this.misLogin=true;
        this.upwdBorder="name-border";
        this.message="请您输入密码"
      }else if(this.uname&&this.upwd){
        (async ()=>{
          var res=await axios.post(
            "http://localhost:3000/users/signin",
            Qs.stringify({
              uname:this.uname, upwd:this.upwd
            })
          )
          res=res.data;
          if(res.ok==0){       
             this.misLogin=true;
              this.message="用户名或密码有误，请重新输入或";
              this.findupwd="找回密码"
            }else{
            this.misLogin=false;
            if(location.search.startsWith("?back=")){
              var url=location.search.slice(6)
            }else{
              var url="index.html"
            }
            location.href=url;
          }
        })()
      }
      
    },
    getBorder(){
      this.nameBorder="name-border";
      this.nameFocus="name_focus"

    },
    getBorder2(){
      this.upwdBorder="name-border";
      this.upwdFocus="upwd_focus"
    },
    loseUpwd(){
      this.upwdBorder=""
      this.upwdFocus="";
    },
    loseUname(){
      this.nameBorder="";
      this.nameFocus=""
    },
    delName(){
      this.uname=""
    },
    delUpwd(){
      this.upwd=""
    },
  },
  watch:{
    uname(){
      if(this.uname!="")
      this.dis.dis1=true
      else
      this.dis.dis1=false
    },
    upwd(){
      if(this.upwd!="")
      this.dis.dis2=true
      else
      this.dis.dis2=false;
    }
  }
})

