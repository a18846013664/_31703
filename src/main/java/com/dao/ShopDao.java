package com.dao;

import com.vo.*;

import java.util.List;

public interface ShopDao {
    public void upRoom(Room room);
    public void upRoomSrc(RoomSrc src);
    public List<Room> selectAllRoom();
    public Room selectRoom(int rnumber);
    public Room OneRoom(String id);
    public RoomSrc OneRoomSrc(String id);
    public void updateRoom(Room room);
    public void addroomin(Roomin roomin);
    public List<Roomin> AllRoomin();
    public Roomin selectRoomin(int id);
    public void InsertNewsOne(News news);
    public void InsertNewsTwo(News news);
    public void deleteOne(int id);
    public int newsCount();
    public List<News> pageNews(NewsTool newsTool);
    public News oneNews(int id);
    public void addOrders(OrderHistory orderHistory);
    public List<OrderHistory> allOrderHistory();
    public void addtalk(Talk talk);
    public void insertTalk(Talk talk);
    public List<Talk> Alltalk();
    public List<Talk> AlltalkManage();
    public void deletetalkmanage(int tid);
    public Talk onetalkmanage(int tid);
    public void upflag(int id);
    public Talk onetalk(int tid);
    public void addAnswer(Answer answer);
    public List<Answer> allanswer(int id);
    public List<OrderHistory> oneOrders(int id);
    public List<Room> mhppRoom(String mhcx);
    public List<Room> free();
    public void deletereset(int id);
    public List<OrderHistory> historyName(String name);
    public List<Roomin> selectOutdate(String date);

}
