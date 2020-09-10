using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB7_TASK1
{
    public partial class LinqDemoWithNumbers : System.Web.UI.Page
    {
        List<Int32> list = Enumerable.Range(1, 100).ToList();
        protected void Page_Load(object sender, EventArgs e)
        {
            var evenNumbers = list.Where(n => n % 2 == 0).ToList();
            var oddNumbers = list.Where(n => n % 2 != 0).ToList();
            var maximumValue = list.Max();
            var minimumValue = list.Min();
            var averageValue = list.Average();
            evenL.Text = string.Join(", ", evenNumbers);
            oddL.Text = string.Join(", ", oddNumbers);
            allL.Text = string.Join(", ", list);
            maxL.Text = maximumValue.ToString();
            minL.Text = minimumValue.ToString();
            avgL.Text = averageValue.ToString();
        }
    }
}