using System;
using System.Runtime.Remoting;
using System.Runtime.Remoting.Channels;
using System.Runtime.Remoting.Channels.Tcp;
using StoreClass;

namespace StoreServer
{
    class StoreServer
    {
        static void Main(string[] args)
        {
            TcpServerChannel channel = new TcpServerChannel(8086);
            ChannelServices.RegisterChannel(channel, false);
            RemotingConfiguration.RegisterWellKnownServiceType(typeof(Store), "Store", WellKnownObjectMode.Singleton);
            Console.WriteLine("Сервер работает");
            Console.WriteLine("Нажмите Enter для выхода");
            Console.ReadLine();
        }
    }
}
