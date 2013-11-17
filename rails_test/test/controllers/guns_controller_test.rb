require 'test_helper'

class GunsControllerTest < ActionController::TestCase
  setup do
    @gun = guns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gun" do
    assert_difference('Gun.count') do
      post :create, gun: { auto: @gun.auto, bullet_diameter: @gun.bullet_diameter, bullet_speed: @gun.bullet_speed, clip_size: @gun.clip_size, clip_type: @gun.clip_type, damage: @gun.damage, explosion_radius: @gun.explosion_radius, extras: @gun.extras, healing_bullets: @gun.healing_bullets, name: @gun.name, number_of_barrels: @gun.number_of_barrels, reload_speed: @gun.reload_speed, scope: @gun.scope, shots_per_second: @gun.shots_per_second, spread: @gun.spread }
    end

    assert_redirected_to gun_path(assigns(:gun))
  end

  test "should show gun" do
    get :show, id: @gun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gun
    assert_response :success
  end

  test "should update gun" do
    patch :update, id: @gun, gun: { auto: @gun.auto, bullet_diameter: @gun.bullet_diameter, bullet_speed: @gun.bullet_speed, clip_size: @gun.clip_size, clip_type: @gun.clip_type, damage: @gun.damage, explosion_radius: @gun.explosion_radius, extras: @gun.extras, healing_bullets: @gun.healing_bullets, name: @gun.name, number_of_barrels: @gun.number_of_barrels, reload_speed: @gun.reload_speed, scope: @gun.scope, shots_per_second: @gun.shots_per_second, spread: @gun.spread }
    assert_redirected_to gun_path(assigns(:gun))
  end

  test "should destroy gun" do
    assert_difference('Gun.count', -1) do
      delete :destroy, id: @gun
    end

    assert_redirected_to guns_path
  end
end
