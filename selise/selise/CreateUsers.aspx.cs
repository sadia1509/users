using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace selise
{
    public partial class CreateUsers : System.Web.UI.Page
    {
       // List<userClass> users = new List<userClass>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            userClass uc = new userClass();
            uc.firstName = txtfristNamw.Text.Trim();
            uc.lastName = txtLastName.Text.Trim();
            uc.email = txtEmail.Text.Trim();
            uc.phone = txtPhone.Text.Trim();
            uc.gender = listGender.SelectedValue;
            uc.birthdate = txtBirthDate.Text.Trim();
            uc.city = txtCity.Text.Trim();
            uc.pass = txtPass.Text.Trim();
            uc.conpass = txtconfirmPass.Text.Trim();

            userClassList.users.Add(uc);

            clearThePanel(); 

        }


        void clearThePanel()
        {
            txtfristNamw.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            listGender.ClearSelection();
            txtCity.Text = "";
            txtPass.Text = "";
            txtconfirmPass.Text = "";
            txtBirthDate.Text = "";

        }



        
    }
}