defmodule Microblog.Messages.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias Microblog.Messages.Post


  schema "posts" do
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
