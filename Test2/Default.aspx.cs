using System;
using System.Collections.Generic;
using System.Web.UI;
using Test2._1.Models;

namespace Test2._1
{
    public partial class _Default : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                var user = GetUser();
                DisplayUser(user);
            }
        }

        protected User GetUser()
        {
            var model = new User();

            model.FirstName = FirstName.Text;
            model.LastName = LastName.Text;
            model.Patronymic = Patronymic.Text;
            model.BirthDate = BirthDate.Text;
            model.Sex = Convert.ToInt32(Sex.SelectedValue);
            model.PassNu = PassNu.Text;
            model.PassGiven = PassGiven.Text;
            model.PassDate = PassDate.Text;
            model.Education = Convert.ToInt32(Education.SelectedValue);
            model.Marital = Convert.ToInt32(Marital.SelectedValue);
            model.Hobbies = GetHobbies();

            return model;
        }

        protected List<string> GetHobbies()
        {
            var hobbies = new List<string>();
            for (int i = 0; i < Hobbies.Items.Count; i++)
            {
                if (Hobbies.Items[i].Selected)
                {
                    hobbies.Add(Hobbies.Items[i].Value);
                }
            }
            return hobbies;
        }

        protected void DisplayUser(User user)
        {
            var sex = new List<string> { "Мужской", "Женский" }.ToArray();
            var education = new List<string> { "Среднее", "Неполное среднее", "Высшее", "Неоконченное высшее" }.ToArray();
            var marital = new List<string> { "Холост/Не замужем", "Женат/Замужем" }.ToArray();
            uFirstName.Text = user.FirstName;
            uLastName.Text = user.LastName;
            uPatronymic.Text = user.Patronymic;
            uBirthDate.Text = user.BirthDate;
            uSex.Text = sex[user.Sex];
            uPassNu.Text = user.PassNu;
            uPassGiven.Text = user.PassGiven;
            uPassDate.Text = user.PassDate;
            uEducation.Text = education[user.Education];
            uMarital.Text = marital[user.Marital];
            uHobbies.Text = String.Join(", ", user.Hobbies.ToArray());
        }


    }
}