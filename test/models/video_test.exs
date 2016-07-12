defmodule PhoenixVideoStream.VideoTest do
  use PhoenixVideoStream.ModelCase

  alias PhoenixVideoStream.Video

  @valid_attrs %{filename: "some content.mp4", video_file: "some content"}
  @invalid_attrs %{}

  @tag :skip
  test "changeset with valid attributes" do
    changeset = Video.changeset(%Video{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Video.changeset(%Video{}, @invalid_attrs)
    refute changeset.valid?
  end
end
