require 'test_helper'

class TipeTest < ActiveSupport::TestCase
    test "Nombre vacio - mensaje de error" do
        tipe = Tipe.new
        tipe.description = "los mejores alimentos para el cuidado del pelaje"
        tipe.category_id = "1"
        assert_not tipe.save, "Guardo tip sin nombre"
        assert_equal ["Debe ingresar el nombre del tip"], tipe.errors[:name]
    end

    test "Descripcion vacio - mensaje de error" do
        tipe = Tipe.new
        tipe.name = "vitaminas"
        tipe.category_id = "1"
        assert_not tipe.save, "Debe ingresar la descripcion del tip"
        assert_equal ["Debe ingresar la descripcion del tip"], tipe.errors[:description]
    end


end
