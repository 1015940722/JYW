package pro.model;

public class Things {
    private Integer tId;

    private String tName;

    private String tPrice;

    private String tPic;

    private String tTel;

    private String tUName;

    private String tAddr;

    private String tClass;

    private String tType;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    public String gettPrice() {
        return tPrice;
    }

    public void settPrice(String tPrice) {
        this.tPrice = tPrice == null ? null : tPrice.trim();
    }

    public String gettPic() {
        return tPic;
    }

    public void settPic(String tPic) {
        this.tPic = tPic == null ? null : tPic.trim();
    }

    public String gettTel() {
        return tTel;
    }

    public void settTel(String tTel) {
        this.tTel = tTel == null ? null : tTel.trim();
    }

    public String gettUName() {
        return tUName;
    }

    public void settUName(String tUName) {
        this.tUName = tUName == null ? null : tUName.trim();
    }

    public String gettAddr() {
        return tAddr;
    }

    public void settAddr(String tAddr) {
        this.tAddr = tAddr == null ? null : tAddr.trim();
    }

    public String gettClass() {
        return tClass;
    }

    public void settClass(String tClass) {
        this.tClass = tClass == null ? null : tClass.trim();
    }

    public String gettType() {
        return tType;
    }

    public void settType(String tType) {
        this.tType = tType == null ? null : tType.trim();
    }
}