//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E_Sosial
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    
    public partial class t_csr_activity
    {
        public int csr_activity_id { get; set; }
        public int user_id { get; set; }
        public int csr_ph_id { get; set; }
        public string csr_activity_content { get; set; }
        [StringLength(200)]
        public string csr_activity_path { get; set; }
        public System.DateTime csr_activity_date { get; set; }
    }
}
