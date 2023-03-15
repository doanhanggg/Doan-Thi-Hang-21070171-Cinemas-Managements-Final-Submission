require "application_system_test_case"

class MovieDetailsTest < ApplicationSystemTestCase
  setup do
    @movie_detail = movie_details(:one)
  end

  test "visiting the index" do
    visit movie_details_url
    assert_selector "h1", text: "Movie details"
  end

  test "should create movie detail" do
    visit movie_details_url
    click_on "New movie detail"

    fill_in "Actors", with: @movie_detail.actors
    fill_in "Director", with: @movie_detail.director
    fill_in "Duration", with: @movie_detail.duration
    fill_in "Genre", with: @movie_detail.genre
    fill_in "Introduction", with: @movie_detail.introduction
    fill_in "Language", with: @movie_detail.language
    fill_in "Release date", with: @movie_detail.release_date
    click_on "Create Movie detail"

    assert_text "Movie detail was successfully created"
    click_on "Back"
  end

  test "should update Movie detail" do
    visit movie_detail_url(@movie_detail)
    click_on "Edit this movie detail", match: :first

    fill_in "Actors", with: @movie_detail.actors
    fill_in "Director", with: @movie_detail.director
    fill_in "Duration", with: @movie_detail.duration
    fill_in "Genre", with: @movie_detail.genre
    fill_in "Introduction", with: @movie_detail.introduction
    fill_in "Language", with: @movie_detail.language
    fill_in "Release date", with: @movie_detail.release_date
    click_on "Update Movie detail"

    assert_text "Movie detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Movie detail" do
    visit movie_detail_url(@movie_detail)
    click_on "Destroy this movie detail", match: :first

    assert_text "Movie detail was successfully destroyed"
  end
end
