package com.service;

import com.vo.*;

import java.util.List;

public interface GoodService {
    public void upRoom(Room room);
    public void upRoomSrc(RoomSrc src);
    public List<Room> AllShowRoom();
    public Room OneRoom(String id);
    public RoomSrc OneRoomSrc(String id);
    public void updateRoomNow(Room room);
    public void addroomin(Roomin roomin);
    public List<Roomin> AllRoomin();
    public Room selectRoom(int rnumber);
    public Roomin selectRoomin(int id);
    public void upNews(News news);
    public List<News> pageNews();
    public News oneNews(int id);
    public void addOrders(OrderHistory orderHistory);
    public List<OrderHistory> allOrderHistory();
    public void addtalk(Talk talk);
    public List<Talk> Alltalk();
    public void upflag(int id);
    public Talk onetalk(int id);
    public void addAnswer(Answer answer);
    public List<Answer> allanswer(int id);
    public List<OrderHistory> oneOrders(int id);
    public List<Talk> AlltalkManage();
    public Talk selectonetalkmanage(int tid);
    public void yespass(int tid,Talk talk);
    public void insertTalk(Talk talk);
    public void delectByTid(int tid);
    public List<Room> mhppRoom(String mhcx);
    public List<Room> free();
    public List<Roomin> deletereset(int id);
    public List<OrderHistory> historyName(String name);
    public List<Roomin> selectOutdate(String date);

}
