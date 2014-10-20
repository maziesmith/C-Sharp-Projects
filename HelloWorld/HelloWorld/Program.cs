using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloWorld
{
    class Program
    {
        static void Main(string[] args)
        {   
            //Creates a new list that accepts People 
            List<People> peopleList = new List<People>();
            
            //Flag variable
            bool keepgoing = true;

            while (keepgoing)
            {
                Console.Write("Enter Yes to add a person to the list\nEnter No to display the list\nEnter Find to search for an item in the list\nSort to display the list in alphabetical order\nExit to close the application: ");
                string answer = Console.ReadLine();
                
                switch (answer)
                {
                    //Adds an item to the list and confirms to user that the item was added successfully 
                    case "Yes":
                        Console.Write("Enter a first name: ");
                        string infirstName = Console.ReadLine();
                        Console.Write("Enter a last name: ");
                        string inlastName = Console.ReadLine();
                        peopleList.Add(new People() {firstName = infirstName, lastName = inlastName });
                        Console.WriteLine(String.Format("\nSuccessfully added: {0}  {1}\n", infirstName, inlastName));
                        break;
            
                    //Displays list if there any items and provides option to exit, otherwise alerts users there is nothing in the list 
                    case "No":
                        Console.WriteLine();
                        bool hasit = peopleList.Any();
                        if(hasit)
                        {
                            Console.WriteLine("List Results\n--------------------------");
                            foreach (People s in peopleList)
                            {   
                                Console.WriteLine(s);
                            }
                            Console.Write("\nDo you want to exit? Enter y or n: ");

                            string secondInput = Console.ReadLine();
                            switch(secondInput)
                            {
                                case "y":
                                    Console.WriteLine("Exiting now.....");
                                    Environment.Exit(0);
                                    break;
                                case "n":
                                    Console.WriteLine();
                                    break;
                            }
                        }
                        else
                        {
                            Console.WriteLine("The list does not contain any items yet.");
                            Console.WriteLine();
                        }
                        break;

                    //Finds a person based on first and last name, if there are multiple occurences of the same first and last name, it retrieves first one added to the list 
                    case "Find":
                        //Gets input for First and Last name to search for 
                        Console.Write("\nEnter a first name to search for: ");
                        String searchInput = Console.ReadLine();

                        //LINQ used to search for first name contained within our generic collection
                        try
                        {
                            var response = peopleList.FindAll(x => x.firstName == searchInput);

                            if (response != null)
                            {
                                Console.WriteLine("\nSearch Results\nFirst Name\t Last Name\n--------------------------");
                                foreach(People s in response)
                                {
                                    Console.WriteLine(s.ToString());
                                }
                                Console.WriteLine(); 
                            }
                            
                        }
                        catch
                        {
                            throw;     
                        }
                        break;
                        

                    //Sorts by last name in descending order 
                    case "Sort":
                        bool canSort = peopleList.Any();

                        if(canSort)
                        {
                            var sort = from s in peopleList
                                       orderby s.lastName
                                       select s;

                            Console.WriteLine("\nList Results\n--------------------------");

                            foreach (People s in sort)
                            {
                                Console.WriteLine(s); 
                            }
                            Console.WriteLine();
                        }
                        else
                        {
                            Console.WriteLine("\nSorry there is nothing in the list to sort\n");
                        }
                        break;

                    case "Exit":
                        Environment.Exit(0);
                        break;

                    default:
                        keepgoing = true;
                        Console.WriteLine();
                        break;
                }
            }
        }
    }
}
