using System;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {

            string s = solution(6);
            Console.Write("\t" + s);
        }
        public static string solution(int S)
        {
            int Number = S;
            string String1 = "";
            char Chars = 'a';
            char Odd = 'b';
            for(int i = 0; i < Number; i++)
            {
                if (Number % 2 != 0)
                {
                    String1 = String1 + Chars;
                }
                if (Number % 2 == 0)
                {
                    if (i == Number - 1) { Chars = 'b'; }
                    String1 = String1 + Chars;
                }

            }
            
            return String1;
        }
    }
}
