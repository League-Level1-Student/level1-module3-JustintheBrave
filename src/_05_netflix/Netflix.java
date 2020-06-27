package _05_netflix;

public class Netflix {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Movie movie = new Movie("Ocean nut", 0);
		Movie good = new Movie("Justin Zhang", 5);
		Movie garbage = new Movie("Fortnite", 4);
		Movie yeet = new Movie("Yeet Yeet", 3);
		Movie yes =  new Movie("garbage movie", 1);
		
		NetflixQueue noob = new NetflixQueue();
		
		System.out.println(movie.getTicketPrice());
		
		noob.addMovie(movie);
		noob.addMovie(yes);
		noob.addMovie(yeet);
		noob.addMovie(garbage);
		noob.addMovie(good);
		noob.printMovies();
		
		System.out.println("The best movie is " + noob.getBestMovie());
		noob.sortMoviesByRating();
		System.out.println("The second best movie is "+ noob.getMovie(1));
	}

}
