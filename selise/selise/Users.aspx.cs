using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace selise
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showAll();
        }

        void showAll()
        { 
            listUsers.DataSource = userClassList.users;
            listUsers.DataBind();
        }

        protected void btnSort_Click(object sender, EventArgs e)
        {
            lblShowUsers.Text = ""; 
            listUsers.DataSource = whichSort();
            listUsers.DataBind();
        }

        List<userClass> whichSort()
        {
            string which = listSort.SelectedItem.Value;
            List<userClass> SortedList = userClassList.users;
            switch (which)
            {
                case "fn":
                    SortedList = SortedList.OrderBy(o => o.firstName).ToList();
                    break;
                case "ln":
                    SortedList = SortedList.OrderBy(o => o.lastName).ToList();
                    break;
                case "bd":
                    SortedList = SortedList.OrderBy(o => o.birthdate).ToList();
                    break;  
                default:
                    SortedList = SortedList.ToList();
                    break;

            }
            return SortedList;
        }
    }
}