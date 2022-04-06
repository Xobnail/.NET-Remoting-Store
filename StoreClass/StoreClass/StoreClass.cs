using System;
using System.Data.OleDb;
using StoreInterface;

namespace StoreClass
{

    public class Store : MarshalByRefObject , IStore
    {
        public Store()
        {
            Console.WriteLine("Объект Store создан");
        }
        ~Store()
        {
            Console.WriteLine("Объект Store уничтожен");
        }
        public string GetProductName(string id)
        {
            string ProductName;
            string ProductColor;
            string StrOleDbConnection = @"PROVIDER=Microsoft.ACE.OLEDB.12.0;" + @"DATA SOURCE=C:\db\OnlineStoreDB.accdb";
            OleDbConnection oleDbCon = new OleDbConnection();
            oleDbCon.ConnectionString = StrOleDbConnection;
            try
            {
                oleDbCon.Open();
                OleDbCommand cmdName = new OleDbCommand("SELECT Название FROM Товар WHERE IDТовара = "+id, oleDbCon);
                OleDbDataReader rdr = cmdName.ExecuteReader();
                rdr.Read();
                ProductName = rdr[0].ToString();
                OleDbCommand cmdColor = new OleDbCommand("SELECT Цвет FROM Товар WHERE IDТовара = " + id, oleDbCon);
                rdr = cmdColor.ExecuteReader();
                rdr.Read();
                ProductColor = rdr[0].ToString();
            }
            catch (Exception ex)
            {
                return "</br><b>При соединении с БД произошла ошибка " + ex.Message;
            }
            finally
            {
                oleDbCon.Close();
            }
            return ProductName + ". Цвет: " + ProductColor;
        }
        public string AddNewCustomer(string fio, string email, string address)
        {
            string StrOleDbConnection = @"PROVIDER=Microsoft.ACE.OLEDB.12.0;" + @"DATA SOURCE=C:\db\OnlineStoreDB.accdb";
            OleDbConnection oleDbCon = new OleDbConnection();
            oleDbCon.ConnectionString = StrOleDbConnection;
            try
            {
                oleDbCon.Open();
                OleDbCommand command = new OleDbCommand("INSERT INTO Покупатель(ФИО, Email, Адрес) " +
                    "VALUES('" + fio + "', '" + email + "', '" + address + "')", oleDbCon);
                command.ExecuteNonQuery();
            }
            catch(Exception ex)
            {
                return "</br><b>При соединении с БД произошла ошибка " + ex.Message;
            }
            finally
            {
                oleDbCon.Close();
            }
            return "true";
        }
        public string AddNewOrder(int IDproduct, int amount)
        {
            int IDcustomer;
            string StrOleDbConnection = @"PROVIDER=Microsoft.ACE.OLEDB.12.0;" + @"DATA SOURCE=C:\db\OnlineStoreDB.accdb";
            OleDbConnection oleDbCon = new OleDbConnection();
            oleDbCon.ConnectionString = StrOleDbConnection;
            try
            {
                oleDbCon.Open();
                OleDbCommand cmdID = new OleDbCommand("Select LAST(IDПокупателя) from Покупатель", oleDbCon);
                OleDbDataReader rdr = cmdID.ExecuteReader();
                rdr.Read();
                IDcustomer = int.Parse(rdr[0].ToString());
                OleDbCommand command = new OleDbCommand("INSERT INTO Покупки ( IDТовара, IDПокупателя, Количество, ДатаВремя )" +
                    "VALUES('" + IDproduct.ToString() + "','" + IDcustomer.ToString() + "','" + amount.ToString() + "', Date())", oleDbCon);
                command.ExecuteNonQuery();
                
            }
            catch (Exception ex)
            {
                return "</br><b>При соединении с БД произошла ошибка " + ex.Message;
            }
            finally
            {
                oleDbCon.Close();
            }
            return "true";
        }
    }
}
