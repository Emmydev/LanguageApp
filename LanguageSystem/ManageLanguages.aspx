<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageLanguages.aspx.cs" Inherits="LanguageSystem.ManageLanguages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
    <div class="box" style="margin-bottom:0px">
                <div class="box-header">
                    <h2 style="text-align:center"><i class="fa fa-list"></i> <strong>Manage Languages</strong></h2>
           </div>
          </div>

            <div class="form-horizontal alert alert-success " role="form" runat="server" id="divSearch">
                                     <div class="form-group" style="margin-bottom: 0px; margin-top:0px;">
                                       <div class="col-sm-3">
                                           <label>Enter English word:</label>
                                            <asp:TextBox id="txtSearch" class="col-sm-5" runat="server" Width="100%" Height="35px" ></asp:TextBox>
                                           
                                        </div>

                                    <div class="col-sm-3" style="padding-top:25px;">
                                        <asp:Button ID="SearchBtn" OnClick="SearchBtn_Click" runat="server" CssClass="btn btn-sm btn-success" Text="Search" />
                                        <span>
                                            <asp:Button ID="BtnRefresh" OnClick="BtnRefresh_Click" runat="server" CssClass="btn btn-sm btn-info" Text="Refresh" />
                                        </span>
                                    </div>                               
                                     </div>
                            </div>

             <div class="alert-success" runat="server" id="divSuccess" visible="false" style="height: 30px">
                            <asp:Label ID="lblSuccess" runat="server" Text=" Updated Successfully"></asp:Label>
                        </div>
                        <div class="alert-danger" runat="server" id="divError" visible="false" style="height: 30px">
                            <asp:Label ID="lblError" runat="server" Text="Language not Updated"></asp:Label>
                        </div>

    <div runat="server" class =" col-sm-12" id="divGridview" style="overflow:auto">
    <asp:GridView ID="grdLanguages" runat="server" ShowHeaderWhenEmpty="true" EmptyDataRowStyle-CssClass="text-center" EmptyDataText="No record to display" CssClass="table table-condensed table-responsive table-hover table-striped table-bordered medium-font" AutoGenerateColumns="False" AllowPaging="true" PageSize="10">
        <Columns>
            <asp:TemplateField HeaderText="S/N">
                <ItemTemplate>
                    <%# Container.DataItemIndex + 1 %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="EnglishWord" HeaderText="English Word"/>
            <asp:BoundField DataField="OkunMeaning" HeaderText="Okun Meaning"/>
            <asp:BoundField  DataField="DetailExplanation" HeaderText="Detail Explanation"/>
            <%--<asp:BoundField DataField="CategoryId" HeaderText="Category" />--%>

            <asp:TemplateField HeaderText="Action">
                <ItemStyle CssClass="text-center"/>
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:Linkbutton ID="btnEdit" OnClick="btnEdit_Click" CommandArgument='<%#Eval("Id")%>' ClientIDMode="Static" CausesValidation="false" CssClass="btn btn-xs btn-primary" runat="server"><i class="fa fa-edit"></i> Edit</asp:Linkbutton>
                            </td>
                            <td>
                                 <asp:Linkbutton ID="btnDelete" OnClick="btnDelete_Click" CommandArgument='<%#Eval("Id")%>' ClientIDMode="Static" CausesValidation="false" OnClientClick="javascript:return confirm('Are you sure you want to delete this subject from the list?');" AlternateText="Delete Text" CssClass="btn btn-xs btn-danger" runat="server"><i class="fa fa-trash-o"></i> Delete</asp:Linkbutton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>

    </asp:GridView>
        </div>

            <div class="form-horizontal" role="form" runat="server" id="DivForm" visible="false" style="align-content:center" >
                        
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
                                         <asp:Button ID="BtnBack" OnClick="BtnBack_Click" CssClass=" btn btn-sm btn-primary" runat="server" Text="<<Back"/>
                                         <asp:Button ID="BtnClear" OnClick="BtnClear_Click" CssClass=" btn btn-sm btn-danger" runat="server" Text="Clear"/>
                                        <asp:Button ID="BtnUpdate" OnClick="BtnUpdate_Click" CommandName="Save" CssClass="btn btn-sm btn-success" runat="server"  Text="Update" CommandArgument="1"/>
                                    </div>
                              </div> 

                        </div>

            </div>
        </div>
        </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
