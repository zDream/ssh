package com.drayy.test.controller;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by dream on 2016/5/25.
 */
public class Demo {
    public static void main(String [] args) throws ParseException {
//        Date nowTime = new Date();
//        SimpleDateFormat dateFormatTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String time = dateFormatTime.format( nowTime );
//        System.out.println(time);
//
//        Date orderDate = new Date();
//        SimpleDateFormat dateFormatOrderTime = new SimpleDateFormat("yyyyMMddHHmmss");
//        String orderTime = dateFormatOrderTime.format( nowTime );
//        System.out.println(orderTime);
//
//        String t1="2016-05-25 23:26:52";//前
//        String t2="20160525232655";//后
//
//        DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//        Date parse = df.parse(t1);
//        Date parse2 = dateFormatOrderTime.parse(t2);
//
//
//        System.out.println(parse.before(orderDate));


        try {
            String url1="http://file.api.weixin.qq.com/cgi-bin/media/get?access_token=u7LtW5QPapJlxMTc9KeFFXLxxN-j8JQvFXgAwCogeRVWmPO8B3ri0_YDVZV_KKihCmuWwy1BUlZKK2YrKFOZLBHPizeaLmTmBmB20p3D3TwnYes5Sszk4o9ywT9_UCiuYSZeADAMGN&media_id=HCp9tE7iZgPyTcxjP64fC-W2g3UqlaNTyYAJIFN4J1UNdvhw7IQbY5IjZkD_2DD7";
            // 构造URL
            URL url = new URL(url1);
            // 打开连接
            URLConnection con = url.openConnection();
            //设置请求超时为5s
            con.setConnectTimeout(5*1000);
            // 输入流
            InputStream is = con.getInputStream();

            // 1K的数据缓冲
            byte[] bs = new byte[1024];
            // 读取到的数据长度
            int len;
            // 输出的文件流
            File sf=new File("C:\\alidata");
            if(!sf.exists()){
                sf.mkdirs();
            }
            OutputStream os = new FileOutputStream(sf.getPath()+"\\"+"test.jpg");
            // 开始读取
            while ((len = is.read(bs)) != -1) {
                os.write(bs, 0, len);
            }
            // 完毕，关闭所有链接
            os.close();
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

}
