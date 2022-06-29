/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Kuyet
 */
public class Datetime {
    private String dateName;
    private String timetableDate;

    public Datetime() {
    }

    public Datetime(String dateName, String timetableDate) {
        this.dateName = dateName;
        this.timetableDate = timetableDate;
    }

    public String getDateName() {
        return dateName;
    }

    public void setDateName(String dateName) {
        this.dateName = dateName;
    }

    public String getTimetableDate() {
        return timetableDate;
    }

    public void setTimetableDate(String timetableDate) {
        this.timetableDate = timetableDate;
    }
    
}
