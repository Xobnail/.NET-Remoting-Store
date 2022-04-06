namespace StoreInterface
{
    public interface IStore
    {
        string AddNewCustomer(string fio, string email, string address);
        string AddNewOrder(int IDproduct, int amount);
        string GetProductName(string id);
    }
}
