package com.drayy.utils.tools;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGEncodeParam;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

import javax.imageio.ImageIO;
import javax.imageio.ImageReader;
import javax.imageio.stream.ImageInputStream;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;

/**
 * java 压缩图片
 * Created by dream on 2016/8/31.
 */
public class CompressImage {
    public static void main(String[] args) {
        try {
            String s="C:\\Users\\dream\\Desktop\\compress";
            File source = new File(s);
            File outfile =null;

            ImageInputStream iis = null;
            ImageReader reader = ImageIO.getImageReadersByFormatName("JPG").next();
            BufferedImage bi = null;

            File[] files = source.listFiles();
            int i=0;
            for (File f : files) {
                System.out.println(i++);
                iis = ImageIO.createImageInputStream(f);
                reader.setInput(iis, true);
                int scale = 1;
                bi = reader.read(0);
                System.out.println();
                String name = f.getName();

                String filename = (f.getName().split("\\."))[0];

                long streamPosition = iis.getStreamPosition();
                if(streamPosition > 1048579 && streamPosition < 3145728){//大于1M 小于3M
                    scale = 3;
                }else if (streamPosition > 3145728 && streamPosition < 5242880){//大于3 <5 M
                    scale = 3;
                }else if(streamPosition > 5242880){//大于5M
                    scale = 4;
                }
                int old_width = bi.getWidth();
                int old_height = bi.getHeight();
                int new_width = old_width / scale;
                int new_height = old_height / scale;

                outfile = new File("C:\\Users\\dream\\Desktop\\out\\"+filename+".JPG");
                FileOutputStream fos = new FileOutputStream(outfile);

                BufferedImage tag = new BufferedImage(new_width,new_height,BufferedImage.TYPE_INT_RGB);
                tag.getGraphics().drawImage(bi.getScaledInstance(new_width, new_height,  Image.SCALE_SMOOTH), 0,0,null);

                JPEGImageEncoder jpegEncoder = JPEGCodec.createJPEGEncoder(fos);
                JPEGEncodeParam jpegEncodeParam = jpegEncoder.getDefaultJPEGEncodeParam(tag);
                jpegEncodeParam.setDensityUnit(JPEGEncodeParam.DENSITY_UNIT_DOTS_INCH);
                jpegEncodeParam.setXDensity(300);
                jpegEncodeParam.setYDensity(300);
                jpegEncoder.encode(tag, jpegEncodeParam);
            }
        }catch (Exception e){
            System.out.println(e.getStackTrace());
        }
    }
}
