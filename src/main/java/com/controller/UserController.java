package com.controller;

import com.service.GoodService;
import com.service.UserService;

import com.vo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.jws.soap.SOAPBinding;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.*;

@SessionAttributes(value = {"user"},types = {String.class})
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private GoodService goodService;
    final String mains = "user/main";
    final String web = "web";
    final String load = "load";
    final String mana = "mainSystem/manage";
    final String hshs = "mainSystem/home";
    final String orderMain = "user/userShow";
    final String roomshow = "user/roomshow";
    final String usermanage = "mainSystem/users";
    final String userss = "user/userss";
    final String news = "user/news";
    final String myorder = "user/myOrder";
    final String history = "mainSystem/history";
    final String talkers = "mainSystem/talk";
    final String showAnswer = "user/showAnswer";
    final String showHave = "user/showHave";
    final String outdate = "mainSystem/date";
    final String talkManage = "mainSystem/talkfilter";
    @RequestMapping(value = "/registerSuccess",method = RequestMethod.POST)
    public String testFileUpload(
            @RequestParam(value = "username") String username,
            @RequestParam(value = "password") String password,
            @RequestParam(value = "card") long card,
            @RequestParam(value = "age") int age,
            @RequestParam(value = "sex") String sex,
            @RequestParam(value = "phone") long phone,
            @RequestParam("file") MultipartFile file,
            HttpSession session)throws IOException {
        if(file.getSize()>0&&file!=null){
            String originalFilename = file.getOriginalFilename();
            String dirPath = session.getServletContext().getRealPath("/") + "resource/image/";
            // String dirPath="C:\\Users\\17149\\IdeaProjects\\ssm_app\\src\\main\\webapp\\resource\\image\\";
            File file1 = new File(dirPath);
            if (!file1.exists()) {
                file1.mkdirs();
            }
            String newFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
            User user = new User();
            user.setUsername(username);
            user.setPassword(password);
            user.setFile(newFilename);
            user.setSex(sex);
            user.setPhone(phone);
            user.setCard(card);
            user.setAge(age);
            try {
                file.transferTo(new File(dirPath+newFilename));
                userService.addNewUser(user);
                List<News> news = goodService.pageNews();
                session.setAttribute("news",news);
                session.setAttribute("jsp",user);
            }catch (Exception e){
                e.printStackTrace();
                return web;
            }
        }

        return web;
    }
    @RequestMapping(value = "/loginSuccess",method = RequestMethod.POST)
    public String loginSuccess(@RequestParam(value = "username") String username, @RequestParam(value = "password") String password, HttpServletRequest request, HttpSession session){
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        Msg result = userService.login(user);
        if(result.getMsgCode() == 0){
            User users = userService.selectOne(user.getUsername());
            session.setAttribute("jsp",users);
            List<News> newss = goodService.pageNews();
            session.setAttribute("news",newss);
            List<Talk> talks = goodService.Alltalk();
            session.setAttribute("talk",talks);
            List<OrderHistory> orderHistories = goodService.oneOrders(users.getId());
            session.setAttribute("orders",orderHistories);
            return web;
        }
        else{
            if(result.getMsgCode() == 1){
                request.setAttribute("errPass", result.getMsg());
            }else{
                request.setAttribute("errUser", result.getMsg());
            }
            return load;
        }
    }
    @RequestMapping(value = "/a/updatefile",method = RequestMethod.POST)
    public String updatefile(@RequestParam("file") MultipartFile file,
                             HttpSession session){
        if(file.getSize()>0&&file!=null){
            String originalFilename = file.getOriginalFilename();
            String dirPath = session.getServletContext().getRealPath("/") + "resource/image/";
            File file1 = new File(dirPath);
            if (!file1.exists()) {
                file1.mkdirs();
            }
            String newFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
            try {
                User u = (User) session.getAttribute("jsp");
                User user1 = new User();
                user1.setId(u.getId());
                user1.setFile(newFilename);
                file.transferTo(new File(dirPath+newFilename));
                User user = userService.updatefile(user1);
                session.setAttribute("jsp",user);
            }catch (Exception e){
                e.printStackTrace();
                return web;
            }
        }
        return mains;
    }
    @RequestMapping(value = "/loginManage",method = RequestMethod.POST)
    public String loginManage(@RequestParam(value = "username") String username,
                              @RequestParam(value = "password") String password,
                              HttpServletRequest request,
                              HttpSession session){
        Manage manage = new Manage();
        manage.setUsername(username);
        manage.setPassword(password);
        Msg result = userService.loginManage(manage);
        if(result.getMsgCode() == 0){
            List<Talk> talkManage = goodService.AlltalkManage();
            List<Room> rooms = goodService.AllShowRoom();
            List<Roomin> roomins = goodService.AllRoomin();
            List<OrderHistory> orderHistories = goodService.allOrderHistory();
            List<Talk> talks = goodService.Alltalk();
            session.setAttribute("mana",manage);
            session.setAttribute("talk",talks);
            session.setAttribute("history",orderHistories);
            session.setAttribute("roomin",roomins);
            session.setAttribute("room",rooms);
            session.setAttribute("manage",manage);
            session.setAttribute("talkManage",talkManage);
            return mana;
        }
        else{
            if(result.getMsgCode() == 1){
                request.setAttribute("errPasss", result.getMsg());
            }else{
                request.setAttribute("errUserr", result.getMsg());
            }
            return load;
        }
    }
    @RequestMapping(value = "/b/upRoom",method = RequestMethod.POST)
    public void shopUp(@RequestParam("files") MultipartFile []file,
                         @RequestParam("rnumber") int rnumber,
                         @RequestParam("rvarious") String rvarious,
                         @RequestParam("rprice") double rprice,
                         @RequestParam("rintro") String rintro,
                         HttpSession session,
                         HttpServletResponse response){
        Room room = new Room();
        System.out.println("uid========================================="+rprice);
        String id = UUID.randomUUID().toString();
        room.setId(id);
        room.setRnumber(rnumber);
        room.setRprice(rprice);
        room.setRintro(rintro);
        room.setRvarious(rvarious);
        String fileName = "";
        if(file.length>0&&file!=null){
            System.out.println("进入我这里");
            for (int i = 0 ; i < file.length ; i++){
                String originalFilename = file[i].getOriginalFilename();
                String dirPath = session.getServletContext().getRealPath("/") + "uploaddir/";
                File file1 = new File(dirPath);
                if (!file1.exists()) {
                    file1.mkdirs();
                }
                String newFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
                if (i == 0){
                    room.setRfiles(newFilename);
                }
                fileName = fileName + newFilename+"/";
                System.out.println("文件名"+newFilename);
                try {
                    file[i].transferTo(new File(dirPath+newFilename));
                }catch (Exception e){
                    e.printStackTrace();
                }
            }

            goodService.upRoom(room);
            RoomSrc roomSrc = new RoomSrc();
            roomSrc.setId(id);
            roomSrc.setRoomfiles(fileName);
            goodService.upRoomSrc(roomSrc);
            List<Room> rooms = goodService.AllShowRoom();
            session.setAttribute("room",rooms);
        }
        try {
            response.sendRedirect("/view/jsp/mainSystem/manage.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping(value = "/a/order",method = RequestMethod.GET)
    public String order(HttpSession session){
        List<Room> rooms = goodService.AllShowRoom();
        session.setAttribute("room",rooms);
        return orderMain;
    }
    @RequestMapping("/a/show")
    public String roomShow(@RequestParam("id") String id,HttpSession session){
        Room room = goodService.OneRoom(id);
        RoomSrc roomSrc = goodService.OneRoomSrc(id);
        String[] a = roomSrc.getRoomfiles().split("/");
        System.out.println("=================================="+a.length);
        List<String> OneRoomSrc = new ArrayList<String>();
        for (int i = 0 ; i < a.length ; i++){
            OneRoomSrc.add(a[i]);
        }
        session.setAttribute("oneRoom",room);
        session.setAttribute("OneRoomSrc",OneRoomSrc);
        return roomshow;
    }

@RequestMapping(value = "/a/yesOrder",method = RequestMethod.POST)
public String yesOrder(@RequestParam("id") String id,
                       @RequestParam("userid") int userid,
                       @RequestParam("rnumber") int rnumber,
                       @RequestParam("outday") int outday,
                       HttpSession session){
        Room room = new Room();
        room.setId(id);
        room.setRnow(userid);
        User user = (User) session.getAttribute("jsp");
        Roomin roomin = new Roomin();
        roomin.setId(user.getId());
        roomin.setUsername(user.getUsername());
        roomin.setPassword(user.getPassword());
        roomin.setFile(user.getFile());
        roomin.setAge(user.getAge());
        roomin.setSex(user.getSex());
        roomin.setPhone(user.getPhone());
        roomin.setCard(user.getCard());
        roomin.setRnumber(rnumber);
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
        roomin.setDate(dateFormat.format(date));
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(calendar.DATE,outday);
        date = calendar.getTime();
        roomin.setOutdate(dateFormat.format(date));
        goodService.addroomin(roomin);
        OrderHistory orderHistory = new OrderHistory();
        orderHistory.setId(user.getId());
        orderHistory.setUsername(user.getUsername());
        orderHistory.setFile(user.getFile());
        orderHistory.setAge(user.getAge());
        orderHistory.setSex(user.getSex());
        orderHistory.setPhone(user.getPhone());
        orderHistory.setCard(user.getCard());
        orderHistory.setRnumber(rnumber);
        orderHistory.setDate(dateFormat.format(date));
        goodService.addOrders(orderHistory);
        List<Room> rooms = goodService.AllShowRoom();
        List<Roomin> roomins = goodService.AllRoomin();
        session.setAttribute("room",rooms);
        session.setAttribute("roomin",roomins);
        goodService.updateRoomNow(room);
    return web;
}
@RequestMapping(value = "/b/showPage",method = RequestMethod.GET)
public String showPage(@RequestParam("id") int id,
                       @RequestParam("rnumber") int rnumber,
                       HttpSession session){
        Roomin roomin = goodService.selectRoomin(id);
        User user = userService.selectUserById(id);
        Room room = goodService.selectRoom(rnumber);
        session.setAttribute("userManage",user);
        session.setAttribute("roomManage",room);
        session.setAttribute("roominManage",roomin);
        return usermanage;
}
    @RequestMapping(value = "/b/showPageUser",method = RequestMethod.GET)
    public String showPageUser(@RequestParam("id") int id,
                           @RequestParam("rnow") int rnow,
                           HttpSession session){

        Room room = goodService.selectRoom(id);
        User user = userService.selectUserById(rnow);
        session.setAttribute("roomManage",room);
        session.setAttribute("userManage",user);
        return usermanage;
    }
    @RequestMapping(value = "/a/showPage",method = RequestMethod.GET)
    public String showPages(@RequestParam("id") int id,
                           @RequestParam("rnumber") int rnumber,
                           HttpSession session){
        Roomin roomin = goodService.selectRoomin(rnumber);
        User user = userService.selectUserById(id);
        Room room = goodService.selectRoom(rnumber);
        session.setAttribute("userManage",user);
        session.setAttribute("roomManage",room);
        session.setAttribute("roominManage",roomin);
        return userss;
    }
@RequestMapping(value = "/b/showHistory",method = RequestMethod.GET)
public String showhistory(@RequestParam("id") int id,
                          @RequestParam("rnumber") int rnumber,
                          HttpSession session){
    User user = userService.selectUserById(id);
    Room room = goodService.selectRoom(rnumber);
    session.setAttribute("Umanage",user);
    session.setAttribute("Rmanage",room);
    return history;

}
@RequestMapping(value = "/b/upNews",method = RequestMethod.POST)
public String upNews(@RequestParam("newsname") String newsname,
                     @RequestParam("newsin") String newsin,
                     @RequestParam("newsfile") MultipartFile file,
                     HttpSession session){
    if(file.getSize()>0&&file!=null){
        String originalFilename = file.getOriginalFilename();
        String dirPath = session.getServletContext().getRealPath("/") + "resource/css/";
        // String dirPath="C:\\Users\\17149\\IdeaProjects\\ssm_app\\src\\main\\webapp\\resource\\image\\";
        File file1 = new File(dirPath);
        if (!file1.exists()) {
            file1.mkdirs();
        }
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
        String newFilename = UUID.randomUUID()+originalFilename.substring(originalFilename.lastIndexOf("."));
        News news = new News();
        news.setNewsname(newsname);
        news.setNewsin(newsin);
        news.setFile(newFilename);
        news.setDate(dateFormat.format(date));
        try {
            file.transferTo(new File(dirPath+newFilename));
            goodService.upNews(news);
            List<News> newss = goodService.pageNews();
            session.setAttribute("news",newss);
        }catch (Exception e){
            e.printStackTrace();
            return web;
        }
    }
        return mana;
    }
@RequestMapping(value = "/a/showNews",method = RequestMethod.GET)
public String oneNews(@RequestParam("id") int id,
                      HttpSession session){
        News aactionNews = goodService.oneNews(id);
        session.setAttribute("newsss",aactionNews);
        List<News> newss = goodService.pageNews();
        session.setAttribute("news",newss);
        return news;
}
@RequestMapping(value = "/a/myorder",method = RequestMethod.GET)
public String myorder(HttpSession session){
        User user = (User)session.getAttribute("jsp");
        List<Roomin> roomins = userService.selectMyOrder(user.getId());
        session.setAttribute("myOrder",roomins);
        return myorder;
}
@RequestMapping(value = "/a/upUser",method = RequestMethod.POST)
public String upUser(@RequestParam("password")String password,
                     @RequestParam("sex")String sex,
                     @RequestParam("age")Integer age,
                     @RequestParam("phone")long phone,
                     HttpSession session){
    User user = (User) session.getAttribute("jsp");
    User user2 = userService.selectOne(user.getUsername());
    User user1 = new User();
    user1.setId(user2.getId());
    user1.setPassword(password);
    user1.setSex(sex);
    user1.setAge(age);
    user1.setPhone(phone);
    userService.upUser(user1);
    User user3 = userService.selectOne(user.getUsername());
    session.setAttribute("jsp",user3);
    return web;
}
@RequestMapping(value = "/a/uptalk")
public String uptalk(@RequestParam("talk")String talk,HttpSession session){
    User user = (User) session.getAttribute("jsp");
    User user1 = userService.selectOne(user.getUsername());
    Date date = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
    Talk talk1 = new Talk();
    talk1.setId(user.getId());
    talk1.setUsername(user.getUsername());
    talk1.setText(talk);
    talk1.setData(dateFormat.format(date));
    talk1.setFile(user.getFile());
    goodService.addtalk(talk1);
    List<Talk> talkManage = goodService.AlltalkManage();
    session.setAttribute("talkManage",talkManage);
    List<Talk> talks = goodService.Alltalk();
    session.setAttribute("talk",talks);
    return web;
}
@RequestMapping("/b/answer")
public String talk(@RequestParam("id") int id,HttpSession session){
        Talk talk = goodService.onetalk(id);
        session.setAttribute("talker",talk);
        return talkers;
}
@RequestMapping("/b/text")
public String text(@RequestParam("id") int id,@RequestParam("text") String text){
    Date date = new Date();
    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd:hh:mm:ss");
    Answer answer = new Answer();
    answer.setId(id);
    answer.setText(text);
    answer.setData(dateFormat.format(date));
    goodService.addAnswer(answer);
    return mana;
}
@RequestMapping("/a/showAnswer")
public String showAnswer(@RequestParam("id") int id,HttpSession session){
    List<Answer> answers = goodService.allanswer(id);
    session.setAttribute("answer",answers);
    return showAnswer;
}
@RequestMapping(value = "/b/yes",method = RequestMethod.GET)
public void yes(@RequestParam("tid") int tid,HttpServletResponse response,HttpSession session){
        Talk talk = goodService.selectonetalkmanage(tid);
        goodService.yespass(tid,talk);
        List<Talk> talkList = goodService.AlltalkManage();
        List<Talk> talks = goodService.Alltalk();
        session.setAttribute("talkManage",talkList);
        session.setAttribute("talk",talks);

        try {
            response.sendRedirect("/view/jsp/mainSystem/talkfilter.jsp");
        }catch (Exception e){
            e.printStackTrace();
        }
}
@RequestMapping("/b/no")
public void no(@RequestParam("id") int tid,HttpSession session,HttpServletResponse response){
        goodService.delectByTid(tid);
        List<Talk> talkList = goodService.AlltalkManage();
        List<Talk> talks = goodService.Alltalk();
        session.setAttribute("talkManage",talkList);
        session.setAttribute("talk",talks);
    try {
        response.sendRedirect("/view/jsp/mainSystem/talkfilter.jsp");
    }catch (Exception e){
        e.printStackTrace();
    }
}
@RequestMapping("/a/showHave")
public String showHave(@RequestParam("id") int id,
                       @RequestParam("tid") String tid,
                       HttpSession session){

    RoomSrc roomSrc = goodService.OneRoomSrc(tid);
    String[] a = roomSrc.getRoomfiles().split("/");
    System.out.println("=================================="+a.length);
    List<String> OneRoomSrc = new ArrayList<String>();
    for (int i = 0 ; i < a.length ; i++){
        OneRoomSrc.add(a[i]);
    }
        session.setAttribute("OneRoomSrc",OneRoomSrc);
        Roomin roomin = goodService.selectRoomin(id);
        session.setAttribute("roominas",roomin);
        return showHave;
}
@RequestMapping("/a/mhppRoom")
public String mhppRoom(@RequestParam("rintro") String rintro,HttpSession session){
    List<Room> rooms = goodService.mhppRoom(rintro);
    session.setAttribute("room",rooms);
    return orderMain;
}
@RequestMapping("/a/free")
public String frees(HttpSession session){
    List<Room> rooms = goodService.free();
    session.setAttribute("room",rooms);
    return orderMain;
}
@RequestMapping("/a/reset")
public String reset(@RequestParam("id") int id,
                    @RequestParam("rnumber") String rnumber,
                    HttpSession session){
        Room room = new Room();
        room.setRnow(0);
        room.setId(rnumber);
        goodService.updateRoomNow(room);
        List<Roomin> roomins = goodService.deletereset(id);
        List<Room> rooms = goodService.AllShowRoom();
        session.setAttribute("room",rooms);
        session.setAttribute("myOrder",roomins);
        return web;
}
@RequestMapping("/b/reset")
public String rootreset(@RequestParam("id") int id,
                        @RequestParam("rnumber") String rnumber,
                        HttpSession session){

        List<Roomin> roominss = goodService.AllRoomin();
        Room room = new Room();
        room.setRnow(0);
        room.setId(rnumber);
        goodService.updateRoomNow(room);
        List<Roomin> roomins = goodService.deletereset(id);
        List<Room> rooms = goodService.AllShowRoom();
        session.setAttribute("room",rooms);
        session.setAttribute("myOrder",roomins);
        session.setAttribute("roomin",roominss);
        return mana;
    }

@RequestMapping(value = "/b/ssss",method = RequestMethod.POST)
public String  historyName(@RequestParam("username") String username,
                                    HttpSession session){
        List<OrderHistory> list = goodService.historyName(username);
        session.setAttribute("historylist",list);
        return hshs;
    }
@RequestMapping("/b/outdate")
public String outdate(@RequestParam("outdate") String out,HttpSession session){

        List<Roomin> roomins = goodService.selectOutdate(out);
        session.setAttribute("outdate",roomins);
        return outdate;
}

}
