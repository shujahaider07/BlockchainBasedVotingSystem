using System;
using System.Security.Cryptography;
using System.Text;

namespace BlockchainBasedVotingSystem
{
    public class Hash
    {

        public static String Sha256(String text)
        {
            SHA256CryptoServiceProvider sHA256 = new SHA256CryptoServiceProvider();

            byte[] encode = Encoding.ASCII.GetBytes(text);
            byte[] ComputeHash = sHA256.ComputeHash(encode);
            return Convert.ToBase64String(ComputeHash);




        }

    }
}