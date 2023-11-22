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
    public partial class Tutor_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void ResetControls()
        {
            NameTextBox.Text = string.Empty;
            SurnameTextBox.Text = string.Empty;
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            MaritalStatusDropDownList.ClearSelection();
            CountryTextBox.Text = string.Empty;
            CityTextBox.Text = string.Empty;
            AddressTextBox.Text = string.Empty;
            QulificationDropDownList.ClearSelection();
            DegreeTextBox.Text = string.Empty;
            ExperienceDropDownList.ClearSelection();
            ContactTextBox.Text = string.Empty;
            UserNameTextBox.Text = string.Empty;
            PasswordTextBox.Text = string.Empty;
            ConfirmTextBox.Text = string.Empty;

        }
        protected void TutorSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);

            try
            {
                string query = "insert into tutor_signup values (@name, @surname, @gender, @age, @email, @status, @country, @city, @address, @qulification, @degree, @experience, @contactno, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
                cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
                cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@status", MaritalStatusDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
                cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
                cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@qulification", QulificationDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@degree", DegreeTextBox.Text);
                cmd.Parameters.AddWithValue("@experience", ExperienceDropDownList.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
                cmd.Parameters.AddWithValue("@username", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                con.Open();
                int a = cmd.ExecuteNonQuery();

                if (a > 0)
                {
                    //Response.Write("<script>alert('Successfully Register')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Success','SignUp Successfully','Success')", true);

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
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire('Failure','Registeration Failed..." + UserNameTextBox.Text + " already Exist','Error')", true);

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