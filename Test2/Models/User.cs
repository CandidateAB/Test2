using System.Collections.Generic;

namespace Test2._1.Models
{
    public class User
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Patronymic { get; set; }
        public string BirthDate { get; set; }
        public int Sex { get; set; }
        public string PassNu { get; set; }
        public string PassGiven { get; set; }
        public string PassDate { get; set; }
        public int Education { get; set; }
        public int Marital { get; set; }
        public List<string> Hobbies { get; set; }
    }
}