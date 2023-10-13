using System;

namespace Test1
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = "abc";
            string S = solution(input);
            Console.Write("\n\n\t\t" + S+"\n\n\n");
        }

        static string solution(string S)
        {
            
            int length = S.Length;

            char[] Chars = new char[length];
            for(int i = 0; i < length; i++)
            {
                Chars[i] = S[i];
            }

            int x=0;
            string twice="";
            for (int i= 0; i < length; i++)
            {
                for (int j = 0; j < length; j++)
                {
                    if (j == i)
                    {
                        break;
                    }
                    if (Chars[i] == S[j])
                    {
                        x = i;
                        break;
                    }

                }

                if (x > 0)
                {
                    break;
                }

            }
            if (x > 0)
            {
                twice = twice + Chars[x];
            }
            else
            {
                twice = "Nothing Common in your string";
            }


            return twice;
        }

    }
}
