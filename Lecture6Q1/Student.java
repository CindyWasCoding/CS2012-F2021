package Lecture6Q1;

public class Student extends Person{
	double gpa;
	
	public Student(String name, double gpa) {
		this.name = name;
		this.gpa = gpa;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public void setGPA(double gpa) {
		this.gpa = gpa;
	}
	
	public String toString() {
		return "Student named " + this.name + " has a GPA of " + this.gpa;
	}
	
	public double getGpa() {
		return this.gpa;
	}
}
