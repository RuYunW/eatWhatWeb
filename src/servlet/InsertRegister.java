package servlet;

import com.wry.dao.StoreDao;
import com.wry.dao.StoreManagerDao;
import com.wry.dao.UsersDao;
import com.wry.domain.Store;
import com.wry.domain.User;
import com.wry.utils.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "InsertRegister",urlPatterns = "/InsertRegister")
public class InsertRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        //搞id
//        if(request.getParameter("bigLoc").equals("二餐")){
//            System.out.println("a !!!!!!!!!!!!!!!!!!");
//            request.getRequestDispatcher("top_manager_page/test.jsp");
//        }
        if(request.getParameter("bigLoc")!=null && request.getParameter("smallLoc")!=null) {

            String store_id = "";
            String bigLoc=(String)request.getParameter("bigLoc");
            String smallLoc = (String)request.getParameter("smallLoc");
            String storeLoc="";
            if (bigLoc.equals("01")) {
                store_id += "01";
                storeLoc+="一餐";
                if (smallLoc.equals("1")){
                    store_id+="0101";
                    storeLoc+="一楼";
                }
                else if(smallLoc.equals("2")){
                    store_id+="0201";
                    storeLoc+="二楼北";
                }
                else if(smallLoc.equals("3")){
                    store_id+="0202";
                    storeLoc+="二楼南";
                }
                else if(smallLoc.equals("4")){
                    store_id+="0301";
                    storeLoc+="三楼北";
                }
                else if(smallLoc.equals("5")){
                    store_id+="0302";
                    storeLoc+="三楼南";
                }
                else {
                    store_id+="0000";
                    storeLoc+="其他";
                }
            } else if (bigLoc.equals("02")) {
                store_id += "02";
                storeLoc+="二餐";
                if(smallLoc.equals("1")){
                    store_id+="0101";
                    storeLoc+="一楼";
                }
                else if(smallLoc.equals("2")){
                    store_id+="0201";
                    storeLoc+="二楼";
                }
                else if(smallLoc.equals("3")){
                    store_id+="0301";
                    storeLoc+="三楼";
                }
                else {
                    store_id+="0000";
                    storeLoc+="其他";
                }
            } else if (bigLoc.equals("A")) {
                store_id += "03";
                storeLoc+="A区餐厅";
                if(smallLoc.equals("1")) {
                    store_id+="0101";
                    storeLoc+="一楼";
                }
                else {
                    store_id+="0000";
                    storeLoc+="其他";
                }
            } else {
                store_id += "04";
                storeLoc+="商业街";
                if(smallLoc.equals("1")){
                    store_id+="0001";
                    storeLoc+="银座商业街";
                }
                else if(smallLoc.equals("2")){
                    store_id+="0002";
                    storeLoc+="数娱广场";
                }
                else if(smallLoc.equals("3")){
                    store_id+="0003";
                    storeLoc+="蜜桃百货";
                }
                else if(smallLoc.equals("4")){
                    store_id+="0004";
                    storeLoc+="其他";
                }
                else {
                    store_id+="0000";
                    storeLoc+="其他";
                }
            }
            UsersDao usersDao = new UsersDao();
            System.out.println(store_id);
            //自动编码位
            String add_id = ""+(usersDao.findAllID(store_id+"___").size()+1);//不允许为0
            System.out.println(add_id);

            //补位
            int n = add_id.length();
            for(int i=0;i<3-n;i++){
                add_id="0"+add_id;
            }
            //完整id
            store_id+=add_id;
            System.out.println("store_id_servlet:"+store_id);

            session.setAttribute("storeID",store_id);
            session.setAttribute("storeName",request.getParameter("store_name"));
            session.setAttribute("storeLoc",storeLoc);
            session.setAttribute("username",session.getAttribute("register_username"));

            //set对象变量
            User user = new User();

            user.setId(store_id);
            System.out.println("servlet get userID:"+user.getId());
            user.setManager_store_id(store_id);
            System.out.println("servlet get storeID:"+user.getManager_store_id());
            user.setUsername((String)session.getAttribute("register_username"));
            System.out.println("servlet get username:"+user.getUsername());
            String passMD5 = MD5.getMD5String((String)session.getAttribute("register_password"));
            user.setPassword(passMD5);
            System.out.println("servlet get userPassWD:"+user.getPassword());
            user.setEmail((String) session.getAttribute("manager_email"));
            System.out.println("servlet get email:"+user.getEmail());


            //用户插入数据到数据库
            usersDao.insert(user);

//            request.getRequestDispatcher("/InsertStore").forward(request,response);
            //店铺插入到数据库
            Store store = new Store();
            store.setStoreName((String)session.getAttribute("storeName"));
            System.out.println("obj_name:"+store.getStoreName());
            System.out.println("par_name"+request.getParameter("store_name"));
            System.out.println("session_name："+(String)session.getAttribute("storeName"));
            store.setStoreLoc((String)session.getAttribute("storeLoc"));
            store.setStoreId((String)session.getAttribute("storeID"));

            StoreDao storeDao = new StoreDao();
            storeDao.insert(store);
            request.getRequestDispatcher("store_manager_page/store_manager_page.jsp").forward(request,response);

        }else {
            session.setAttribute("infoResult","请填写完整信息");
            request.getRequestDispatcher("verification/fillDetailInfo.jsp").forward(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
