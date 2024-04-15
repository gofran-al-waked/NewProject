using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ShowCourses.Text = "None";
            //HttpCookie cokie = new HttpCookie("test");
            //cokie.Value = "test";
            //Response.Cookies.Add(cokie);
            //var cookie = Response.Cookies["test"].Value;
            //cookieLabel.Text = cookie;

            //// Setting expiring date and time of the cookies  
            //Response.Cookies["computer"].Expires = DateTime.Now.AddDays(-1);
            //DataTable table = new DataTable();
            //table.Columns.Add("ID");
            //table.Columns.Add("Name");
            //table.Columns.Add("Email");
            //table.Rows.Add("1", "Ahmed", "ahmed@example.com");
            //table.Rows.Add("2", "Noor", "noor@example.com");
            //table.Rows.Add("3", "Reem", "reem@example.com");
            //table.Rows.Add("4", "Omar", "omar@example.com");
            //DataList1.DataSource = table;
            //DataList1.DataBind();
            //DataGrid1.DataSource = table;
            //DataGrid1.DataBind();


            //Session.Remove("TblPersonalData");
            if (Session["TblPersonalData"] != null)
            {
                Table NewTable = (Table)Session["TblPersonalData"];
                TData = NewTable;
                TData.ID = "TData_" + DateTime.Now.Ticks.ToString();
                PanelTable1.Visible = false;
                PanelColors.Visible = true;
                PanelColors.Controls.Add(TData);
         
            }
            if(!IsPostBack)
                FormViewEmps.DefaultMode = FormViewMode.ReadOnly;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You can easily display any information inside it";

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            userInput.Text = UserName.Text;
        }
        protected void genderButton_Click(object sender, EventArgs e)
        {
            genderId.Text = "";
            if (RadioButton1.Checked)
            {
                genderId.Text = "Your Gender is " + RadioButton1.Text;
                    }
            else
            {
                genderId.Text = "Your Gender is " + RadioButton2.Text;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            ShowDate.Text = "You selected : " + Calendar1.SelectedDate.ToString("D");



        }

        protected void CheckBoxButton_Click(object sender, EventArgs e)
        {
             var message = "" ;  
            if (CheckBox1.Checked)  
            {  
                message = CheckBox1.Text+"  ";  
            }  
            if (CheckBox2.Checked)  
            {  
                message += CheckBox2.Text + "  ";  
            } 
            if (CheckBox3.Checked)  
            {  
                message += CheckBox3.Text;  
            }  
            ShowCourses.Text = message;  
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButtonLabel.Text = "Welcome to the javatpoint";
        }

        protected void FileUploadButton_Click(object sender, EventArgs e)
        {
            if ((FileUpload1.PostedFile !=null) && (FileUpload1.PostedFile.ContentLength>0)) {
                string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                string SaveLocation = Server.MapPath("upload") + "\\" + fn;
                try
                {
                    FileUpload1.PostedFile.SaveAs(SaveLocation);
                    FileUploadStatus.Text = "The file has been uploaded.";
                }
                catch (Exception ex)
                {
                    FileUploadStatus.Text = "Error: " + ex.Message;
                }
            }
            else if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
            {
                var count = 0;
                foreach (HttpPostedFile uploadedFile in FileUpload2.PostedFiles)
                {
                    string fn = System.IO.Path.GetFileName(uploadedFile.FileName);
                    string SaveLocation = Server.MapPath("upload") + "\\" + fn;
                    try
                    {
                        uploadedFile.SaveAs(SaveLocation);
                        count++;
                    }
                    catch (Exception ex)
                    {
                        FileUploadStatus.Text = "Error: " + ex.Message;
                    }
                }
                if (count > 0)
                {
                    FileUploadStatus.Text = count + " files has been uploaded.";
                }
            }
            else
            {
                FileUploadStatus.Text = "Please select a file to upload.";
            }
        
    
        }

        protected void DownloadButton_Click(object sender, EventArgs e)
        {
            string filePath = "C:\\Users\\gh-alwaked\\Desktop\\projects\\test.txt";
            FileInfo file = new FileInfo(filePath);
            if (file.Exists)
            {
                // Clear Rsponse reference  
                Response.Clear();
                // Add header by specifying file name  
                Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                // Add header for content length  
                Response.AddHeader("Content-Length", file.Length.ToString());
                // Specify content type  
                Response.ContentType = "text/plain";
                // Clearing flush  
                Response.Flush();
                // Transimiting file  
                Response.TransmitFile(file.FullName);
                Response.End();
            }
            else Label1.Text = "Requested file is not available to download";
        }

        protected void CookieWord_Click(object sender, EventArgs e)
        {
            CookieWordLabel2.Text = "";
            // --------------- Adding Coockies ---------------------//  
            if (apple.Checked)
                Response.Cookies["computer"]["apple"] = "apple";
            if (dell.Checked)
                Response.Cookies["computer"]["dell"] = "dell";
            if (lenevo.Checked)
                Response.Cookies["computer"]["lenevo"] = "lenevo";
            if (acer.Checked)
                Response.Cookies["computer"]["acer"] = "acer";
            if (sony.Checked)
                Response.Cookies["computer"]["sony"] = "sony";
            if (wipro.Checked)
                Response.Cookies["computer"]["wipro"] = "wipro";
            // --------------- Fetching Cookies -----------------------//  
            if (Request.Cookies["computer"].Values.ToString() != null)
            {
                if (Request.Cookies["computer"]["apple"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["apple"] + " ";
                if (Request.Cookies["computer"]["dell"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["dell"] + " ";
                if (Request.Cookies["computer"]["lenevo"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["lenevo"] + " ";
                if (Request.Cookies["computer"]["acer"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["acer"] + " ";
                if (Request.Cookies["computer"]["sony"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["sony"] + " ";
                if (Request.Cookies["computer"]["wipro"] != null)
                    CookieWordLabel2.Text += Request.Cookies["computer"]["wipro"] + " ";
            }
            else CookieWordLabel2.Text = "Please select your choice";
            Response.Cookies["computer"].Expires = DateTime.Now.AddDays(-1);
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if(Password.Text == "1234" && Email.Text !="")
            {
                Session["Email"] = Email.Text;
            }
            else if (Email.Text != "")
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "please insert correct Email!";
            }
            else if(Password.Text != "1234")
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "please insert correct Password!";
            }
           
            if (Session["Email"] != null)
            {
                Label3.Text = "This Email is stored to the session :";
                Label4.Text = Session["Email"].ToString();
            }
            //else
            //{
            //    Label3.ForeColor = System.Drawing.Color.Red;
            //    Label3.Text = "please insert correct Email and Password!";
            //}
           
           
        }

        protected void DropDownListButton_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "")
            {
                DropDownListLabel.Text = "Please Select a City";
            }
            else
                DropDownListLabel.Text = "Your Choice is: " + DropDownList2.SelectedValue;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnAddItem_Click(object sender, EventArgs e)
        {
            string strItem = TxtNewItem.Text;
            BlLang.Items.Add(strItem);
        }

        protected void BtnDelAll_Click(object sender, EventArgs e)
        {
            BlLang.Items.Remove(TxtNewItem.Text);
        }

        protected void BtnIndex_Click(object sender, EventArgs e)
        {
            int indexNum = Convert.ToInt32(IndexNum.Text);
            IndexLabel.Text = BlLang.Items[indexNum].Text;
        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            MyCalendar.Visible = true;
        }

        protected void BtnHide_Click(object sender, EventArgs e)
        {
            MyCalendar.Visible = false;
        }

        protected void BtnOk_Click(object sender, EventArgs e)
        {
            string strDate = MyCalendar.SelectedDate.ToString();
            DateLabel.Text = strDate;
        }

        protected void MyCalendar_SelectionChanged(object sender, EventArgs e)
        {
            DateLabel.Text = MyCalendar.SelectedDate + "";
        }

       

        protected void BtnSelected_Click(object sender, EventArgs e)
        {
            string strSelected = " - ";
            if (CheckBoxJava.Checked) strSelected += "Java - ";
            if (CheckBoxCSharp.Checked) strSelected += "C# - ";
            if (CheckBoxCPlus.Checked) strSelected += "C++ - ";
            if (CheckBoxPhp.Checked) strSelected += "PHP - ";
            SelectedLabel.Text = strSelected; 
        }

        protected void TextBTextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxAll_CheckedChanged(object sender, EventArgs e)
        {
            CheckBoxJava.Checked = true;
            CheckBoxCSharp.Checked = true;
            CheckBoxCPlus.Checked = true;
            CheckBoxPhp.Checked = true;
        }

        protected void CheckBoxUnAll_CheckedChanged(object sender, EventArgs e)
        {
            CheckBoxJava.Checked = false;
            CheckBoxCSharp.Checked = false;
            CheckBoxCPlus.Checked = false;
            CheckBoxPhp.Checked = false;
            if (CheckBoxNone.Checked)
            {
                CheckBoxJava.Enabled = false;
                CheckBoxCSharp.Enabled = false;
                CheckBoxCPlus.Enabled = false;
                CheckBoxPhp.Enabled = false;
            }
            else
            {
                CheckBoxJava.Enabled = true;
                CheckBoxCSharp.Enabled = true;
                CheckBoxCPlus.Enabled = true;
                CheckBoxPhp.Enabled = true;
            }

        }

        protected void BtnCkLSelected_Click(object sender, EventArgs e)
        {
            BlLangChl.Items.Clear();
            for(int i = 0; i < CheckBoxList3.Items.Count; i++)
            {
                if (CheckBoxList3.Items[i].Selected)
                    BlLangChl.Items.Add(CheckBoxList3.Items[i].Text);
            }
        }
        protected void CheckAllOrNone(bool check)
        {
            foreach (ListItem li in CheckBoxList3.Items) li.Selected = check;
        }
        protected void BtnSelectAll_Click(object sender, EventArgs e)
        {
            CheckAllOrNone(true);
        }

        protected void BtnSelectNone_Click(object sender, EventArgs e)
        {
            CheckAllOrNone(false);

            //for (int i = 0; i < CheckBoxList3.Items.Count; i++)
            //{
            //    if (CheckBoxList3.Items[i].Selected)
            //        CheckBoxList3.Items[i].Selected = false;

            //}
        }
        protected void ShowResult()
        {
            string strText = DDLCity.SelectedItem.Text;
            string strVal = DDLCity.SelectedItem.Value;
            int index = DDLCity.SelectedIndex;
            LabelDDL.Text = strText + " >> " + strVal + " >> " + index;
        }
        protected void BtnDDL_Click(object sender, EventArgs e)
        {
            ShowResult();
        }

        protected void DDLCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            ShowResult();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("<hr>");
            Response.Write("<div style='color:navy;font-size:30px;'>");
            Response.Write("Name : "+ FUFile.FileName + "<hr>");
            Response.Write("Size : " + FUFile.FileContent.Length + " Bytes <hr>");
            Response.Write("Type : " + Path.GetExtension( FUFile.FileName) + " <hr>");
            Response.Write("</div>");
            Response.Write("<hr>");

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string fileName = FUFile.FileName;
            //string fileExt = Path.GetExtension(fileName);
            FUFile.SaveAs(Server.MapPath("Files/"+fileName));
        }

        

        protected void BtnSetData_Click(object sender, EventArgs e)
        {
            string strName = TxtName.Text;
            string strAddress = TxtAddress.Text;
            HFName.Value = strName;
            HFAddress.Value = strAddress;
        }

        protected void BtnPrint_Click(object sender, EventArgs e)
        {
            string strName = HFName.Value;
            string strAddress = HFAddress.Value;
            Response.Write("<h1 style='color:green'> " + strName + "</h1>" +"<hr>");
            Response.Write("<h1 style='color:green'> " + strAddress + "</h1>" + "<hr>");
        }

        protected void BtnImage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Write("<h1>This is my Image</h1>");        }

        protected void LBtnGoToPage1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void LBtnGoogle_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://www.google.com/");
        }

        protected bool InRange(int number , int min , int max)
        {
            if (number >= min && number <= max) return true; else return false;
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            LBLabel.Text = "X: " + e.X + " ; Y: " + e.Y;
           // if ((e.Y >= 82 && e.Y <= 184))
           if(InRange(e.Y , 82, 184))
            {
                //if ((e.X >= 76 && e.X <= 175))
                if(InRange(e.X , 76,175 ))
                {
                    LBLabel.Text = "<h3 style = 'color: blue;'> The Color is Blue !</h3>";
                }
                //if ((e.X >= 229 && e.X <= 328))
                else if(InRange (e.X , 229 , 328))
                {
                    LBLabel.Text = "<h3 style = 'color: orange;'> The Color is Orange !</h3>";
                }
                else
                {
                    LBLabel.Text = "<h3 style = 'color: green;'> Empty Space !</h3>";
                }
            }
            else
            {
                LBLabel.Text = "<h3 style = 'color: green;'> Empty Space !</h3>";
            }
        }

        protected void LBBtn_Click(object sender, EventArgs e)
        {
            string txt = LBLang.SelectedItem.Text;
            string val = LBLang.SelectedItem.Value;
            LBLabel.Text = "Text : " + txt + " ; Value : " + val;
        }

        protected void BtnAddLB_Click(object sender, EventArgs e)
        {
            string item = TxtLBAdd.Text;
            LBLang.Items.Add(item);
        }

        protected void BtnView1_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 0;
        }

        protected void BtnView2_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 1;
        }

        protected void BtnView3_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 2;
        }

        protected void BtnGoV2_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 1;
        }

        protected void BtnGoV3_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 2;
        }

        protected void BtnGoV1_Click(object sender, EventArgs e)
        {
            MultiView3.ActiveViewIndex = 0;
        }

        protected void show1_Click(object sender, EventArgs e)
        {
            P1.Visible = true;
        }

        protected void hide1_Click(object sender, EventArgs e)
        {
            P1.Visible = false;
        }

        protected void show2_Click(object sender, EventArgs e)
        {
            P2.Visible = true;

        }

        protected void hide2_Click(object sender, EventArgs e)
        {
            P2.Visible = false;
        }

        protected void show3_Click(object sender, EventArgs e)
        {
            P3.Visible = true;
        }

        protected void hide3_Click(object sender, EventArgs e)
        {
            P3.Visible = false;
        }

        protected void BtnAddControls_Click(object sender, EventArgs e)
        {
            Button BtnControl = new Button();
            BtnControl.Text = "New Button";
            TextBox txt = new TextBox();
            PHControls.Controls.Add(BtnControl);
            PHControls.Controls.Add(txt);
        }

        protected void BtnRBShow_Click(object sender, EventArgs e)
        {
            string str = "";
            if (RBMale.Checked) str = "Male";
            else str = "Female";

            Label3.Text = str;
        }

        protected void BtnMaritalStatus_Click(object sender, EventArgs e)
        {
            string MaritalStatus = RBLMaritalStatus.SelectedItem.Text;
            LMaritalStatus.Text = "Your Marital Status is : " + MaritalStatus;
        }

        protected void BtnAddRBLMaritalStatus_Click(object sender, EventArgs e)
        {
            string NewItem = TBRBLMaritalStatus.Text;
            RBLMaritalStatus.Items.Add(NewItem);
        }
        protected static string myName = "";
        protected static string MyName(HttpContext context)
        {
            return myName;
        }

        protected static string maritalStatus = "";
        protected void RBLMaritalStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            maritalStatus = RBLMaritalStatus.SelectedItem.Text;
        }
        protected static string ReturnMaritalStatus(HttpContext context)
        {
            return maritalStatus;
        }

        protected void BtnSayHello_Click(object sender, EventArgs e)
        {
            myName = "Hello " + TBName.Text;
        }

        protected void BtnAddData_Click(object sender, EventArgs e)
        {
            TableRow row = new TableRow();

            TableCell cNumber = new TableCell();
            TableCell cName = new TableCell();
            TableCell cAddress = new TableCell();

            cNumber.Text = TBNumber.Text;
            cName.Text = TBName2.Text;
            cAddress.Text = TBAddress.Text;

            TableCell[] allData = { cNumber, cName, cAddress };

            row.Cells.AddRange(allData);
            row.Font.Bold = true;
            row.Font.Size = FontUnit.Medium;
            row.ForeColor = System.Drawing.Color.Blue;
            row.BackColor = System.Drawing.Color.Silver;
            TData.Rows.Add(row);

            Session["TblPersonalData"] = TData;
            TBNumber.Text = "";
            TBName2.Text = "";
            TBAddress.Text = "";

     
        }

        protected static string name = "";
        protected void BtnViewState_Click(object sender, EventArgs e)
        {
            ViewState["Name"] = TBViewstate.Text;
            MultiView3.ActiveViewIndex = 0;
        }

        protected void BtnShowViewState_Click(object sender, EventArgs e)
        {
            LViewState.Text = ViewState["Name"].ToString();
        }

        protected void BtnSession_Click(object sender, EventArgs e)
        {
            Session["SName"] = TBViewstate.Text;
            string [] names ={ "ahmed" , "Noor" , "Rola" ,"Omar"};
            Session["SNames"] = names;
        }

        protected void BtnShowSession_Click(object sender, EventArgs e)
        {
            if (Session["SName"] != null)
                LViewState.Text = Session["SName"].ToString();
        }

        protected void DropDownListColors_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelColors.Style.Add("Background", DropDownListColors.SelectedValue);
        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelColors.Style.Add("Background", RadioButtonListColors.SelectedValue);
        }

        protected void BtnNum_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(TBNum.Text);
            DataPager1.PageSize = num;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            GridView1.Columns.Clear();
            BoundField f1 = new BoundField();
            BoundField f2 = new BoundField();

            f1.HeaderText = "أسم الموظف";
            f1.DataField = "name";

            f2.HeaderText = "عنوان الموظف";
            f2.DataField = "address";

            GridView1.Columns.Add(f1);
            GridView1.Columns.Add(f2);

            GridView1.DataSource = empsDetails;
            GridView1.DataBind();
        }

        protected void GridViewEmps_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(GridViewEmps.SelectedRow != null)
            {
                string strName = GridViewEmps.SelectedRow.Cells[1].Text;
                string strSalary = GridViewEmps.SelectedRow.Cells[3].Text;
                LabelGridView.Text = $"Employee <br /> Name: {strName} <br /> Salary: {strSalary} ";
            }
        }

        protected void BtnClearSelection_Click(object sender, EventArgs e)
        {
            GridViewEmps.SelectedRow.Cells.Clear();
            LabelGridView.Text = "";
        }

        protected void GridViewEmpsD_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsViewEmps.PageIndex = GridViewEmpsD.SelectedIndex;
        }
        protected void FormViewEmps_Cancel(object sender , EventArgs e)
        {
            FormViewEmps.DefaultMode = FormViewMode.ReadOnly;
            LabelInsert.Text = "";
        }


        protected void FormViewEmps_InsertData(object sender, EventArgs e)
        {
            FormViewEmps.DefaultMode = FormViewMode.Insert;

        }

        protected void FormViewEmps_Insert(object sender, EventArgs e)
        {
            TextBox id = (TextBox)FormViewEmps.FindControl("idTextBox");
            TextBox name = (TextBox)FormViewEmps.FindControl("nameTextBox");
            TextBox salary = (TextBox)FormViewEmps.FindControl("salaryTextBox");
            TextBox address = (TextBox)FormViewEmps.FindControl("addressTextBox");
            TextBox color = (TextBox)FormViewEmps.FindControl("colorTextBox");
            TextBox phone = (TextBox)FormViewEmps.FindControl("phoneTextBox");
            LabelInsert.Text =$"You Can Insert Data Here !<br/> id :{id.Text} <br/> name:{name.Text} <br/> salary:{salary.Text}<br/> address:{address.Text} <br/> color:{color.Text}<br/> phone:{phone.Text}<br/>";
        }












        //void CommandBtn_Click(Object sender, CommandEventArgs e)
        //{

        //    switch (e.CommandName)
        //    {

        //        case "Sort":

        //            // Call the method to sort the list.
        //            Sort_List((String)e.CommandArgument);
        //            break;

        //        case "Submit":

        //            // Display a message for the Submit button being clicked.
        //            Message.Text = "You clicked the Submit button";

        //            // Test whether the command argument is an empty string ("").
        //            if ((String)e.CommandArgument == "")
        //            {
        //                // End the message.
        //                Message.Text += ".";
        //            }
        //            else
        //            {
        //                // Display an error message for the command argument. 
        //                Message.Text += ", however the command argument is not recogized.";
        //            }
        //            break;

        //        default:

        //            // The command name is not recognized. Display an error message.
        //            Message.Text = "Command name not recogized.";
        //            break;

        //    }

        //}

        //void Sort_List(string commandArgument)
        //{

        //    switch (commandArgument)
        //    {

        //        case "Ascending":

        //            // Insert code to sort the list in ascending order here.
        //            Message.Text = "You clicked the Sort Ascending button.";
        //            break;

        //        case "Descending":

        //            // Insert code to sort the list in descending order here.
        //            Message.Text = "You clicked the Sort Descending button.";
        //            break;

        //        default:

        //            // The command argument is not recognized. Display an error message.
        //            Message.Text = "Command argument not recogized.";
        //            break;

        //    }

        //}

    }
}

