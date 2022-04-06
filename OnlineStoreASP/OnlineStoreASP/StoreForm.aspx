<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="StoreForm.aspx.cs" Inherits="OnlineStoreASP.StoreForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="MainDiv" style=" float: left; height: 1765px; width: 536px; margin-left: 240px; margin-right: 0px;">
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/redTshirt.jpg" />
            <div style=" display: inline-block; width: 287px;">
                    Красная футболка фирмы Random Merch <br />
                    Цена: 1100р<br />
                    В наличии: 85<br /><br />
            </div>
            <div style="display: inline-block">
                <asp:Button ID="b0" OnClick="Button_Click" text="Купить" runat="server"  Width="108px"   />
            </div>
                
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/greenTshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                    Зеленая футболка фирмы Random Merch<br />
                    Цена: 1200р<br />
                    В наличии: 45<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b1" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
                
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/whiteTshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                Белая футболка фирмы Random Merch<br />
                    Цена: 1000р<br />
                    В наличии: 55<br /><br />
            </div>
            <div style="display: inline-block ">
                <asp:Button ID="b2" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/blueTshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                Синяя футболка фирмы Random Merch<br />
                    Цена: 1300р<br />
                    В наличии: 44<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b3" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/redshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                Красная майка фирмы Random Merch<br />
                    Цена: 900р<br />
                    В наличии: 99<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b9" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/whiteshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                Белая майка фирмы Random Merch<br />
                    Цена: 800р<br />
                    В наличии: 100<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b10" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/yellowshirt.jpg" />
            <div style="display: inline-block; width: 287px;">
                Желтая майка фирмы Random Merch<br />
                    Цена: 900р<br />
                    В наличии: 50<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b11" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/whitecup.jpg" />
            <div style="display: inline-block; width: 287px;">
                Белая кружка фирмы Random Merch<br />
                    Цена: 300р<br />
                    В наличии: 44<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b4" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/redcup.jpg" />
            <div style="display: inline-block; width: 287px;">
                Красная кружка фирмы Random Merch<br />
                    Цена: 350р<br />
                    В наличии: 33<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b5" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/whitecap.jpg" />
            <div style="display: inline-block; width: 287px;">
                Белая кепка фирмы Random Merch<br />
                    Цена: 500р<br />
                    В наличии: 88<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b6" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/yellowcap.jpg" />
            <div style="display: inline-block; width: 287px;">
                Желтая кепка фирмы Random Merch<br />
                    Цена: 600р<br />
                    В наличии: 55<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b7" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/redcap.jpg" />
            <div style="display: inline-block; width: 287px;">
                Красная кепка фирмы Random Merch<br />
                    Цена: 600р<br />
                    В наличии: 77<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b8" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/blackcase.jpg" />
            <div style="display: inline-block; width: 287px;">
                Черный чехол фирмы Random Merch<br />
                    Цена: 250р<br />
                    В наличии: 300<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b12" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/redcase.jpg" />
            <div style="display: inline-block; width: 287px;">
                Красный чехол фирмы Random Merch<br />
                    Цена: 300р<br />
                    В наличии: 250<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b13" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/yellowcase.jpg" />
            <div style="display: inline-block; width: 287px;">
                Желтый чехол фирмы Random Merch<br />
                    Цена: 450р<br />
                    В наличии: 350<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b14" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
        <div style="background-color:aliceblue; margin:5px; padding:5px; height: 95px;">
            <img src="img/bluecase.jpg" />
            <div style="display: inline-block; width: 287px;">
                Синий чехол фирмы Random Merch<br />
                    Цена: 300р<br />
                    В наличии: 250<br /><br />
            </div>
            <div style=" display: inline-block ">
                <asp:Button ID="b15" OnClick="Button_Click" text="Купить" runat="server"  Width="108px" />
            </div>
        </div>
    </div>
    <div ID="OfferDiv" style="padding:25px; float: right; width: 311px; height: 304px; margin-left: 0px; margin-right: 175px;">
            <asp:Label ID="success" runat="server" Visible="false"></asp:Label><br />
            <asp:Label ID="receipt" runat="server" Visible="false">На вашу почту выслан чек для оплаты заказа.</asp:Label>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <asp:Label ID="choice" runat="server" ></asp:Label><br />
            <asp:Label ID="offer" runat="server" >Для оформления заказа введите данные:</asp:Label><br /><br />
            <asp:Label ID="fio" runat="server" >ФИО:</asp:Label><br />
            <asp:TextBox ID="fioTextBoxID" runat="server" Width="300" ></asp:TextBox><br />
            <asp:Label ID="email" runat="server" >E-mail:</asp:Label><br />
            <asp:TextBox ID="emailTextBoxID" runat="server" Width="300" ></asp:TextBox><br />
            <asp:Label ID="address" runat="server" >Адрес:</asp:Label><br />
            <asp:TextBox ID="addressTextBoxID" runat="server" Width="300" ></asp:TextBox><br />
            <asp:Label ID="amount" runat="server" >Количество:</asp:Label><br />
            <asp:TextBox ID="amountTextBoxID" runat="server" Width="300" ></asp:TextBox><br /><br />
            <asp:Button OnClick="BuyButton_Click" ID="buyBtn" runat="server" Width="308" text="Заказать"/>

        </asp:Panel>
    </div>
</asp:Content>

