package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorld {


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	Random ran = new Random();
	int random = ran.nextInt(10);
	int randomm = ran.nextInt(10);
	int x = 0;
	int y=0;
	
	World world =  new World();
	world.show();
	
	Bug bug = new Bug();
	Bug bugg = new Bug();
	Flower flower = new Flower();
	Flower flowerr = new Flower();
	
	Location loca = new Location(0, 0);
	Location locat = new Location(random, randomm);
	Location locati= new Location(random, randomm-1);
	Location locatio= new Location(random, randomm+1);
	
	bugg.setColor(Color.blue);
	
	world.add(loca, bug);
	world.add(locat, bugg);
	world.add(locati, flower);
	world.add(locatio, flowerr);
	
	for (int k = 0; k < 10; k++) {	
		for (int j = 0; j < 10; j++) {
			Location screen = new Location(k,j);
			Flower flowerrr = new Flower();
			
			if(k%2==0) {
				flowerrr.setColor(Color.RED);
			}
			else {
				flowerrr.setColor(Color.WHITE);
			}
			world.add(screen, flowerrr);
			
		}
		
	}	
	
	
	
	
	
	for (int i = 0; i < 2; i++) {
		bugg.turn();
	}
	
	
	}

	
}
