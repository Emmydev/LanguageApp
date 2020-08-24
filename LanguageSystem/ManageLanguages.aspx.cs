using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LanguageSystem
{
    public partial class ManageLanguages : System.Web.UI.Page
    {
        LanguageSystemEntities _db = new LanguageSystemEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadLanguage();
        }

        public void loadLanguage()
        {
            var languageObj = _db.Languages.ToList();
            grdLanguages.DataSource = languageObj;
            grdLanguages.DataBind();
        }
        

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            DivForm.Visible = true;
            divGridview.Visible = false;

            try
            {
                LinkButton lknBtn = (LinkButton)sender;
                var languageId = int.Parse(lknBtn.CommandArgument);
                ViewState["LanguageId"] = languageId;
                var languageObj = _db.Languages.FirstOrDefault(m => m.Id == languageId);
                if (languageObj != null)
                {
                    txtEnglishWord.Text = languageObj.EnglishWord;
                    txtOkunMeaning.Text = languageObj.OkunMeaning;
                    txtExplanation.Text = languageObj.DetailExplanation;
                }
            }
            catch (Exception ex)
            {
                divError.Visible = true;
                lblError.Text = "An error occured please contact administrator !";
            }
        }
        public void clearControl()
        {
            txtEnglishWord.Text = "";
            txtOkunMeaning.Text = "";
            txtExplanation.Text = "";
        }

        public bool validationControl()
        {
            if (txtEnglishWord.Text == "")
            {
                divError.Visible = true;
                lblError.Text = "English word field cannot be empty";
                return false;
            }
            else if (txtOkunMeaning.Text == "")
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

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ManageLanguages.aspx");
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            clearControl();
        }

        public void updateLanguage()
        {
            try
            {
                int languageId = int.Parse(ViewState["LanguageId"].ToString());
                var languageObj = _db.Languages.FirstOrDefault(m => m.Id == languageId);
                if (languageObj != null)
                {
                    languageObj.EnglishWord = txtEnglishWord.Text;
                    languageObj.OkunMeaning = txtOkunMeaning.Text;
                    languageObj.DetailExplanation = txtExplanation.Text;
                    _db.SaveChanges();
                    divSuccess.Visible = true;
                    clearControl();
                    DivForm.Visible = false;
                    divGridview.Visible = true;
                    loadLanguage();
                }
            }
            catch(Exception ex)
            {
                divError.Visible = true;
                lblError.Text = "An error occured please contact administrator !";
            }
            
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if(!validationControl())
            {
                return;
            }
            else
            {
                updateLanguage();
            }
            
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text =="")
            {
                divError.Visible = true;
                lblError.Text = " Search field cannot be empty, input English word to search !";
            }
            else
            {
                var english = txtSearch.Text;
                var language = _db.Languages.Where(m => m.EnglishWord == english).ToList();
                grdLanguages.DataSource = language;
                grdLanguages.DataBind();
                divError.Visible = false;
            }

            
        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {
            loadLanguage();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var lknBtn = (LinkButton)sender;
            int languageId = int.Parse(lknBtn.CommandArgument);
            var languageObj = _db.Languages.FirstOrDefault(m=> m.Id == languageId);
            if(languageObj != null)
            {
                _db.Languages.Remove(languageObj);
                _db.SaveChanges();
                divError.Visible = true;
                lblError.Text = "Deleted Successfully";
                loadLanguage();
            }
        }
    }
}