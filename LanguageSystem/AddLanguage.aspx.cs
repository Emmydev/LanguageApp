using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LanguageSystem
{
    public partial class AddLanguage : System.Web.UI.Page
    {
        LanguageSystemEntities _db = new LanguageSystemEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void clearControl()
        {
            txtEnglishWord.Text = "";
            txtOkunMeaning.Text = "";
            txtExplanation.Text = "";
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            clearControl();
        }

        public bool validationControl()
        {
            if(txtEnglishWord.Text == "")
            {
                divError.Visible = true;
                lblError.Text = "English word field cannot be empty";
                return false;
            }
            else if(txtOkunMeaning.Text == "")
            {
                divError.Visible = true;
                lblError.Text = "Okun meaning field cannot be empty";
                return false;
            }
            else if (txtExplanation.Text == "")
            {
                divError.Visible = true;
                lblError.Text = "Detail Explanation field cannot be empty";
                return false;
            }
            return true;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
          if(!validationControl())
          {
                return;
          }
          else
          {
                saveLanguage();
          }  
        }
        public void saveLanguage()
        {
            try
            {
                var languageObj = new Language
                {
                    EnglishWord = txtEnglishWord.Text,
                    OkunMeaning = txtOkunMeaning.Text,
                    DetailExplanation = txtExplanation.Text,
                    Date = DateTime.Now
                };
                _db.Languages.Add(languageObj);
                _db.SaveChanges();
                divSuccess.Visible = true;
                clearControl();
            }
            catch(Exception ex)
            {
                divError.Visible = true;
                lblError.Text = ex.Message;
            }
        }
    }
}