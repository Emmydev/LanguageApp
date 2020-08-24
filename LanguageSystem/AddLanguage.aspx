<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddLanguage.aspx.cs" Inherits="LanguageSystem.AddLanguage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
             <div class="box"> 
                <div class="box-header">
                    <h2 style="text-align:center"><i class="fa fa-book"></i> <strong>Add Language</strong></h2>
           </div>
          </div>
            <div class="row">
                <div class="col-sm-12" runat="server">
                    <div class="col-md-12">
                        <div class="alert-success" runat="server" id="divSuccess" visible="false" style="height: 30px">
                            <asp:Label ID="lblSuccess" runat="server" Text="Successfully Saved"></asp:Label>
                        </div>
                        <div class="alert-danger" runat="server" id="divError" visible="false" style="height: 30px">
                            <asp:Label ID="lblError" runat="server" Text="Language not saved"></asp:Label>
                        </div>
                        
                        <div class="form-horizontal" role="form" runat="server" id="Div1" style="align-content:center" >
                        
                            <div class="form-group" runat="server" >
                                    <label for="lblEnglishWord" class="col-sm-3 control-label">English Word: </label>
                                    <div class="col-sm-6" runat="server">
                                        <asp:TextBox id="txtEnglishWord" class="col-sm-5" runat="server" Width="60%" Height="35px" ></asp:TextBox>
                                    </div>  
                                 </div>

                            <div class="form-group" runat="server" >
                                    <label for="lblOkunMeaning" class="col-sm-3 control-label">Okun Meaning: </label>
                                    <div class="col-sm-6" runat="server">
                                        <asp:TextBox id="txtOkunMeaning" class="col-sm-5" runat="server" Width="60%" Height="35px"></asp:TextBox>
                                    </div>  
                                 </div>
                            
                            <div class="form-group" runat="server" >
                                    <label for="lblExplanation" class="col-sm-3 control-label">Detail Explanation: </label>
                                    <div class="col-sm-6" runat="server">
                                        <asp:TextBox id="txtExplanation" class="col-sm-5" runat="server" TextMode="MultiLine" Height="100px" Width="60%"></asp:TextBox>
                                    </div>  
                                 </div>
                            <div class="form-group" >
                                     <div class="col-sm-10 text-center">  
                                         <asp:Button ID="BtnClear" CssClass=" btn btn-sm btn-danger" OnClick="BtnClear_Click" runat="server" Text="Clear"/>
                                        <asp:Button ID="BtnSave" CommandName="Save" CssClass="btn btn-sm btn-success" OnClick="BtnSave_Click" runat="server"  Text="Save" CommandArgument="1"/>
                                    </div>
                              </div> 

                        </div>

                     </div>
               </div>

           </div>
        </div>
       </div>
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
