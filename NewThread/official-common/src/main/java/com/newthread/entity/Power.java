package com.newthread.entity;

import java.io.Serializable;

public class Power implements Serializable {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column Power.power_number
     *
     * @mbggenerated
     */
    private String powerNumber;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column Power.power_sid
     *
     * @mbggenerated
     */
    private Integer powerSid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column Power.power_name
     *
     * @mbggenerated
     */
    private String powerName;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Power
     *
     * @mbggenerated
     */
    public Power(String powerNumber, Integer powerSid, String powerName) {
        this.powerNumber = powerNumber;
        this.powerSid = powerSid;
        this.powerName = powerName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table Power
     *
     * @mbggenerated
     */
    public Power() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column Power.power_number
     *
     * @return the value of Power.power_number
     *
     * @mbggenerated
     */
    public String getPowerNumber() {
        return powerNumber;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column Power.power_number
     *
     * @param powerNumber the value for Power.power_number
     *
     * @mbggenerated
     */
    public void setPowerNumber(String powerNumber) {
        this.powerNumber = powerNumber == null ? null : powerNumber.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column Power.power_sid
     *
     * @return the value of Power.power_sid
     *
     * @mbggenerated
     */
    public Integer getPowerSid() {
        return powerSid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column Power.power_sid
     *
     * @param powerSid the value for Power.power_sid
     *
     * @mbggenerated
     */
    public void setPowerSid(Integer powerSid) {
        this.powerSid = powerSid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column Power.power_name
     *
     * @return the value of Power.power_name
     *
     * @mbggenerated
     */
    public String getPowerName() {
        return powerName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column Power.power_name
     *
     * @param powerName the value for Power.power_name
     *
     * @mbggenerated
     */
    public void setPowerName(String powerName) {
        this.powerName = powerName == null ? null : powerName.trim();
    }
}