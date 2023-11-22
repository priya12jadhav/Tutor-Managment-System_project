using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TMS_Project
{
    public partial class Student_signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControls()
        { 
            NameTextBox.Text = string.Empty;
            FatherNameTextBox.Text = string.Empty;
            SurnameTextBox.Text = string.Empty;
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = string.Empty;
            CountryTextBox.Text = string.Empty;
            CityTextBox.Text = string.Empty;
            AddressTextBox.Text = string.Empty;
            ClassTextBox.Text = string.Empty;
            GoingToDropDownList.ClearSelection();
            SubjectTextBox.Text = string.Empty;
            ContactTextBox.Text = string.Empty;
            TutorialTypeDropDownList.ClearSelection();
            TutorPreferDropDownList.ClearSelection();
            UserNameTextBox.Text = string.Empty;
            PasswordTextBox.Text = string.Empty;
            ConfirmTextBox.Text = string.Empty;
        
        }
        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try {
                string query = "insert into student_signup values (@name, @fname, @surname, @gender, @age, @country, @city, @address, @standard, @goingto, @subject, @contactno, @tutorialtype, @tutorprefer, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
                cmd.Parameters.AddWithValue("@goingto", GoingToDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@tutorialtype", TutorialTypeDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('Successfully Register')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','Login Successfully','Success')", true);

                    ResetControls();
                }
                else
                {
                    //Response.Write("<script>alert('Registeration Failed...Try Different Username ')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed...Try Different Username','Error')", true);

                }
            }
            catch (SqlException ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed..."+UserNameTextBox.Text+" already Exist','Error')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed...','Error')", true);

                }

            }
            finally
            {
                con.Close();
            }
               


        }
    }
}