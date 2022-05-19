package com.example.demo.VO;

public class DemoTestVo {

    private int ver;

    private String mid;


    public int getVer() {
        return ver;
    }

    public void setVer(int ver) {
        this.ver = ver;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }


    @Override
    public String toString() {
        return "DemoTestVo{" +
                "ver=" + ver +
                ", mid='" + mid + '\'' +
                '}';
    }
}
