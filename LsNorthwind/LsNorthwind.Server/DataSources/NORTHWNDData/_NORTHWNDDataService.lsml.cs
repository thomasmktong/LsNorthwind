using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.LightSwitch;
using Microsoft.LightSwitch.Security.Server;
namespace LightSwitchApplication
{
    public partial class NORTHWNDDataService
    {
        partial void Categories_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void CustomerCustomerDemoes_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void CustomerDemographics_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Customers_CanRead(ref bool result)
        {
            // result = this.Application.User.HasPermission(Permissions.MinimalRead);
            this.Application.User.EffectivePermissions.Contains(Permissions.MinimalRead);
        }

        partial void Employees_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void EmployeeTerritories_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Order_Details_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Orders_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Products_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Regions_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Shippers_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Suppliers_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void sysdiagrams_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }

        partial void Territories_CanRead(ref bool result)
        {
            result = this.Application.User.HasPermission(Permissions.MinimalRead);
        }
    }
}
