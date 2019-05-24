package com.dao;

import com.vo.Manage;
import com.vo.Roomin;
import com.vo.User;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public void addNewUser(User user) {
        sqlSession.insert("vo.mapper.addNewUser",user);
    }

    @Override
    public List<User> selectByName(String username) {
        return sqlSession.selectList("vo.mapper.selectByName",username);
    }

    @Override
    public User selectOne(String username) {
        return sqlSession.selectOne("vo.mapper.selectByName",username);
    }

    @Override
    public void updatefile(User user) {
        sqlSession.update("vo.mapper.updatefile",user);
    }

    @Override
    public User selectById(User user) {
        return sqlSession.selectOne("vo.mapper.selectById",user);
    }

    @Override
    public List<Manage> selectManage(String name) {
        return sqlSession.selectList("vo.mapper.selectManage",name);
    }

    @Override
    public User selectUserById(int id) {
        return sqlSession.selectOne("vo.mapper.selectById",id);
    }

    @Override
    public List<Roomin> selectMyOrder(int id) {
        return sqlSession.selectList("vo.mapper.selectMyOrder",id);
    }

    @Override
    public void upUser(User user) {
        sqlSession.update("vo.mapper.upUser",user);
    }
}
