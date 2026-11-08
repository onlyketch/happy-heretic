function calcRating(current_score, best_score) {
	
	var percent = floor((current_score / best_score) * 100);
	
	if (current_score < 10) {
		return 1;
	} else {
		
		if (percent < 20) {
			return 1;
		} else if (percent < 40) {
			return 2;
		} else if (percent < 60) {
			return 3;
		} else if (percent < 80) {
			return 4;
		} else {
			return 5;
		}
	}
	
}