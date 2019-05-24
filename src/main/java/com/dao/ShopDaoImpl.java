package com.dao;

import com.vo.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("ShopDao")
public class ShopDaoImpl implements ShopDao {
    @Autowired
    private SqlSessionTemplate sqlSession;

    @Override
    public void upRoom(Room room) {
        sqlSession.insert("vo.mapper.addRoom",room);
    }

    @Override
    public void upRoomSrc(RoomSrc src) {
        sqlSession.insert("vo.mapper.addRoomSrc",src);
    }

    @Override
    public List<Room> selectAllRoom() {
        return sqlSession.selectList("vo.mapper.AllRoom");
    }

    @Override
    public Room OneRoom(String id) {
        return sqlSession.selectOne("vo.mapper.OneRoom",id);
    }

    @Override
    public RoomSrc OneRoomSrc(String id) {
        return sqlSession.selectOne("vo.mapper.OneRoomSrc",id);
    }

    @Override
    public void updateRoom(Room room) {
        sqlSession.update("vo.mapper.updateRoomNow",room);
    }

    @Override
    public void addroomin(Roomin roomin) {
        sqlSession.insert("vo.mapper.addroomin",roomin);
    }

    @Override
    public List<Roomin> AllRoomin() {
        return sqlSession.selectList("vo.mapper.AllRoomin");
    }

    @Override
    public Room selectRoom(int rnumber) {
        return sqlSession.selectOne("vo.mapper.selectRoom",rnumber);
    }

    @Override
    public Roomin selectRoomin(int id) {
        return sqlSession.selectOne("vo.mapper.selectRoomin",id);
    }

    @Override
    public void InsertNewsOne(News news) {
        sqlSession.insert("vo.one.addNewsOne",news);
    }

    @Override
    public void InsertNewsTwo(News news) {
        sqlSession.insert("vo.one.addNewsTwo",news);
    }

    @Override
    public void deleteOne(int id) {
        sqlSession.delete("vo.one.deleteOne",id);
    }

    @Override
    public int newsCount() {
        return sqlSession.selectOne("vo.one.newsCount");
    }

    @Override
    public List<News> pageNews(NewsTool newsTool) {
        return sqlSession.selectList("vo.one.pageNews",newsTool);
    }

    @Override
    public News oneNews(int id) {
        return sqlSession.selectOne("vo.one.oneNews",id);
    }

    @Override
    public void addOrders(OrderHistory orderHistory) {
        sqlSession.insert("vo.one.insertNewOrder",orderHistory);
    }

    @Override
    public List<OrderHistory> allOrderHistory() {
        return sqlSession.selectList("vo.one.allOrderHistory");
    }

    @Override
    public void addtalk(Talk talk) {
        sqlSession.insert("vo.one.addtalkmanage",talk);
    }

    @Override
    public List<Talk> Alltalk() {
        return sqlSession.selectList("vo.one.Alltalk");
    }

    @Override
    public void upflag(int id) {
        sqlSession.update("vo.one.updateflag",id);
    }

    @Override
    public Talk onetalk(int tid) {
        return sqlSession.selectOne("vo.one.onetalk",tid);
    }

    @Override
    public void addAnswer(Answer answer) {
        sqlSession.insert("vo.one.addAnswer",answer);
    }

    @Override
    public List<Answer> allanswer(int id) {
        return sqlSession.selectList("vo.one.allanswer",id);
    }

    @Override
    public List<OrderHistory> oneOrders(int id) {
        return sqlSession.selectList("vo.one.oneOrders",id);
    }

    @Override
    public List<Talk> AlltalkManage() {
        return sqlSession.selectList("vo.one.AlltalkManage");
    }

    @Override
    public void deletetalkmanage(int tid) {
        sqlSession.delete("vo.one.deletetalkmanage",tid);
    }

    @Override
    public Talk onetalkmanage(int tid) {
        return sqlSession.selectOne("vo.one.onetalkmanage",tid);
    }

    @Override
    public void insertTalk(Talk talk) {
        sqlSession.insert("vo.one.addtalk",talk);
    }

    @Override
    public List<Room> mhppRoom(String mhcx) {
        return sqlSession.selectList("vo.one.mhppRoom",mhcx);
    }

    @Override
    public List<Room> free() {
        return sqlSession.selectList("vo.one.free");
    }

    @Override
    public void deletereset(int id) {
        sqlSession.delete("vo.one.deletereset",id);
    }

    @Override
    public List<OrderHistory> historyName(String name) {
        return sqlSession.selectList("vo.one.historyName",name);
    }

    @Override
    public List<Roomin> selectOutdate(String date) {
        return sqlSession.selectList("vo.one.selectOutdate",date);
    }
}

