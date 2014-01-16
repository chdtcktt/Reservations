using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservations
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((bool)DataBinder.Eval(e.Row.DataItem, "HasArrived") == true)
                {
                    e.Row.BackColor = System.Drawing.Color.LightGray;
                    e.Row.ForeColor = System.Drawing.Color.DarkGray;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int thisRow = GridView1.SelectedIndex;
            var ReservationID = (int) GridView1.SelectedDataKey.Value;
            var connection = new SqlConnection(reservations.ConnectionString);
            connection.Open();
            string newValue = "true";
            var cmd = new SqlCommand("UPDATE [DiningReservation] SET [HasArrived] = '" +
                                     newValue + "' WHERE [ReservationID] = " + ReservationID, connection);
            cmd.ExecuteNonQuery();
            Refresh();
        }

        private void Refresh()
        {
            Response.Redirect("Default.aspx");


        }


    }
}