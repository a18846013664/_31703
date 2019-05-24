package com.service;

import com.dao.UserDao;
import com.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public void addNewUser(User user) {
        userDao.addNewUser(user);
    }

    @Override
    public Msg login(User user) {
        Msg result = new Msg();
        List<User> users = userDao.selectByName(user.getUsername());
        if(users.size() > 0){
            boolean b =false;
            for(User u : users){
                if(u.getPassword().equals(user.getPassword())){
                    result.setMsgCode(0);
                    b = true;
                }
            }
            if(!b){
                result.setMsgCode(1);
                result.setMsg("密码不匹配");
            }

        }else{

            result.setMsgCode(2);
            result.setMsg("用户名不存在");
        }
        return result;
    }

    @Override
    public User selectOne(String username) {
        return userDao.selectOne(username);
    }

    @Override
    public User updatefile(User user) {
        userDao.updatefile(user);
        User user1 = userDao.selectById(user);
        return user1;
    }

    @Override
    public Msg loginManage(Manage manage) {
        Msg results = new Msg();
        List<Manage> manages = userDao.selectManage(manage.getUsername());
        if(manages.size() > 0){
            boolean b =false;
            for(Manage u : manages){
                if(u.getPassword().equals(manage.getPassword())){
                    results.setMsgCode(0);
                    b = true;
                }
            }
            if(!b){
                results.setMsgCode(1);
                results.setMsg("密码不匹配");
            }

        }else{

            results.setMsgCode(2);
            results.setMsg("用户名不存在");
        }
        return results;
    }

    @Override
    public User selectUserById(int id) {
        return userDao.selectUserById(id);
    }

    @Override
    public List<Roomin> selectMyOrder(int id) {
        return userDao.selectMyOrder(id);
    }

    @Override
    public void upUser(User user) {
        userDao.upUser(user);
    }
}

