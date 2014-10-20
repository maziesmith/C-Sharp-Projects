using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HelloWorld
{
    class People: IEquatable<People>
    {
        public string firstName { get; set; }
        public string lastName { get; set; }
        

        public override string ToString()
        {
            return String.Format("{0}\t\t{1}",firstName ,lastName);
        } 

        public string searchOutput()
        {
            return String.Format("\nSearch Results\nFirst Name\t Last Name\n--------------------------\n{0}\t\t{1}\n", firstName, lastName);
        }


        public bool Equals(People other)
        {
            throw new NotImplementedException();
        }
    }
}
