package com.community.data;

import com.community.entity.Message;
import com.community.util.JdbcHelper;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class MessageDao {
    JdbcHelper helper=JdbcHelper.getInstance();

    public boolean publish(Message message){
        String sql="INSERT INTO message(message,mdate,messageperson,articleid,imgpath) VALUES(?,?,?,?,?)";
        int i=helper.update(sql,message.getMessage(),message.getMdate(),message.getMessageperson(),message.getArticleid(),message.getImgpath());
        helper.destory();
        return i==1;
    }

    public List<Message> showThisMessage(String articleID){
        String sql="SELECT * FROM message WHERE articleid="+articleID;
        return getMessages(sql);
    }


    private List<Message> getMessages(String sql) {
        //System.out.println(sql);
        List<Map<String, Object>> list=helper.query(sql);
        helper.destory();
        List<Message> messages=new ArrayList<>();
        if(list==null||list.size()==0){
            messages=null;
        }else {
            for (Map<String,Object> map:list){
                Message article=wrap(map);
                messages.add(article);
            }
        }
        return messages;
    }

    private Message wrap(Map<String,Object> map){
        Message message=new Message();
        message.setId((Integer) map.get("id"));
        message.setMessage((String) map.get("message"));
        message.setMdate((Date) map.get("mdate"));
        message.setMessageperson((String) map.get("messageperson"));
        message.setArticleid((Integer) map.get("articleid"));
        message.setImgpath((String) map.get("imgpath"));
        return message;
    }

    public boolean updateImgPath(String imgpath,String messageperson) {
        String sql = "UPDATE message SET imgpath=? WHERE messageperson=?";
        int i = helper.update(sql, imgpath, messageperson);
        helper.destory();
        return i !=0;
    }

    public boolean isHasMessage(String messageperson){
        String sql = "SELECT * FROM message WHERE messageperson='"+messageperson+"'";
        List<Message> messages=getMessages(sql);
        if(messages==null||messages.size()==0){
            return false;
        }else {
            return true;
        }
    }
}
