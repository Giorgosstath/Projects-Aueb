import java.util.*;
import java.io.*;
import java.net.*;

public class Broker2{
	public static void main(String [] args)
	{
		boolean firstTime = true;
		BrokerClass b1 = new BrokerClass(500);
		b1.acceptConnection();
		b1.connectToBroker(450);
		b1.connectToBroker(1000);
		try{
			Thread.sleep(1000);
		}
		catch(Exception e){}
		b1.acceptConnection();
		while(true){
			b1.acceptConnection();
		}
	}
}