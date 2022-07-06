/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Kuyet
 */
public class Schedule {
    public String subject;
    public String className;
    public int slot;
    public String day;
    public int attend;


    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getSubject() {
        return subject;
    }

    public String getClassName() {
        return className;
    }

    public int getSlot() {
        return slot;
    }

    public String getDay() {
        return day;
    }

    public int getAttend() {
        return attend;
    }


    public void setClassName(String className) {
        this.className = className;
    }


    public void setSlot(int slot) {
        this.slot = slot;
    }


    public void setDay(String day) {
        this.day = day;
    }

    public void setAttend(int attend) {
        this.attend = attend;
    }

    @Override
    public String toString() {
        return "Schedule{" + "subject=" + subject + ", className=" + className + ", slot=" + slot + ", day=" + day + ", attend=" + attend + '}';
    }

   

    
}
