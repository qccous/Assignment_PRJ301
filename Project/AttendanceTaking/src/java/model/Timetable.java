/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;


public class Timetable {
    private int timetableId;
    private String subjectId;
    private int classId;
    private int slotId;
    private String timetableDate;
    private boolean timetableStatus;

    public Timetable() {
    }

    public Timetable(int timetableId, String subjectId, int classId, int slotId, String timetableDate, boolean timetableStatus) {
        this.timetableId = timetableId;
        this.subjectId = subjectId;
        this.classId = classId;
        this.slotId = slotId;
        this.timetableDate = timetableDate;
        this.timetableStatus = timetableStatus;
    }

    public int getTimetableId() {
        return timetableId;
    }

    public void setTimetableId(int timetableId) {
        this.timetableId = timetableId;
    }

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public int getSlotId() {
        return slotId;
    }

    public void setSlotId(int slotId) {
        this.slotId = slotId;
    }

    public String getTimetableDate() {
        return timetableDate;
    }

    public void setTimetableDate(String timetableDate) {
        this.timetableDate = timetableDate;
    }

    public boolean isTimetableStatus() {
        return timetableStatus;
    }

    public void setTimetableStatus(boolean timetableStatus) {
        this.timetableStatus = timetableStatus;
    }
    
    
    
}
