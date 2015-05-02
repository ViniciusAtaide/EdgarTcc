require 'test_helper'

class AvaliacaoTest < ActiveSupport::TestCase
  test "if it is correctly create" do
    assert avaliacoes(:one), "Avaliacao criada com sucesso"
  end
end
