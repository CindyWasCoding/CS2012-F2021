package Lecture3and4Q7;

/* Start with the FootballScore class code from the lecture.   Write a reasonable .equals() method for this class.*/
public class FootballScore {
	private int score;
	
	public int getScore() {
		return score;
	}
	public void touchdown() {
		score += 6;
	}
	public void extraPoint() {
		score += 1;
	}
	public void safety() {
		score += 2;
	}
	public void fieldGoal() {
		score += 3;
	}
	
	//Check if right
	public boolean equals(FootballScore otherScore) {
		if (otherScore.score == score) {
			return true;
		}
		else {
			return false;
		}
	}
}
