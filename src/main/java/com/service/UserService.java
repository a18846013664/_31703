package com.service;

import com.vo.*;

import java.util.List;

public interface UserService {
    public void addNewUser(User user);
    public Msg login(User user);
    public User selectOne(String username);
    public User updatefile(User user);
    public Msg loginManage(Manage manage);
    public User selectUserById(int id);
    public List<Roomin> selectMyOrder(int id);
    public void upUser(User user);
}

