package com.example.internet.servlets;

import com.example.internet.database.Const;
import com.example.internet.database.DatabaseHabdler;
import com.example.internet.items.AdminInfo;
import com.example.internet.items.UserInfo;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public class CabinetServlet extends HttpServlet {
    private static AdminInfo adminInfo;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getAttribute("admin") != null){
            adminInfo = (AdminInfo) req.getAttribute("admin");
        }
        req.setAttribute("users", getUsersFromDb());
        req.setAttribute("admin", adminInfo);
        req.getRequestDispatcher("WEB-INF/view/cabinet.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            DatabaseHabdler.getInstance().removeFromDb(req.getParameter("firstname"), req.getParameter("secondname"));
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        doGet(req, resp);
    }

    private Set<UserInfo> getUsersFromDb(){
        Set<UserInfo> userInfoList = new LinkedHashSet<>();
        DatabaseHabdler db = DatabaseHabdler.getInstance();
        ResultSet resultSet = null;
        try {
            resultSet = db.getFromDb(Const.USER_TABLE);
            while (resultSet.next()){
                userInfoList.add(new UserInfo(resultSet.getString(1), resultSet.getString(2),
                        resultSet.getString(3), resultSet.getString(4),
                        resultSet.getString(5), resultSet.getString(6)));
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return userInfoList;
    }
}
