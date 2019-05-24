package com.service;

import com.dao.ShopDao;
import com.dao.UserDao;
import com.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodService")
public class GoodServiceImpl implements GoodService {
    @Autowired
    private ShopDao shopDao;
    @Autowired
    private UserDao userDao;
    @Override
    public void upRoom(Room room) {
        shopDao.upRoom(room);
    }

    @Override
    public void upRoomSrc(RoomSrc src) {
        shopDao.upRoomSrc(src);
    }

    @Override
    public List<Room> AllShowRoom() {
        return shopDao.selectAllRoom();
    }

    @Override
    public Room OneRoom(String id) {
        return shopDao.OneRoom(id);
    }

    @Override
    public RoomSrc OneRoomSrc(String id) {
        return shopDao.OneRoomSrc(id);
    }

    @Override
    public void updateRoomNow(Room room) {
        shopDao.updateRoom(room);
    }

    @Override
    public void addroomin(Roomin roomin) {
        shopDao.addroomin(roomin);
    }

    @Override
    public List<Roomin> AllRoomin() {
        return shopDao.AllRoomin();
    }

    @Override
    public Room selectRoom(int rnumber) {
        return shopDao.selectRoom(rnumber);
    }

    @Override
    public Roomin selectRoomin(int id) {
        return shopDao.selectRoomin(id);
    }

    @Override
    public void upNews(News news) {
        shopDao.InsertNewsOne(news);
    }

    @Override
    public List<News> pageNews() {
        int count = shopDao.newsCount();
        if (count <= 6){
            NewsTool newsTool1 = new NewsTool();
            newsTool1.setStart(0);
            newsTool1.setNumber(count);
            return shopDao.pageNews(newsTool1);
        }else {
            NewsTool newsTool1 = new NewsTool();
            newsTool1.setStart(count-6);
            newsTool1.setNumber(6);
            return shopDao.pageNews(newsTool1);
        }
    }

    @Override
    public News oneNews(int id) {
        return shopDao.oneNews(id);
    }

    @Override
    public void addOrders(OrderHistory orderHistory) {
        shopDao.addOrders(orderHistory);
    }

    @Override
    public List<OrderHistory> allOrderHistory() {
        return shopDao.allOrderHistory();
    }

    @Override
    public void addtalk(Talk talk) {
        shopDao.addtalk(talk);
    }

    @Override
    public List<Talk> Alltalk() {
        return shopDao.Alltalk();
    }

    @Override
    public void upflag(int id) {
        shopDao.upflag(id);
    }

    @Override
    public Talk onetalk(int id) {
        return shopDao.onetalk(id);
    }

    @Override
    public void addAnswer(Answer answer) {
        shopDao.upflag(answer.getId());
        shopDao.addAnswer(answer);
    }

    @Override
    public List<Answer> allanswer(int id) {
        return shopDao.allanswer(id);
    }

    @Override
    public List<OrderHistory> oneOrders(int id) {
        return shopDao.oneOrders(id);
    }

    @Override
    public List<Talk> AlltalkManage() {
        return shopDao.AlltalkManage();
    }

    @Override
    public void yespass(int tid, Talk talk) {
        shopDao.insertTalk(talk);
        shopDao.deletetalkmanage(tid);
    }

    @Override
    public Talk selectonetalkmanage(int tid) {
        return shopDao.onetalkmanage(tid);
    }

    @Override
    public void insertTalk(Talk talk) {
        shopDao.insertTalk(talk);
    }

    @Override
    public void delectByTid(int tid) {
        shopDao.deletetalkmanage(tid);
    }

    @Override
    public List<Room> mhppRoom(String mhcx) {
        return shopDao.mhppRoom(mhcx);
    }

    @Override
    public List<Room> free() {
        return shopDao.free();
    }

    @Override
    public List<Roomin> deletereset(int id) {
        shopDao.deletereset(id);
        List<Roomin> roomins = userDao.selectMyOrder(id);
        return roomins;
    }

    @Override
    public List<OrderHistory> historyName(String name) {
        return shopDao.historyName(name);
    }

    @Override
    public List<Roomin> selectOutdate(String date) {
        return shopDao.selectOutdate(date);
    }
}