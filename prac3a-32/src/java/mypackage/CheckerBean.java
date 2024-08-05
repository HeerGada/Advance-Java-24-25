/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypackage;

/**
 *
 * @author Admin
 */
public class CheckerBean {
    private String name,age,hobbie,mail,gender,error;
    public CheckerBean()
    {
        error="";
    }
    public void setName(String n){name=n;}
    public void setAge(String a){age=a;}
    public void setHobbie(String h){hobbie=h;}
    public void setEmail(String e){mail=e;}
    public void setGender(String g){name=g;}
    public void setError(String e){error=e;}
    
    public String getName(){return name;}
    public String getAge(){return age;}
    public String getHobbie(){return hobbie;}
    public String getEmail(){ return mail;}
    public String getGender(){ return name;}
    public String getError(){ return error;}
    
    public boolean validate ()
    {
        boolean res=true;
        if(name.trim().equals("") || (name==null))
        {
            error+="<br>Enter First Name:";
            res=false;
        }
        if(age.length()>2 || (age==null))
        {
            error+="<br> Age invalid";
                    res=false;
        }
        return res;
    }
}
