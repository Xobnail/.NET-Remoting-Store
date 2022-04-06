using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;
using StoreInterface;

namespace OnlineStoreASP
{
    public partial class StoreForm : System.Web.UI.Page
    {
        int ProductID;
        TcpClientChannel _channel;

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (!Page.IsPostBack)
            {
                _channel = new TcpClientChannel();
                ChannelServices.RegisterChannel(_channel, false);
            }
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            ChannelServices.UnregisterChannel(_channel);
        }
        
        protected void BuyButton_Click(object sender, EventArgs e)
        {
            IStore store = (IStore)Activator.GetObject(typeof(IStore), "tcp://localhost:8086/Store");
            if(store == null)
            {
                Response.Write("Сервер не доступен");
            }
            else
            {
                store.AddNewCustomer(fioTextBoxID.Text, emailTextBoxID.Text, addressTextBoxID.Text);
                store.AddNewOrder(ProductID, int.Parse(amountTextBoxID.Text));
            }
            Panel1.Visible = false;
            success.Text = "Вы успешно заказали: " + store.GetProductName(ProductID.ToString());
            success.Visible = true;
            receipt.Visible = true;
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            receipt.Visible = false;
            success.Visible = false;
            fioTextBoxID.Text = "";
            emailTextBoxID.Text = "";
            addressTextBoxID.Text = "";
            amountTextBoxID.Text = "";
            IStore store = (IStore)Activator.GetObject(typeof(IStore), "tcp://localhost:8086/Store");
            Button btn = sender as Button;
            ProductID = int.Parse(System.Text.RegularExpressions.Regex.Match(btn.ID, @"\d+").Value);
            choice.Text="Вы выбрали: "+store.GetProductName(ProductID.ToString());
            Panel1.Visible = true;

        }
    }
}