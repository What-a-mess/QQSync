package cn.edu.csu.dyp.util.config;

public class DataBasePojo {
    private String driver;
    private String host;
    private String port;
    private String dataBaseName;
    private String username;
    private String password;

    public DataBasePojo(String driver, String host, String port, String dataBaseName, String username, String password) {
        this.driver = driver;
        this.host = host;
        this.port = port;
        this.dataBaseName = dataBaseName;
        this.username = username;
        this.password = password;
    }

    public String getDriver() {
        return driver;
    }

    public String getHost() {
        return host;
    }

    public String getPort() {
        return port;
    }

    public String getDataBaseName() {
        return dataBaseName;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }
}