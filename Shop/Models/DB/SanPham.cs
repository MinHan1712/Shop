//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Shop.Models.DB
{
    using System;
    using System.Collections.Generic;
    
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            this.BinhLuans = new HashSet<BinhLuan>();
            this.Carts = new HashSet<Cart>();
            this.ChiTietHDs = new HashSet<ChiTietHD>();
            this.ChiTietSps = new HashSet<ChiTietSp>();
            this.SanPham_Anh = new HashSet<SanPham_Anh>();
        }
    
        public int IdSp { get; set; }
        public string TenSanPham { get; set; }
        public Nullable<decimal> Tien { get; set; }
        public Nullable<long> GiamGia { get; set; }
        public string Image { get; set; }
        public string ImageHover { get; set; }
        public Nullable<int> SoLuong { get; set; }
        public string ThongTin { get; set; }
        public Nullable<System.DateTime> Create_date { get; set; }
        public int IdLoaiSp { get; set; }
        public string HinhDang { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Carts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietHD> ChiTietHDs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietSp> ChiTietSps { get; set; }
        public virtual LoaiSanPham LoaiSanPham { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham_Anh> SanPham_Anh { get; set; }
    }
}