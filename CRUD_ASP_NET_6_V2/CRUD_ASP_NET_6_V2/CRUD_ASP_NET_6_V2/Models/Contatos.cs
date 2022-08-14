using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CRUD_ASP_NET_6_V2.Models
{
    [Table("Contatos")]
    public class Contatos
    {
        [Display(Name ="Código")]
        [Key]
        [Column("Id")]
        public int Id { get; set; }

        [Display(Name ="Nome")]
        [Column(TypeName ="varchar(250)")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório !")]
        public String Nome { get; set; }

        [Display(Name = "Sexo")]
        [Column(TypeName= "ENUM ('Masculino', 'Feminino')")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório !")]
        public Sexo? Sexo { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        [Column(TypeName = "DATE")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório !")]
        public DateTime Data { get; set; }

        [Display(Name = "Cidade")]
        [Column(TypeName = "varchar(250)")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório !")]
        public string Cidade { get; set; }

        [Display(Name = "Codcontato")]
        [Column(TypeName = "varchar(250)")]
        [Required(ErrorMessage = "Este campo é de preenchimento obrigatório !")]
        public string Codcontato { get; set; }
    }

    public enum Sexo
    {
        Masculino,
        Feminino
    }
}
