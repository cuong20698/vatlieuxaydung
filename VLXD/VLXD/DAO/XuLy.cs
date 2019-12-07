using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VLXD.Entity;

namespace VLXD.DAO
{
    interface XuLy
    {
        bool checkUser(string username);
        bool insert(NguoiDung nd);
        bool delete(long id);
        bool update(long id);
        DataTable getTable();
        DataSet getDataSet();
    }
}
