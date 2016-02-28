using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.Services;
using System.Data.OleDb;
using System.IdentityModel.Tokens;
using System.Security.Cryptography.X509Certificates;
using System.Web.UI.HtmlControls;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["USER_ID"] != null)
        {
            LabLogout.Text = "Du er nu logget ind ";
            LabLogout.ForeColor = System.Drawing.Color.Green;
            Grid.Visible = true;
            section_login.Attributes.Add("style", "display:none");

        }
        else

        {
            section_login.Attributes.Add("style", "display:block");
            Grid.Attributes.Add("style", "display:none");

        }

    }


    [WebMethod]
    public static string ValidateUser(Users user)
    {
        using (Bryllup2016Entities context = new Bryllup2016Entities())
        {

            string isValidate;

            var row = context.Users.FirstOrDefault(x => x.UserName == user.Username && x.Password == user.Password);

            if (row == null) isValidate = "Username and/or password is incorrect.";
            else
            {
                HttpContext.Current.Session["USER_ID"] = row.Id;
                isValidate = "Login Successfully.";
            }


            return isValidate;
        }
    }

    [WebMethod]
    public static List<Gifts> CreateWish(string data)
    {
        using (Bryllup2016Entities context = new Bryllup2016Entities())
        {
            List<Gifts> wishlist = new List<Gifts>();
            Gifts gift = new Gifts();

            // Vi går ind i vores database, vælger alle gaver og tilføjer dem til vores class Gifts. Herefter tilføjer vi alle classer i rows til 
            // vores liste wishlist

            var rows = (from x in context.Wishlists
                        join k in context.Koebts on x.Id equals k.WishlistId into group1
                        from result in group1.DefaultIfEmpty()
                        join u in context.Users on result.UserId equals u.Id into group2
                        from result2 in group2.DefaultIfEmpty()
                        select new Gifts
                        {
                            GiftName = x.Navn,
                            Price = x.Vaerdi.ToString(),
                            Type = x.VaerdiEnhed,
                            Reserved = (result == null ? 0 : result.Id),
                            Amount = (result == null ? String.Empty : result.Amount),
                            Buyer = (result2 == null ? string.Empty : result2.UserName)

                        }).ToList();

            wishlist.AddRange(rows);

            return wishlist;
        }
    }

    [WebMethod]
    public static int LogOut()
    {
        if (HttpContext.Current.Session["USER_ID"] != null)
        {
            HttpContext.Current.Session["USER_ID"] = null;
            return 1;
        }
        else return 0;
    }

    [WebMethod]
    public static int ReserveGift(string data)
    {
        if (HttpContext.Current.Session["USER_ID"] != null) { 
            using (Bryllup2016Entities context = new Bryllup2016Entities())
            {
                Koebt order = new Koebt();
                var gift = context.Wishlists.FirstOrDefault(x => x.Navn == data);

                if (gift != null)
                {                     
                    order.UserId = Convert.ToInt32(HttpContext.Current.Session["USER_ID"]);
                    order.WishlistId = gift.Id;
                    order.Amount = gift.Vaerdi.ToString();

                    context.Koebts.Add(order);
                    context.SaveChanges();
                }
            }

            return 1;
        }
        return 0;
    }


    public class Users
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }

    public class Gifts
    {
        public string GiftName { get; set; }
        public string Price { get; set; }
        public string Type { get; set; }
        public int Reserved { get; set; }
        public string Buyer { get; set; }
        public string Amount { get; set; }
    }

}