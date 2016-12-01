package pro.model;

public class Admin {
    private Integer aId;

    private String aPassword;

    private String aUsername;

    private String aLogintime;

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword == null ? null : aPassword.trim();
    }

    public String getaUsername() {
        return aUsername;
    }

    public void setaUsername(String aUsername) {
        this.aUsername = aUsername == null ? null : aUsername.trim();
    }

    public String getaLogintime() {
        return aLogintime;
    }

    public void setaLogintime(String aLogintime) {
        this.aLogintime = aLogintime == null ? null : aLogintime.trim();
    }
}