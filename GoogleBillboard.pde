public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
boolean answer = false;
int start = 2;
int end = 12;

public void setup()  
{            
	String digits;
	double dNum;

    while(answer == false){
    	digits = e.substring(start, end);
    	dNum = Double.parseDouble(digits);

    	if(isPrime(dNum) == true){
    		answer = true;
    		System.out.println(dNum);

    	}else {
    		start ++;
    		end ++;
    	}
    }
}  
public void draw()  
{   
	//not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
    for(double i = 2; i <= Math.sqrt(dNum); i++){
    	if(dNum % i == 0){
    		return false;
    	}
    }
    return true;  
} 
