class Producto < ApplicationRecord
  belongs_to :categorium
  
 validates :nombre,
  :imagen, :descripcion, presence: { message: "Este campo es requerido."}

  validates :nombre,
  length: {minimum: 3, maximum: 100, message: "El nombre debe estar entre 3 y 100 caracteres"}
  

  validates :descripcion,
  length: {minimum: 15, maximum: 200, message: "El nombre debe estar entre 15 y 200 caracteres"}

  validates :nombre,
  uniqueness: { message: "Este nombre ya ha sido utilizado."}

  def nproductos
    return Producto
      .where(categorium_id: self.id)
      .count
  end  

end


