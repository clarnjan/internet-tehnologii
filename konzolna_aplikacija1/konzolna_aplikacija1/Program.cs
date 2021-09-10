using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace lab1._1
{
    public class Rezervacija
    {
        public string ime { get; set; }
        public string prezime { get; set; }
        public int godini { get; set; }
        public int salter { get; set; }
        public Grad grad;
        public int cena { get; set; }

        public Rezervacija(string i, string p, Grad g, int s, int go)
        {
            ime = i;
            prezime = p;
            grad = g;
            salter = s;
            cena = g.ToString().Length * 2000;
            godini = go;
        }
    }
    public enum Grad
    {
        Rim,
        London,
        Tokio,
        Sofija,
        Istanbul,
        Toronto,
        Majami,
        Zagreb,
        Belgrad,
        Moskva
    };
    
    class Program
    {
        public static SortedDictionary<int, List<Rezervacija>> rezervacii = new SortedDictionary<int, List<Rezervacija>>();
        public static void UsluziKlient(string ime, string prezime, int shalter, Grad grad, int godini)
        {
            Rezervacija rezervacija = new Rezervacija(ime, prezime, grad, shalter, godini);
            List<Rezervacija> temp = new List<Rezervacija>();
            rezervacii.TryGetValue(shalter, out temp);
            temp.Add(rezervacija);
            rezervacii.Remove(shalter);
            rezervacii.Add(shalter, temp);
        }
        public static void KartiShalter(int shalter)
        {
            int brKarti = 0;
            List<Rezervacija> temp = new List<Rezervacija>();
            rezervacii.TryGetValue(shalter, out temp);
            brKarti = temp.Count;
            if (brKarti != 1)
                Console.WriteLine($"Na shalterot {shalter} se prodadeni {brKarti} karti");
            else
                Console.WriteLine($"Na shalterot {shalter} e prodadena {brKarti} karta");

        }
        public static int PrometShalter(int shalter)
        {
            int vkupno = 0;
            List<Rezervacija> temp = new List<Rezervacija>();
            rezervacii.TryGetValue(shalter, out temp);
            foreach (Rezervacija r in temp)
            {
                vkupno += r.cena;
            }
            return vkupno;

        }
        public static int PrometPoShalteri(bool pecati)
        {
            int vkupno = 0;
            if (pecati)
                Console.WriteLine("Prometot za sekoj shalter e:");
            foreach (int s in rezervacii.Keys)
            {
                int promet = PrometShalter(s);
                if (pecati)
                    Console.WriteLine($"Prometot napraven na shalter {s} e {promet}den.");
                vkupno += PrometShalter(s);
            }
            return vkupno;
        }
        public static void VkupnoPromet()
        {
            int suma = PrometPoShalteri(false);
            Console.WriteLine($"Vkupniot promet e: {suma}den.");
        }
        public static void Uspesnost()
        {
            int vkupnoKlienti = 0;
            List<Rezervacija> temp = new List<Rezervacija>();
            for (int i = 1; i <= rezervacii.Count; i++)
            {
                rezervacii.TryGetValue(i, out temp);
                vkupnoKlienti += temp.Count;

            }
            if (vkupnoKlienti == 0)
            {
                Console.WriteLine("Nema usluzeni klienti");
                return;
            }
            for (int i = 1; i <= rezervacii.Count; i++)
            {
                rezervacii.TryGetValue(i, out temp);
                float odnos = (temp.Count / (float)vkupnoKlienti) * 100;
                string odnosStr = odnos.ToString("0.00");
                Console.WriteLine($"Uspesnosta na shalter {i} e {odnosStr}%");
            }

        }
        static void Main(string[] args)
        {
            int brShalteri = 0;
            int izbor = 0;
            bool valid = false;
            Console.WriteLine("Vnesi broj na shalteri");
            brShalteri = Int32.Parse(Console.ReadLine());
            for (int i = 1; i <= brShalteri; i++)
            {
                rezervacii.Add(i, new List<Rezervacija>());
            }
            while (true)
            {
                if (izbor == 7)
                    break;
                Console.Write("\nIzberete opcija od menito:\n\n"+ 
                "1. Usluzete go klientot\n"+
                "2. Prodadeni karti na shalterot\n"+
                "3. Vkupen promet na salterot\n" +
                "4. Prodazba na site shalteri\n"+
                "5. Vkupen promet\n"+
                "6. Uspesnost na agencijata\n"+
                "7. Izlez\n");
                valid = Int32.TryParse(Console.ReadLine(), out izbor);
                switch (izbor)
                {
                    case 1:
                        string ime = "";
                        string prezime = "";
                        int shalter = 0;
                        int godini = 0;
                        Grad g;
                        Console.WriteLine("Vnesi ime:");
                        ime = Console.ReadLine();
                        Console.WriteLine("Vnesi prezime:");
                        prezime = Console.ReadLine();
                        Console.WriteLine("Vnesi godini:");
                        shalter = Int32.Parse(Console.ReadLine());
                        Console.WriteLine("Vnesi destinacija:");
                        g = (Grad)Enum.Parse(typeof(Grad), Console.ReadLine(), true);
                        Console.WriteLine("Vnesi broj na shalter:");
                        shalter = Int32.Parse(Console.ReadLine());
                        UsluziKlient(ime, prezime, shalter, g, godini);
                        break;
                    case 2:
                        Console.WriteLine("Vnesi broj na shalter za koj sakas da znaes kolku karti se prodadeni:");
                        shalter = Int32.Parse(Console.ReadLine());
                        KartiShalter(shalter);
                        break;
                    case 3:
                        Console.WriteLine("Vnesi broj na shalter za koj sakas da znaes kolku promet e napraveno:");
                        shalter = Int32.Parse(Console.ReadLine());
                        int p = PrometShalter(shalter);
                        Console.WriteLine($"Prometot napraven na shalter {shalter} e {p}");
                        break;
                    case 4:
                        PrometPoShalteri(true);
                        break;
                    case 5:
                        VkupnoPromet();
                        break;
                    case 6:
                        Uspesnost();
                        break;
                    default:
                        break;
                }

            }
            Console.WriteLine("Press any key to coninue...");
            Console.ReadKey();
        }
    }
}
