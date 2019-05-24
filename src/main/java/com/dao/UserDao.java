package com.dao;



import com.vo.Manage;
import com.vo.Roomin;
import com.vo.User;

import java.util.List;

public interface UserDao {
   public void addNewUser(User user);
   public List<User> selectByName(String username);
   public User selectOne(String username);
   public void updatefile(User user);
   public void upUser(User user);
   public User selectById(User user);
   public List<Manage> selectManage(String name);
   public User selectUserById(int id);
   public List<Roomin> selectMyOrder(int id);
}
