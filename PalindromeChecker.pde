public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  String linesTwo[] = new String[lines.length];
  for(int i = 0; i < lines.length; i ++)
  {
    linesTwo[i] = "";
  }
  for(int i = 0; i < lines.length; i ++)
  {
    for(int a = 0; a < lines[i].length(); a ++)
    {
      if(Character.isLetter(lines[i].charAt(a)))
      {
        linesTwo[i]+=lines[i].charAt(a);
      }
    }
  }
  for(int i = 0; i < lines.length; i++)
    lines[i]=linesTwo[i];
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  if(word.equalsIgnoreCase(reverse(word)))
    return true;
  else
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i >= 0; i--)
    {
      sNew += str.charAt(i);
    }

    return sNew;
}
