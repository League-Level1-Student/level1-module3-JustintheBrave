package _06_gridworld;

import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorld {


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	Random ran = new Random();
	
	World world =  new World();
	world.show();
	
	Bug bug = new Bug();
	Bug bugg = new Bug();
	
	
	Location loca = new Location(0, 0);
	Location locat = new Location(ran.nextInt(10), ran.nextInt(10));
	
	
	world.add(loca, bug);
	world.add(locat, bugg);
	}

}
