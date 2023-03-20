require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference("Item.count") do
      post items_url, params: { item: { attack_crush: @item.attack_crush, attack_magic: @item.attack_magic, attack_range: @item.attack_range, attack_slash: @item.attack_slash, attack_speed: @item.attack_speed, attack_stab: @item.attack_stab, defence_crush: @item.defence_crush, defence_magic: @item.defence_magic, defence_range: @item.defence_range, defence_slash: @item.defence_slash, defence_stab: @item.defence_stab, destroy_message: @item.destroy_message, examine: @item.examine, item_id: @item.item_id, magic_damage: @item.magic_damage, name: @item.name, prayer: @item.prayer, range_strength: @item.range_strength, tradeable: @item.tradeable, weight: @item.weight } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { attack_crush: @item.attack_crush, attack_magic: @item.attack_magic, attack_range: @item.attack_range, attack_slash: @item.attack_slash, attack_speed: @item.attack_speed, attack_stab: @item.attack_stab, defence_crush: @item.defence_crush, defence_magic: @item.defence_magic, defence_range: @item.defence_range, defence_slash: @item.defence_slash, defence_stab: @item.defence_stab, destroy_message: @item.destroy_message, examine: @item.examine, item_id: @item.item_id, magic_damage: @item.magic_damage, name: @item.name, prayer: @item.prayer, range_strength: @item.range_strength, tradeable: @item.tradeable, weight: @item.weight } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference("Item.count", -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
