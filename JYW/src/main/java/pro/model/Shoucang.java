package pro.model;

public class Shoucang {
    private Integer sId;

    private Integer sAId;

    private String shoucangcol;

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getsAId() {
        return sAId;
    }

    public void setsAId(Integer sAId) {
        this.sAId = sAId;
    }

    public String getShoucangcol() {
        return shoucangcol;
    }

    public void setShoucangcol(String shoucangcol) {
        this.shoucangcol = shoucangcol == null ? null : shoucangcol.trim();
    }
}