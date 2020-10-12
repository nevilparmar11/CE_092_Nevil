using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace task1.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public int ProductId { get; set; }
        public int CustomerId { get; set; }
        public DateTime Order_date { get; set; }
        public Customer customer { get; set; }
        public Product product { get; set; }
        public double Amount { get; set; }

    }
}
