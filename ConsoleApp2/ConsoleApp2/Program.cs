using System;

namespace ConsoleApp2
{
    class shape
    {
        int x;
        public shape(int xx)
        {
            Console.WriteLine("a="+xx.ToString());
        }
    }
    class square :shape
    {
        int x;
        public square(int xx,int b):base(xx)
        {
            Console.WriteLine("b="+b.ToString());
        }
    }
    class Program
    {
        static void Main(string[] args)
        {
            square a = new square(1,2);
        }
    }
}
