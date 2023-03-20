require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "should create item" do
    visit items_url
    click_on "New item"

    fill_in "Attack crush", with: @item.attack_crush
    fill_in "Attack magic", with: @item.attack_magic
    fill_in "Attack range", with: @item.attack_range
    fill_in "Attack slash", with: @item.attack_slash
    fill_in "Attack speed", with: @item.attack_speed
    fill_in "Attack stab", with: @item.attack_stab
    fill_in "Defence crush", with: @item.defence_crush
    fill_in "Defence magic", with: @item.defence_magic
    fill_in "Defence range", with: @item.defence_range
    fill_in "Defence slash", with: @item.defence_slash
    fill_in "Defence stab", with: @item.defence_stab
    fill_in "Destroy message", with: @item.destroy_message
    fill_in "Examine", with: @item.examine
    fill_in "Item", with: @item.item_id
    fill_in "Magic damage", with: @item.magic_damage
    fill_in "Name", with: @item.name
    fill_in "Prayer", with: @item.prayer
    fill_in "Range strength", with: @item.range_strength
    check "Tradeable" if @item.tradeable
    fill_in "Weight", with: @item.weight
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "should update Item" do
    visit item_url(@item)
    click_on "Edit this item", match: :first

    fill_in "Attack crush", with: @item.attack_crush
    fill_in "Attack magic", with: @item.attack_magic
    fill_in "Attack range", with: @item.attack_range
    fill_in "Attack slash", with: @item.attack_slash
    fill_in "Attack speed", with: @item.attack_speed
    fill_in "Attack stab", with: @item.attack_stab
    fill_in "Defence crush", with: @item.defence_crush
    fill_in "Defence magic", with: @item.defence_magic
    fill_in "Defence range", with: @item.defence_range
    fill_in "Defence slash", with: @item.defence_slash
    fill_in "Defence stab", with: @item.defence_stab
    fill_in "Destroy message", with: @item.destroy_message
    fill_in "Examine", with: @item.examine
    fill_in "Item", with: @item.item_id
    fill_in "Magic damage", with: @item.magic_damage
    fill_in "Name", with: @item.name
    fill_in "Prayer", with: @item.prayer
    fill_in "Range strength", with: @item.range_strength
    check "Tradeable" if @item.tradeable
    fill_in "Weight", with: @item.weight
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "should destroy Item" do
    visit item_url(@item)
    click_on "Destroy this item", match: :first

    assert_text "Item was successfully destroyed"
  end
end
