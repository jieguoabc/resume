Vue.directive("focus",{
    inserted(elem){
        elem.focus()
    }
})

new  Vue({
    el:"#main",
    data:{
        uname:"",
        phone:"",
        upwd:"",
        prove:"",
        del:{name:false,phone:false,upwd:false,prove:false},
        msg:{name:false,phone:false,upwd:false,upwd2:false,prove:false,read:false},
        err:{name:"",phone:"",upwd:"",prove:"",check:"",upwd1:"",upwd3:""},
        right:{name:"",phone:"",upwd:"",upwd1:"",upwd2:"",upwd3:""},
        circle:"",
        border:{name:"",phone:"",upwd:"",prove:""},
        nameMsg:"",
        phoneMsg:"",
        upwdMsg:"",
        proveMsg:"",
        checked:"",
        canreg:{name:"",phone:"",upwd:""}
    },
    watch:{
        uname(){
            if(this.uname!=""){
                this.del.name=true
            }else{
                this.del.name=false
            }
        },
        phone(){
            if(this.phone!=""){
                this.del.phone=true
            }else{
                this.del.phone=false
            }
        },
        upwd(){
            if(this.upwd!=""){
                console.log(this.upwd.indexOf(" "))
                this.del.upwd=true
                this.right.upwd2="right-icon"
                var reg1=/^.{6,14}$/;
                if(this.upwd.indexOf(" ")==-1){
                    this.right.upwd3="right-icon"; 
                }else{
                    this.right.upwd3=""
                    this.err.upwd3="err-icon"; 
                } 
                if(!reg1.test(this.upwd)){
                    this.err.upwd1="err-icon";
                }else{
                    this.right.upwd1="right-icon";
                }
                if(this.right.upwd2=="right-icon"&&this.right.upwd3=="right-icon"&&this.right.upwd1=="right-icon"){
                    this.canreg.upwd=true
                }

            }else{
                this.del.upwd=false;
                this.err.upwd1="";
                this.right.upwd1="";
                this.err.upwd3="";
                this.right.upwd3=""
                this.right.upwd2=""
            }
        },
        prove(){
            if(this.prove!=""){
                this.del.prove=true
            }else{
                this.del.prove=false
            }
        },
    },
    methods:{
        reg(){
            if(this.uname==""){
                this.msg.name=true;
                this.nameMsg="请您输入用户名"
                this.err.name="red-color";
                this.border.name="red-border";
            }
            if(this.phone==""){
                this.msg.phone=true;
                this.phoneMsg="请您输入手机号";
                this.err.phone="red-color";
                this.border.phone="red-border"
            }
            if(this.upwd==""){
                this.msg.upwd=true;
                this.upwdMsg="请您输入密码";
                this.err.upwd="red-color";
                this.border.upwd="red-border"
            }
            if(this.prove==""){
                this.msg.prove=true;
                this.proveMsg="请您输入验证码";
                this.err.prove="red-color";
                this.border.prove="red-border"
            }
            if(this.checked==false){
                this.msg.read=true; 
                this.err.check="red-color"
            }else{
                this.msg.read=false;
            }
            this.register()
        },
        register(){
            if(this.canreg.name&&this.canreg.phone&&this.canreg.upwd&&this.checked){
                axios.post("http://localhost:3000/users/regiser",
            Qs.stringify({uname:this.uname,upwd:this.upwd,phone:this.phone}))
            .then(res=>{
                console.log(res)
                location.href="index.html"
            })
            }
            
        },
        getUname(){
            this.msg.name=true;
            this.nameMsg="设置后不可更改 中英文均可，最长14个英文或7个汉字"
            this.err.name="";
            this.right.name=""
        },
        loseUname(){
            this.border.name="";
            if(this.uname==""){
            this.msg.name=false;
            //判断用户名是否满足条件
            }else{
                this.msg.name=true;
                this.err.name="red-color";
                this.border.name="red-border";
                 var reg1=/[a-zA-Z0-9_\u4E00-\u9FA5]/;
                var reg2=/^\d{6,14}$/;
                //判断用户名是否符合条件  中英文均可，最长14个英文或7个汉字
                if(!reg1.test(this.uname)||reg2.test(this.uname)){ 
                    this.nameMsg="用户名仅支持中英文、数字和下划线,且不能为纯数字"
                }else{
                    var len=0;
                    for(var i=0;i<this.uname.length;i++){
                        if (/[\u4E00-\u9FA5]/.test(this.uname[i])) {
                            len += 2;
                        } else {
                            len += 1;
                        }
                        if (len > 14) {
                            break;
                        }
                    }

                    if(len>14){
                        this.nameMsg="用户名不能超过7个汉字或14个字符";
                        return;
                    }else{
                        axios.get("http://localhost:3000/users/isreg",{
                            params:{uname:this.uname}
                        }).then(res=>{
                            //console.log(res)
                            if(res.data.ok==1){
                                this.nameMsg="此用户名太受欢迎,请更换一个";
                            }else{
                                this.err.name="";
                                this.nameMsg="";
                                this.right.name="green-color";
                                this.canreg.name=true
                            }
                            
                        })
                    
                    }
                    
            }
            }
              
        },
        clearName(){
            this.uname="";
        },
        getPhone(){
            this.msg.phone=true;
            this.phoneMsg="请输入中国大陆手机号，其他用户不可见"
            this.err.phone="";
            this.right.phone="";
        },
        losePhone(){
            this.border.phone="";
            if(this.phone==""){
            this.msg.phone=false;
            }else{
                this.msg.phone=true;
                this.err.phone="red-color";
                this.border.phone="red-border";
                var reg=/^1[3-8]\d{9}$/;
                if(!reg.test(this.phone)){ 
                    this.phoneMsg="手机号码格式不正确"

                }else{
                    axios.get("http://localhost:3000/users/phone",{
                            params:{phone:this.phone}
                        }).then(res=>{
                            //console.log(res)
                            if(res.data.ok==1){
                                this.msg.phone=false;
                                alert("该手机已注册，可以通过密码或短信快捷登录")
                                return;
                            }else{
                                this.err.phonee="";
                                this.phoneMsg="";
                                this.right.phone="green-color";
                               this.canreg.phone=true
                            }
                            
                        })

                }
            }  
            
        },
        clearPhone(){
            this.phone="";
        },
        getUpwd(){
            this.msg.upwd=false;
            this.msg.upwd2 =true;
            this.err.upwd=""
        },
        loseUpwd(){
            if(this.upwd==""){
                this.msg.upwd2=false;
            }else{
                this.msg.upwd2=true
            }
            
            this.border.upwd=""  
        },
        clearUpwd(){
            this.upwd="";
        },
        getProve(){ 
            this.msg.prove=false;    
            this.err.prove="" 
        },
        loseProve(){
            this.border.prove=""
        },
        clearProve(){
            this.prove="";
        },
    },
    created(){
        this.getUname();
        this.circle="circle"
    }
    
})