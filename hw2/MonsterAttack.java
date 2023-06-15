package hw2;

import java.util.Date;

public class MonsterAttack {
	String monsterName;
	String attackLocation;
	double damagesInMillionUSD;
	Date date;

	public MonsterAttack(String monsterName, String attackLocation, double damagesInMillionUSD, Date date) {
		this.monsterName = monsterName;
		this.attackLocation = attackLocation;
		this.damagesInMillionUSD = damagesInMillionUSD;
		this.date = date;
	}

	public String getMonsterName() {
		return monsterName;
	}

	public void setMonsterName(String monsterName) {
		this.monsterName = monsterName;
	}

	public String getAttackLocation() {
		return attackLocation;
	}

	public void setAttackLocation(String attackLocation) {
		this.attackLocation = attackLocation;
	}

	public double getDamagesInMillionUSD() {
		return damagesInMillionUSD;
	}

	public void setDamagesInMillionUSD(double damagesInMillionUSD) {
		this.damagesInMillionUSD = damagesInMillionUSD;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String toString() {
		return "On " + this.date + ", " + this.monsterName + " has attacked " + this.attackLocation + " that costs "
				+ this.damagesInMillionUSD;
	}
}
