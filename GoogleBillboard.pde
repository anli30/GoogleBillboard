public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
  //getting ten digits at a time to test
  int start = 2;
  int end = 12;
  String trial = e.substring(start, end);
  double dNum = Double.parseDouble(trial);
  isPrime(dNum);
  while (isPrime(dNum) == false)
  {
    start = start + 1;
    end = end + 1;
    trial = e.substring(start, end);
    dNum = Double.parseDouble(trial);
    if(isPrime(dNum) == true)
    {
      break;
    }
  }
  System.out.println(trial);
}
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  for (int i = 2; i <= Math.sqrt(dNum); i++)
  {
    if (dNum % i == 0)
    {
      return false;
    }
  }
  return true;
} 
