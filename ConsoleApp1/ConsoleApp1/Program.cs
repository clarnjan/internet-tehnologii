using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

namespace ConsoleApp1
{
    public class b{
        public b()
        {
            Console.WriteLine('b');
        }
    }
    class Program
    {   
        public class a : b
        {
            public a()
            {
                Console.WriteLine('a');
            }
        }
        static void Main(string[] args)
        {
            var list = new List<String> { "aaa", "aa" };
            var q = list.Where(s => s.Length == 3);
            //list.Remove("aaa");
            Console.WriteLine(q.Count());
            Console.ReadLine();
        }
    }
}
