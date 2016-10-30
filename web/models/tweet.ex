defmodule Pitter.Tweet do
  use Pitter.Web, :model

  schema "tweets" do
    field :image_url, :string
    field :content, :string
    field :source_url, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:image_url, :content, :source_url])
    |> validate_required([:image_url, :content, :source_url])
  end
end
