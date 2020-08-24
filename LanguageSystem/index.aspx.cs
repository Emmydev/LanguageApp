using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LanguageSystem
{
    public partial class index : System.Web.UI.Page
    {
        LanguageSystemEntities _db = new LanguageSystemEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            divError.Visible = false;   
        }
        public void loadResult()
        {
            var keyword = txtSearch.InnerText;
            var language = _db.Languages.Where(m => m.EnglishWord == keyword).ToList();
            lstResult.DataSource = language;
            lstResult.DataBind();
            txtSearch.InnerText = "";
            
        }

        public bool validateControl()
        {
            if(txtSearch.InnerText == "")
            {
                divError.Visible = true;
                return false;
            }
            return true;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if(!validateControl())
            {
                return;
            }
            else
            {
                loadResult();
                
            }
            
        }
    }
}