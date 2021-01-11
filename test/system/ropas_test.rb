require "application_system_test_case"

class RopasTest < ApplicationSystemTestCase
  setup do
    @ropa = ropas(:one)
  end

  test "visiting the index" do
    visit ropas_url
    assert_selector "h1", text: "Ropas"
  end

  test "creating a Ropa" do
    visit ropas_url
    click_on "New Ropa"

    fill_in "Descripcion", with: @ropa.descripcion
    fill_in "Nombre", with: @ropa.nombre
    fill_in "Precio", with: @ropa.precio
    click_on "Create Ropa"

    assert_text "Ropa was successfully created"
    click_on "Back"
  end

  test "updating a Ropa" do
    visit ropas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @ropa.descripcion
    fill_in "Nombre", with: @ropa.nombre
    fill_in "Precio", with: @ropa.precio
    click_on "Update Ropa"

    assert_text "Ropa was successfully updated"
    click_on "Back"
  end

  test "destroying a Ropa" do
    visit ropas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ropa was successfully destroyed"
  end
end
